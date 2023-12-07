Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA18081F7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 08:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1046310E7F0;
	Thu,  7 Dec 2023 07:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F0B10E7F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 07:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701934244; x=1733470244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VeouQE14OeoBRaPHzv1fyxFSi7YJhHFzwimVMgNOiXQ=;
 b=PW4f7qLduJzPHYH/GkzqRVMCfBfejjnmVjG8i/gUWCcxI0XkLluVt7pb
 gstEgnLoARQWCPlquydMjzyJxUFfGx0regCK9e9H272KBWEbqjcEMzicp
 lrxdmddOKg8jVtPHmvuWdHvI1W94DR9fLfvWgbPyhGEPb0y5bGIzTfjRm
 8VGytSHqIOsqOHrk24YlCKklMmP++aUNOTcpH1J9L7wWEx3V+qAz+aBcw
 6ZOj3SIeHbhQxxMREr9KXkYkpT1L8eGqtx6/4nGUA2HkKhOMo7YrqUd59
 mmfx/RHPX/Q7ElE8xSIk1CMq46l39p6+qhpOKvrr73kks9qk05FuUGtEp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="391362214"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="391362214"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 23:30:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="747876927"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="747876927"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 23:30:02 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 23:30:01 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 23:30:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 23:30:01 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 23:30:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VqHrgCRw46Jc2aWR9Ti0AcvAFvFSZj9iXby37K1fmGsj38ahUu4/SLf+Y7XixxW9i5vBP16oyyBalBIYNPcKcn/VlPWBTzY+KKACC462uwGPREC/a3Ypo0hUwNrUFWp8aYE4KxeIStQat26fFq5kOCjTfUMVUUobHhWYV2FE032ZhOjbgsjbk6qxthLRQXNfk3PZ+UGr8oEekQ+CV7swzrKWbW5zM+sDCYFMGrhfP5aVShWmGka3LcfL/bM0yuSXhOpvGgXqqFeH7R1bbCl78mfNB/qmaj0r/eTEjrcOkijdZ7VvmPlvBJ5UxihU/3lQgpxGdtk+skhpmTIXBBwCRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiT+NYUfh3S7UicuG/vvqSMceOao2aT5Y8Kwa0Abhis=;
 b=QFE1/N37/mdFF5N9gr5xI7HrWk3n1/gekUDVj1AYoO5ZiDsAw6UsJQWegkDdbuAKQwL1QtNPDOXOAAbe06nU/6s/YmfKbq18hYjiB1IGy+DHt3vsihVW65oMyMYqBZ62emTz9ysAxiYtxRiYlkFLLTGhnSK4l4fW8vTGlNBJi2KJKBa351ENJQn0f4h6pRxA4oq6/wRL+a4xq+NEv2haO8wjUSxF0LPPid4JG3/pwx8Lndgut078C5RhR+FNrRZ9UJ5Iv62qP0LY6Z8KEieZn4JLk86TbGOXZdLkn2IwVnKOR8eOumJXoFc7fhiEzdF/bapyPVJOiDI7BvJauUrgSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 MN0PR11MB6255.namprd11.prod.outlook.com (2603:10b6:208:3c4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 07:29:58 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 07:29:57 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
Thread-Index: AQHaKBCdcJ3X/LIBr0Whn/O+c3SFRrCcF+aAgACPZDCAACAZgIAApsYw
Date: Thu, 7 Dec 2023 07:29:57 +0000
Message-ID: <DM8PR11MB565517D7094BF4823BE0E71AE08BA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231206064721.1600152-1-chaitanya.kumar.borah@intel.com>
 <IA1PR11MB6347715548B24D15FA74549BF484A@IA1PR11MB6347.namprd11.prod.outlook.com>
 <DM8PR11MB5655D32D19885F66F8F232EDE084A@DM8PR11MB5655.namprd11.prod.outlook.com>
 <rz2glyjelocov2rfr2hlwvdbxuvyqkl2tq4tvw3vlyj3seveet@xtxrlz6ctknh>
In-Reply-To: <rz2glyjelocov2rfr2hlwvdbxuvyqkl2tq4tvw3vlyj3seveet@xtxrlz6ctknh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|MN0PR11MB6255:EE_
x-ms-office365-filtering-correlation-id: 4c5cb3f3-9250-41a2-c51f-08dbf6f6509a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wmhAoMzn/mQX+iXazat8M0+3omsFX/5jQT62AZd61fBWhNscFdvskoFINGPYiB+fGkYroNeVzUR0oMXLav/w4w2Ko/LuNOJcJSlm4RP2KvnIYhoexQVIe+k+mb1dcG0C8DsSq4XI1BVM9U8CcP8ywQQWxJ63kGyj+h8gYhTB3e1T+cw3EpGJB7hFCLyU3s/A/EV5AEmU1FQ2oqYEhl3lebfOe7hKvoGpnICG6DEvY2oEKk79zYoAbfq9y8JP7ivv+3OgP0O7VBqSyxsJpnWAGCE7g8qSmdhia9SFIr4JrjbtXcaob8YlZR6sQ2xBDWZSFCOvtHncC1+IgWUP93pnVgk6Gx4eHkY3+3NdclgqWCrR6LgV5hbvS2Xys2voVUjO6UwwlpD4ea1JIFuGZeBhJidJ+KxTNI69hqv7KV3SiAc1bMjAV6BKUYXPxDXJFIkqrDH89fHiutfFmMJb64VAhr3JLSy5obq4SPR2J/06GJVzF8saHEFj1OL0Th1T1cav+p4gM4ORDcc4oTScOpcMqo3jnoVHOMn1iwo9k/RPorX2q9Sl5u45v5FlHmAYn58oRYz3oWuAP7S+FHmNtes2DBGMCj1mqaOogYlaA9i6kqVdCWIy/aDPtbbUmxS24hjW24DJFCWl1KDXSqemPem6ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(316002)(66556008)(66446008)(66946007)(76116006)(64756008)(54906003)(66476007)(6506007)(6636002)(53546011)(9686003)(71200400001)(41300700001)(26005)(7696005)(107886003)(966005)(478600001)(33656002)(38070700009)(38100700002)(86362001)(122000001)(82960400001)(83380400001)(52536014)(2906002)(5660300002)(55016003)(8936002)(6862004)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XUNxprv2B5+7pUkjN84/cK0fhzx7LPDEr1ToGsr44zFSM/qRCW0NjLFGrNxL?=
 =?us-ascii?Q?RO9zxp8DBjgpnLHdhorGEpGZZ0SbeVu29BMnp0sPEgH2Goc4ZyRhc8JjPtcY?=
 =?us-ascii?Q?Kn3+VsLV2mupjyesDjjwlgmN76xhpyeoUkLoTTFHZ3tN3z+HNhr8QVOJG814?=
 =?us-ascii?Q?ZEyIzYYTq8PO/kUqvF5bOaanUsJ8SPflfK1oCNxTdX26GMKx+hFvImKQkBSs?=
 =?us-ascii?Q?i0qSszywIqNLAPTZyAKOf6O52lVxIB/GV5ksvOoiMgMGzdIsAIj+RZk/hQaz?=
 =?us-ascii?Q?Pw4qOOpMhYb8le3SgLyAhGyh2vfEDnPdImc/rk9iS1aa7MqXtNhFfnu1Vq07?=
 =?us-ascii?Q?edIs83rH4VAmiji0DW11CIMTaYsraQcJ1OjDpHZDPsadkkyMP+tkTNBOj9Ib?=
 =?us-ascii?Q?7zV5byQELdsp8lFxPW1nuCoC2D30xZ4IBbFPia25xs+B9f3sLSf6zyAj03Aw?=
 =?us-ascii?Q?Hk3sCaNVFStL1eGxYBhkFjKgYYur3XJ780fbAUCk4r1W2BrRaxRI/I52ztXD?=
 =?us-ascii?Q?Rybmsnj+/BI2FL0jCqN9SL0l3q/WIR/7Jvs0syKsqXvsnYKFmdAAdvyJWne8?=
 =?us-ascii?Q?hpajNoXhHwqCCOEcucJJVoWLdGIOKH+XajwJWaSZCRRoLu0KeR7X0BOJLaXK?=
 =?us-ascii?Q?v91QEPpjdr+kC+zC/UUZdzPRVFEWg/RXEJpVJ3fixl/qNiJ8zcAn/uvvWMO9?=
 =?us-ascii?Q?p+VYBkQUxHH9Ko7jqfUk2hi1ueiVtqfYy5Ly6lMw1qG34mA3ZFaJh84kF8yB?=
 =?us-ascii?Q?/D9zWMdsCWeXhGHo7Iokim0HMoyqBc98bWBtSaub71t13btnLV4l9IblruHZ?=
 =?us-ascii?Q?dzBMHiSsxSvu3ut15r9QDCNd5ymwNMApdjoHNf9d82TqzOUb5mkKGizMqEJF?=
 =?us-ascii?Q?XOFzEhUBnpX3yLgEWjCyO/gd5FnbU5X6wsY8kLPpqog/ahT/2LJcV34y5by2?=
 =?us-ascii?Q?0VSALXcLpFXssL7Do98xWa/GTG6qrsQdJyWPn08TKPuxwmkGOFZoLOzLNObK?=
 =?us-ascii?Q?BhfsICRdpaJeAR67Gr+uNar8w2GuCF9Gt/fgUzvpgXppKTTCACZod9XR4dY8?=
 =?us-ascii?Q?mAiDr6454ixdrbLa6GPqC/8KNlOpt5hTuPy2x/doTis430T/0MoqzoDfN7Ux?=
 =?us-ascii?Q?pwPqN7KMlwf4LwCBMGC3T3npth0sczquz8hdeaBxIbK0SsgfBZxuV75ANMwO?=
 =?us-ascii?Q?mT3QCZ8xFAUlEbHhnPESiCRu+bwIl9P7fld1QpVJhMbFGZJEO5Mwa/ntpb+r?=
 =?us-ascii?Q?yNm0EighEg+5Gz9ZA9ClPzcZZt/XW2hu/B7FuoZXOwCwattxF9IZvKY968Nx?=
 =?us-ascii?Q?pvq223Pe+slGHJOQ7Ld2sGNZBvV1gomPALwUo2cFhKTuvCY+QT44e3/0eo0w?=
 =?us-ascii?Q?qiOh/e5MbMX6idHUEgDnpoWb0nrqqjbhztG8IFVCa7Er5+3I7N/P7MGHW4xh?=
 =?us-ascii?Q?/9ZJba7dBosuf3TdtzLnl1YZuTvPIBxoN3MNYwyDOP3GY3eY90TBs1PRpb1j?=
 =?us-ascii?Q?ZOfZcErALNa36eJjcIC6mx8ixiCpCpLAaVztO9rFtrBymVyAuz5BTsuI1YfM?=
 =?us-ascii?Q?L9CdunzccUyK4Rmd1n8gsrGsY+MTM9DO12N2K8gE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c5cb3f3-9250-41a2-c51f-08dbf6f6509a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 07:29:57.7432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4fB8qiT2RHWjKAGt0Xx8mbfzjTrV5W12Cks6XoTJG41a+i7LKMeAetMbH/peav3auYvXI3JeJNz0JTswhxVPtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, December 6, 2023 11:33 PM
> To: Saarinen, Jani <jani.saarinen@intel.com>
> Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; intel-gfx@lists.freedesktop.org; Vivi,=
 Rodrigo
> <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate de=
bugfs
> handlers vs. removal with lockdep"
>=20
> On Wed, Dec 06, 2023 at 07:41:04PM +0000, Jani Saarinen wrote:
> >Hi,
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Shankar, Uma
> >> Sent: Wednesday, December 6, 2023 1:05 PM
> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs:
> >> annotate debugfs handlers vs. removal with lockdep"
> >>
> >>
> >>
> >> > -----Original Message-----
> >> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> > Of Chaitanya Kumar Borah
> >> > Sent: Wednesday, December 6, 2023 12:17 PM
> >> > To: intel-gfx@lists.freedesktop.org
> >> > Subject: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
> >> > debugfs handlers vs. removal with lockdep"
> >> >
> >> > From: Johannes Berg <johannes.berg@intel.com>
> >> >
> >> > This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handler=
s vs.
> >> > removal with lockdep"), it appears to have false positives and
> >> > really shouldn't have been in the -rc series with the fixes anyway.
> >>
> >> Acked-by: Uma Shankar <uma.shankar@intel.com>
> >>
> >> Hi Chaitanya,
> >> Please get the full CI run executed with this change, once its green w=
e can plan
> merge.
> >Just commented on "issues" (no real issues ) on BAT and asked to re-repo=
rt but we
> really should use sometimes by-pass shards when we see regression on this
> magnitude.
> >This has big impact on core/gem tests
> >https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=3Dmodule%=
7
> >Cgem%7Ccore Even on module load. I am leaning to break process and not
> >wait to Full CI if someone who has merge rights (eg @Vivi, Rodrigo, @De =
Marchi,
> Lucas) agree here?
>=20
> I think this is the convincing link:
> https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_127359v2/index.html?testfilter=3Dmodule%7Cgem%7Ccore
>=20
> Applied with ack on irc by Rodrigo.
Thank you!=20

>=20
> Lucas De Marchi
>=20
> >
> >Br,
> >Jani
> >>
> >> Regards,
> >> Uma Shankar
> >>
> >> > Link:https://patchwork.kernel.org/project/linux-
> >> > fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f69
> >> > 0d383a89b13eb05667@changeid/
> >> > Reference: https://gitlab.freedesktop.org/drm/intel/-/issues/9802
> >> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> >> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >> > ---
> >> >  fs/debugfs/file.c     | 10 ----------
> >> >  fs/debugfs/inode.c    |  7 -------
> >> >  fs/debugfs/internal.h |  6 ------
> >> >  3 files changed, 23 deletions(-)
> >> >
> >> > diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c index
> >> > a5ade8c16375..5063434be0fc 100644
> >> > --- a/fs/debugfs/file.c
> >> > +++ b/fs/debugfs/file.c
> >> > @@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
> >> >  			kfree(fsd);
> >> >  			fsd =3D READ_ONCE(dentry->d_fsdata);
> >> >  		}
> >> > -#ifdef CONFIG_LOCKDEP
> >> > -		fsd->lock_name =3D kasprintf(GFP_KERNEL, "debugfs:%pd",
> >> > dentry);
> >> > -		lockdep_register_key(&fsd->key);
> >> > -		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?:
> >> > "debugfs",
> >> > -				 &fsd->key, 0);
> >> > -#endif
> >> >  		INIT_LIST_HEAD(&fsd->cancellations);
> >> >  		mutex_init(&fsd->cancellations_mtx);
> >> >  	}
> >> > @@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
> >> >  	if (!refcount_inc_not_zero(&fsd->active_users))
> >> >  		return -EIO;
> >> >
> >> > -	lock_map_acquire_read(&fsd->lockdep_map);
> >> > -
> >> >  	return 0;
> >> >  }
> >> >  EXPORT_SYMBOL_GPL(debugfs_file_get);
> >> > @@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)  {
> >> >  	struct debugfs_fsdata *fsd =3D READ_ONCE(dentry->d_fsdata);
> >> >
> >> > -	lock_map_release(&fsd->lockdep_map);
> >> > -
> >> >  	if (refcount_dec_and_test(&fsd->active_users))
> >> >  		complete(&fsd->active_users_drained);
> >> >  }
> >> > diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c index
> >> > e4e7fe1bd9fb..034a617cb1a5 100644
> >> > --- a/fs/debugfs/inode.c
> >> > +++ b/fs/debugfs/inode.c
> >> > @@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct
> >> > dentry
> >> > *dentry)
> >> >
> >> >  	/* check it wasn't a dir (no fsdata) or automount (no real_fops) *=
/
> >> >  	if (fsd && fsd->real_fops) {
> >> > -#ifdef CONFIG_LOCKDEP
> >> > -		lockdep_unregister_key(&fsd->key);
> >> > -		kfree(fsd->lock_name);
> >> > -#endif
> >> >  		WARN_ON(!list_empty(&fsd->cancellations));
> >> >  		mutex_destroy(&fsd->cancellations_mtx);
> >> >  	}
> >> > @@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct
> >> > dentry
> >> > *dentry)
> >> >  	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
> >> >  		return;
> >> >
> >> > -	lock_map_acquire(&fsd->lockdep_map);
> >> > -	lock_map_release(&fsd->lockdep_map);
> >> > -
> >> >  	/* if we hit zero, just wait for all to finish */
> >> >  	if (!refcount_dec_and_test(&fsd->active_users)) {
> >> >  		wait_for_completion(&fsd->active_users_drained);
> >> > diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h index
> >> > 0c4c68cf161f..dae80c2a469e 100644
> >> > --- a/fs/debugfs/internal.h
> >> > +++ b/fs/debugfs/internal.h
> >> > @@ -7,7 +7,6 @@
> >> >
> >> >  #ifndef _DEBUGFS_INTERNAL_H_
> >> >  #define _DEBUGFS_INTERNAL_H_
> >> > -#include <linux/lockdep.h>
> >> >  #include <linux/list.h>
> >> >
> >> >  struct file_operations;
> >> > @@ -25,11 +24,6 @@ struct debugfs_fsdata {
> >> >  		struct {
> >> >  			refcount_t active_users;
> >> >  			struct completion active_users_drained; -#ifdef
> >> CONFIG_LOCKDEP
> >> > -			struct lockdep_map lockdep_map;
> >> > -			struct lock_class_key key;
> >> > -			char *lock_name;
> >> > -#endif
> >> >
> >> >  			/* protect cancellations */
> >> >  			struct mutex cancellations_mtx;
> >> > --
> >> > 2.25.1
> >

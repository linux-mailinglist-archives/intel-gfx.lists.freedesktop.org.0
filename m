Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9727F58A2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872F210E0CE;
	Thu, 23 Nov 2023 06:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5BCD10E07A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700722325; x=1732258325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kQSZ4HPxLkclyUO79R2gnA1P/1Ko6KYxbzJeULVQick=;
 b=i6+i3E/Pe5ilEO4ajmgjjQAxa20fvBL4LTr6K7c+Zp5mOciYRfMJNiXa
 esGI4Zj53RxxcakIV9SySRFdViJFd6MDcRZ/TqWwJ63up0h/8QBWxPl/7
 K9byH9lTpOdkQUXDDjugnBa/7vYkMxWSguMftN4JSqeBhGs0snA66fpDQ
 tJcgZPQLMC2hFXyxO9dpsTQxZzQYSZYTcQwMWXDNzEANMP/7VjKf/QTJK
 uh7S5RyDAgyS6cxaot9B7J+mRBk176bLxhPABjddzjjdxFL72fC1ug/xn
 oltNLcu+2vg90vY4MiknQ1tOJ66AuuQ1IR2TMu8qA9DR5xgBbei5O4301 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="371560660"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="371560660"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:52:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767115510"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="767115510"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 22:51:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:51:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:51:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 22:51:52 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 22:51:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N6TbAfX1yDs5zVVe/WWoMTInXSalj7vprAlTFJNrwuQOkUoYV6fJeB8Ws3MTrUXs2Br5kAZ/STi99VjBXtf0Y3bwo5atxTxQdKsH+CEzoQufv50kKK91Jh96T55+mUsLz+L3+xDsaF6UdinjW5OXV5p2BuQd6CBgdM2wfX0pYxpFaVj7R1Yv6gfl2XMKlweeFHdBWXsnwXfPnjdLw20zIS07XcqgmfjSeQOROm4+/q0Dp0a6QMeznzFz71En7EBGC/qiKEGEAQv7XUpMsjJsvIMnwCuPyZx38Plvoys8XnKEvVPBUZh0VEYnHDgXWIm7/SlhZ/EcdXX/w1lbnPNWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBAJbbBHuwHtSp2EQlwtmsjuQMLqirE/enzBXHTbJcg=;
 b=gBh6iZP99zZ556dv3E/bhH8kGijIrnmEvASz9X5dQ0KP68CV0C8xWnwakF2esaIvEeFAz+h7MA/TpMd3MgOJiNBPjb0R8D9mJLN3AygnhXvaAy0cLJrAfxHNZ1Y76ntxs4GbRiI1LEVo1DXBj6WZRPnOZ2X3NHc7QjqYw32IHj+Na4P4hPqMYcn3BfZNCDNQ1VnCB04IAtpZyteRhgWDbl3FSCoxe+8eaM8lerGQO4TLiDrhiBbeS+0gv1CMOeOCBeFk9GkFfFT81XSiAVqOuWRGxOmVGPyDXEjaGMQhkcoVMbXjyixpyWe0INhXQxh+AupJzVCFjVzzbrlkyJH7Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB6006.namprd11.prod.outlook.com (2603:10b6:510:1e1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Thu, 23 Nov
 2023 06:51:22 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 06:51:22 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Chauhan,
 Shekhar" <shekhar.chauhan@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
Thread-Index: AQHaHdcQtAH1sE7uY0y4+2pcMkWtprCHdnXggAAAtuA=
Date: Thu, 23 Nov 2023 06:51:22 +0000
Message-ID: <DM4PR11MB597149786E520B2A270AE78F87B9A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231123063338.3354454-1-shekhar.chauhan@intel.com>
 <DM4PR11MB59711ABD41D1AD6C1104C9DC87B9A@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB59711ABD41D1AD6C1104C9DC87B9A@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH7PR11MB6006:EE_
x-ms-office365-filtering-correlation-id: ea0c001e-e5e8-4661-d246-08dbebf09ac1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 12KLX2TW/YDPLG95k9SOPdCE86kiEU7EUKM12JyOgoRKxO2E2NVY2YqgSsYhnmUlonWzlFzKjlA2rvu9d7yoShsAHyr89gByV1OFxx8o6rL8hm7mQha+xyT1KkmbfDRk4hxiviu/T/+d73cm80cV9i2D01E9XQkKsMqxq4a/23F9I04RB/xI/DWJ1J7s+7DKl2+H1K57xGc4DnSti97zh4NeQ/sezWQoZHOIMOsYN6vGVM0XMtbfEO9CVvd/jq/GGM4FNaqNx3LMk1F/Jbxjj7DxRfjdZQ9u9aLN/A258sH2Cf8kT8lKcaQGgQAdKliOocc0/tdNIkA809OVgpngKJvs1vV6nHJyH9bDl+SQtmwlGhoh7Nwd1I8Xx28gbkjJRgoFF3hcZuCM6zAOPOMAXdCNdqQ7q0yxuCi7bPNzWFSYVi5OEI+mkF8lObXxCigzaUIjZDFE3ecddstaieGhih0wSiRoPLO62rEf1EecAM2oc3QAR2/kWJnTszY0DzZg0RIcwTAjsOqA5afXH6bvY30UCdzVa/g3XvhAsT2luD/693fpYQOwP09xzxi7iPA1WPlNbpZsxjTXWAmmkzWPUpJDc9byOSgs7UkcZ/6BoddaoKyQARsjY7ddhMVVjuTs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(5660300002)(55016003)(52536014)(2906002)(4326008)(8936002)(41300700001)(8676002)(66476007)(66556008)(316002)(64756008)(66446008)(76116006)(110136005)(86362001)(7696005)(26005)(38070700009)(53546011)(2940100002)(82960400001)(66946007)(71200400001)(478600001)(107886003)(9686003)(38100700002)(83380400001)(33656002)(6506007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zcWRe3iFIUfEIaPKvOrkHf9/ymdBFopgpLy3yLNiJJRXgjQkuSAQkYSUb2Yc?=
 =?us-ascii?Q?TNRsuqHiZ6yClzpxi8DL3/tK+t+n4umiuLKijGd7I8G19AaGZCgybag50qga?=
 =?us-ascii?Q?pv0al6KOl3o2FXWn3h27/WtB3kw9ys6gpylhV4pp7es0fVeBh2h645aW2QSo?=
 =?us-ascii?Q?r+0Fw1LHOpNEBDR4lZSoCCCQ4t8MSdSVGhdjIRXSHU6Dad3TQmIXhE56HYR/?=
 =?us-ascii?Q?VtfpKlXsVADYePV8P6NRRE81xqy6xBsYRZ6GrR6nVq7dku+sDpNxP6y/djuo?=
 =?us-ascii?Q?mT8NkTOg2AalSatXT3hz/iEnhV/ZH7NHiOxAvv4hdvXG7QMP/QlcEVQUxv5m?=
 =?us-ascii?Q?g0vSOMqXwUx5znZvLromvr6Abz6hkqQqE6S2o8Zeyt7su225zwa/arccl1DU?=
 =?us-ascii?Q?b5zuHBKSh95SUdk1LeHuyPawHJTeemKJujE1EKO9Zk/DhFWg8d2NbqDNmdmI?=
 =?us-ascii?Q?jcTj1qe63WAf23H+XnV3rbsHzPBM48fh87ZHPyp9F/PfNfPORhky0aHGyT/c?=
 =?us-ascii?Q?RqYbfEumwG2xtbH7yKKV7nq49B2rzFziFSfuGpwEnowxDwfI2zxiOeZcIQHh?=
 =?us-ascii?Q?CmWrOiL5D9mz0ZRslZa1wlOx9vpj/bz40OhRKfmtSmaPitzQkrXKUiojN35N?=
 =?us-ascii?Q?+QuVJH+29NcmBF5Lv5huU358AhSlRbkfKOZJXcZNksAipOU2cCnnraNcFzA3?=
 =?us-ascii?Q?1D+I42MZEb1JuRb3xgc7INJCqArOLAitGEig4HJm/bl8BIVmYBh7vZBGNhAr?=
 =?us-ascii?Q?BzbVsSi2I4sN0GanKpKdbZ+pzNlX1shh6kXCa3PbZdSIh8IlaY3cmtmUISS6?=
 =?us-ascii?Q?97dTijnSSBlWJHc8k0cG4I3rKU7CQjAH/qTi/uksvp4ohmwOaVxepiid/hAx?=
 =?us-ascii?Q?CDYgzkv4ey91VlewL1UZnEi+08RAv0uU+JZFZ3zLDeVe5b+bSh1SSxXXEb/K?=
 =?us-ascii?Q?3wJm1dhgCeKS1F+p1OgRddWjmn7QJ+fHr96PRLPzowh603Vxsk9p0fS/gAID?=
 =?us-ascii?Q?DoFLC14RqUPKBN+Ql1ZeDd6BWC1aYDyXp4wG40MH+fs5s8Dhfa68eW0qajFT?=
 =?us-ascii?Q?O8PR1tt3t9r/BPvc8fqDVtBcTKMa2a6+Rzb+Q0iEtRv/UuxR4QP+U69C5FJz?=
 =?us-ascii?Q?/UWdqz4ojTIXR4E/yxfewNh2pi5m1IiQtHxoEVRpEOIZj+kcOtK0YLWe1FXT?=
 =?us-ascii?Q?kaOSs9JeYVknT8M5NJ7iuaIrTZ22RPgSgUUxpvTooC9H2C3/HyV64L1XXkfG?=
 =?us-ascii?Q?9WIczZxUiJOyHRPx7W0XhsPKOejRHcsgWg5ZPeOA77A/vP4GR1DSNTIEyhqN?=
 =?us-ascii?Q?Si1A1n5BJn2ZGkY3j4J5LTUMqBUjV9CJerGr+3IfEYhkiutkfo4SctaM7Ty+?=
 =?us-ascii?Q?3S3KXaMBmYCLRWTnQJg/WKgpQAG+n0AW+tlBt/a4JtbwEdo0JiMA79tDtguE?=
 =?us-ascii?Q?mjC7prLR5GEVj8gEvAd/Bq6bvox2ZBjzyvE9hgvZC2QXULMhYQYvtn91sBDT?=
 =?us-ascii?Q?VRU/4LuWGN1oro+iA4Jmsx9ZoezE8xfW6gxdM9Qj7RdvBpYHMgQsuYZP7AzW?=
 =?us-ascii?Q?9rmUYgEQuCAVvDD7Pv9ZGA32XKkxNFSDcgmj688DOBFRsknOuVrcO33Kbloj?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0c001e-e5e8-4661-d246-08dbebf09ac1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 06:51:22.3655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b3NPDzZrFR1AUJvFJ2ERqeva3xciGfb0s944lb9+KY01j9s82jtL4XObCMjJvKS9iUftymFCj2xMLp13c5fItQRiY/YTXvyrptLjqys6rRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6006
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sr=
ipada,
> Radhakrishna
> Sent: Wednesday, November 22, 2023 10:49 PM
> To: Chauhan, Shekhar <shekhar.chauhan@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
>=20
>=20
>=20
> > -----Original Message-----
> > From: Chauhan, Shekhar <shekhar.chauhan@intel.com>
> > Sent: Wednesday, November 22, 2023 10:34 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>; Chauhan, Shekhar
> > <shekhar.chauhan@intel.com>
> > Subject: [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
> >
> > Wa_22016670082 is applicable on GT and Media.
> > For GT, an MCR register is required instead of MMIO.
> >
> > v1: Introduce the fix.
> > v2: Minor naming convention change and adding a TODO
> > v3: Enhancing the TODO
> >
> LGTM,
> Reviewed-by: Radhakrishna Sripada
With actual r-b
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

>=20
> > Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 9de41703fae5..b2a245e3e77f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -529,7 +529,9 @@
> >
> >  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
> >
> > +/* TODO: Evaluate MCR usage for both Media and GT instances of SQCNT1
> > register. */
> >  #define GEN12_SQCNT1				_MMIO(0x8718)
> > +#define GEN12_GT_SQCNT1				MCR_REG(0x8718)
> >  #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> >  #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> >  #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 9bc0654efdc0..dbf0c6e536f1 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, st=
ruct
> > i915_wa_list *wal)
> >  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> >
> >  	/* Wa_22016670082 */
> > -	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > +	wa_mcr_write_or(wal, GEN12_GT_SQCNT1,
> > GEN12_STRICT_RAR_ENABLE);
> >
> >  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> >  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> > --
> > 2.34.1


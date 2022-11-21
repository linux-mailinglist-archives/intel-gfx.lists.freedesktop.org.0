Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76351631A90
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 08:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D9E10E065;
	Mon, 21 Nov 2022 07:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D2910E065
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 07:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669016869; x=1700552869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OZ+5iRkr8wTedKXLrshPxL98cBj2z2SYNsdsiaCx3K8=;
 b=AAhdaNr3tjpo5ggeh1lMN5uwLgRTkkQr+zR+jDGmNJSr1CpbWuW06C2B
 mpmmZoGkhujYJcUPbavRb5EGYaU1R4wAvvrS+itLjoZBVpmsz06qsGMtj
 fbdGJerrngYtaiGmJhNSE28uEEuzatgPXtP6iqDlODnAPY45V4lFipxyC
 8yvMZerNOrxWSl03BywyXS4DLpabUiTlGDSl8FtA6CGcwzxw0tzfN76cW
 YO6bZ3uoWKjds9fem6sdVAQRB0eXwfjhrfjqB6tsO2RvwbJUCsISLiJ6I
 mu93YFAPFQ30L8KyQ5RAulebUaozVbsvKdyDzL5gsisN3d8nPzyrFvYr0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="340350991"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="340350991"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 23:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="704461893"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="704461893"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2022 23:47:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 20 Nov 2022 23:47:47 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 20 Nov 2022 23:47:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 20 Nov 2022 23:47:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 20 Nov 2022 23:47:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVJ17YQQwpFVURtTy5401kBN0K83n7ruw2SbJcN55yj192FjQGkdv/rakgko/6JYZWwdPl1UKD8YMqdDERxTMH8UbNEaTUk7y0oSsDI/vqwszQS9pHzQ6ThPE6R51K1fcc//0h8DRml4+4fWxBm9oP7bo62atsG9rFKVClqZtY49QCax0pPjXbGzErpae5v0AoQ7CAyZboH/SUF6FVPKX92Sf4kgRAbCqtqRPtGd35q3LUY8ypoAhr+RTXijphKeL1gOxmIRdTgsLYcyqpWa43PoG1fvtAYvBawP7A2bZPRs46iT7jo8ELUZbO2phK4TmlaYlYt2eaplQnwz78WRXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRuzTmC3n0LsQUAVKLTl8ZbwIJkt+ZRqVESfVfPXyQc=;
 b=nHSOOMKyHYEKbSUW/45/xFGjcYTrcC9dvHZpd9RsYSAq5WlGJKZZU0wrpBoGyAmws/QVcpAQkNHN01XFbhc2N3+Hgh4GIKjaslXcMNMoXqwkr1R/PS8iaDQ+1C9uGPFb7mcV9vsQ4hUSgl+3LSf2UlLHEzUe0qUhHaDCmTNJjSCjWYPQNVb0CfDcFnu4nPI7UbDQLzrncQOIqH+XXhbOGmUi+eVsAH/0+4nqZ+/8f+C/BNRDfEeqKSmq4cT9Muz+v9fZB2HBAYO5uiieklyYUQp53SxHu1eu+wG/sk6VjHSfJ7xPWLynkGYJCpaQ5me7c6XeEDmLK/4v9mSXzBNImg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 07:47:45 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::df3:74e8:a417:a163]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::df3:74e8:a417:a163%7]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 07:47:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v7 0/3] Enable Pipewriteback
Thread-Index: AQHY9+/1FE59sxJuzk6I3WyctQ4SHq5JCydw
Date: Mon, 21 Nov 2022 07:47:44 +0000
Message-ID: <MWHPR11MB1741DC2539DA79D51C9A9E85E30A9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221114061019.1444353-1-suraj.kandpal@intel.com>
In-Reply-To: <20221114061019.1444353-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH7PR11MB7643:EE_
x-ms-office365-filtering-correlation-id: eaf6673d-d952-4abe-98ee-08dacb94ad36
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JVVa54eSp9Mxihi2El66pYec0uJsDgHUxbwl99bFLo1Hn7W4qosaPNfp6dxX+fiqcym4La21aG/ytoEbBsxWN6Q5cQGykyzoe96d0nL04u0giO3BWRlxQ1t8yCvPgDvnVUTPGXYe7wOb3V0TxtEo+HnHVZlJVSzhhHFuM1HqDFwxjlogq7TOiqkb37w2lVatAmznhmW5SJYV63U+z4Ynql7cSAKkbWGNZQVIJj9lzBj2qPqiNsunE9WxUwFpo3v6rT0UkG4FbdWDFir6lqlxUF3CpGIUyRJijzcpO34Fa0kHN7hp3dlLo4eYdj2A+MaefT1yivF6Rt1TTaiTidU0qdvOjPNqmICRcOVajmyfyvsxjBsfxJhq/fo0iFQzdpbb9Le5QVNrLq4fys8gW6rSO9CQW8+95aN1C2MBT/zCWp8sbV/oUxWUtaBbhKyCu52afh0oJDPi+E724I28DlBNPNILbRUwb5ZqDHEULis1ADvb148YfLxSAvHDg04Pw3LTqYtUIj5CNU5fvt0sJm2RbI+bPVH2UQZLtOg+YbiUZVevji4iihH6P3ZC0WWRYuPFbMhgA5bGKz58W8Ka/GE77UlcbgtZbP0cbK8l0yZUxKM6UaaZ5CWjwrtmtDLsYFHoSKEw0EndjsVgolaxY+BGuDtg4JRx6wpAR7HqUbLg3B4a83Sm1Fd+U796DRyyJyXnrafI4IpBmzvvKTgtV0GCgQyfNcNNUQFBlu65PZ3YdwRmmuL7KPQ2PuNgCUuMZHgNLMHo7lzlmAmiCEI+UsXCpQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(346002)(396003)(366004)(451199015)(8936002)(53546011)(33656002)(186003)(9686003)(26005)(82960400001)(5660300002)(52536014)(38100700002)(86362001)(316002)(478600001)(966005)(6506007)(71200400001)(38070700005)(6916009)(122000001)(54906003)(107886003)(41300700001)(7696005)(64756008)(66556008)(4326008)(8676002)(55016003)(66476007)(76116006)(66946007)(66446008)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dVLCZ/BgSGrr8GehkxD+rTlft0Kt/GvYZ5ILv7C4Nmjf7xeqXddu/gC/MWBL?=
 =?us-ascii?Q?ssV5F7ITqtHCpM5MeaxAXoxcRyAyFNAwiWEhmE8m8NipvsB+IKDKBTVySYUt?=
 =?us-ascii?Q?5dQySJ7w1Q1kiAryglk1HVFTY5wuGxbiLQGiJ8E7MfyWDJ6ednWoym7Y9Dnk?=
 =?us-ascii?Q?JhfIr1MIpDH9JnX4p04+pX/7JG4erGfOq16Iy0XreiKmoNGHswQ6fBvzQYI5?=
 =?us-ascii?Q?JDq24jgaTkyyzzZkOIXMBkOWotCb6kSO7bE1FiooQRVcoY+6UuIFJ1wCJBvE?=
 =?us-ascii?Q?r3w7Vr7V+stWuiaqhcWehfO0pV9dNB0BLT6Xwl9Y/x/kDnUxOvi5JeiQ9B64?=
 =?us-ascii?Q?ar9yzyq5bIULvaQLAm6pCpaJnr85cph8dfxB/idxTvSvqKe1IuTOuriQrnM3?=
 =?us-ascii?Q?X7HyNu6o+GABofD57s5Im+ag3pfIpo4cRD6FSfatnW8G3jSd/8wN5ZIepUYd?=
 =?us-ascii?Q?+fyVSWn0JZTwkCG0SQ8LaGCrrz/VOcw643+Ipixczu8hDUB4ZFgj5HQI/l/j?=
 =?us-ascii?Q?v2kLLxjoWp8SLEZ1kN7NH0xlL9VDgzaAaYcppjsbmWjccwa/tLO0QKX0puq4?=
 =?us-ascii?Q?utX6/DJY0qoIqXOgt5p7du9lT9hfaiGXaJ8uX1uTKd2EZLR9f9Dj+OFUowDT?=
 =?us-ascii?Q?2cqQ7KkFWLY4uUarU/+xur2bPr4EZiewlIpJknBIbez6atoTTXxj3L1KvIVv?=
 =?us-ascii?Q?FUwRkW5rhK01rnawtaIE1faKfOwukL0quiaxQ04sN5bIkrSpGIV3LhaNlvwq?=
 =?us-ascii?Q?s/o//IvmAPmRCyYVuN4IFFWLtmzoyIb8xW4ysQc8sQmXpCdqs3xWm6wG/Wro?=
 =?us-ascii?Q?wtBxTXjIGN3qA1eX0D1zvaIrKTTCznEs01Y1teQkND9Xm9DfTOSE3xrAB1gX?=
 =?us-ascii?Q?+Qq8x08RjMfocIFngOhvOX9aaazteggmxiGIUYoI3EGR89icGJSZ3pg9i37D?=
 =?us-ascii?Q?c0B874MRd4K7IIck0YlumI5cQY15Z+L9+JpZrfR/Nc+VF3++4HhF8SUX1a+K?=
 =?us-ascii?Q?FK5s7MVjzGcExrwM7644vfizx7vY3VaEQ/NTD8oYviPhTcHPRtUFawaXSzSe?=
 =?us-ascii?Q?9ZhMCFl+gH3FIVMKUDrqP1+I+v9ve0L4gJRzCz6eJAu1+6/vtnlAoN7h23Ln?=
 =?us-ascii?Q?g5PjjA4dWk1DeQHEYC17bcx7XaxdgxjtF3SPC59FcclI9woLDABaeZ4/u1V6?=
 =?us-ascii?Q?qsSlH2wcgseUD9gr5mV48EVsnFYJaat9AQZd5HquPkA1YUvxxTZthmlZO2xl?=
 =?us-ascii?Q?ziVRHK5+LVmVokYDCW35AqhB+TgH1La58r8BmjXmlDFJT2dv0qD5qFQPkIxa?=
 =?us-ascii?Q?4zgeq3iytFYU1i3fbbgoDI3XLTVwIkPzFm6lIurwV2FFxELE/omWepM8cjbA?=
 =?us-ascii?Q?FMExUHitszH9Lcx36PkABxiZMD0ugLHfycb0r6zDme9lzcekWOVXF+hIjyKY?=
 =?us-ascii?Q?89TxojWMH3nFFHsHtact4/V1Utw+m/wJKctsqvRgZyjmfQCn1A/BidV4lueh?=
 =?us-ascii?Q?G5lmYWQ7qGha5zGJjuRbZ7ItfubBabW02h90EL6PO7fmkYpLXyfdnddDj2pa?=
 =?us-ascii?Q?fy8oZmq28Otjz7LeGp5dOFn2MgoyfVwTKAaCAJRb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf6673d-d952-4abe-98ee-08dacb94ad36
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 07:47:44.7356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iLahMgscBTX1bVp6LASlfFcTP4fuyrfbHFPd5nBlyJZkg1HGqDyW9aPToIcy/Wusw+wA6GqOdopq6VnTyT7Myw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 0/3] Enable Pipewriteback
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gentle Reminder

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, November 14, 2022 11:40 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v7 0/3] Enable Pipewriteback
>=20
> A patch series was floated in the drm mailing list which aimed to change
> the drm_connector and drm_encoder fields to pointer in the
> drm_connector_writeback structure, this received a huge pushback from
> the community but since i915 expects each connector present in the
> drm_device list to be a intel_connector but drm_writeback framework
> makes us have a connector which cannot be embedded in an
> intel_connector structure.
> [1]
> https://patchwork.kernel.org/project/dri-
> devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
> [2]
> https://patchwork.kernel.org/project/dri-
> devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
> Since no one had an issue with encoder field being changed into a pointer
> it was decided to break the connector and encoder pointer changes into
> two different series.The encoder field changes is currently being worked
> upon by Abhinav Kumar and the changes have been merged.
> [3]https://patchwork.kernel.org/project/dri-devel/list/?series=3D633565
> Going forward we use a drm_connector which is not embedded in
> intel_connector.
> We also create a intel_encoder to avoid changes to many iterators but no
> intel_connector. We also changed all iterators that Writeback feature wil=
l
> be enabled for tgl and above.
>=20
> ---v2
> solving BAT issues
>=20
> ---v3
> -remove unnecessary comments from i915_reg.h [Arun] -move wd_init into
> its own if condition [Arun] -fix comment styling and alignment in intel_w=
d.c
> [Arun] -remove continue from loop and calling function if condition is me=
t
> [Arun] -remove useless arguments from intel_queue_writeback_job and
> intel_enabling_capture [Arun]
>=20
> --v4
> Added Reviewed-by to patches which were previously reviewd
>=20
> --v5
> Added Reviewed-by for patch 3
>=20
> --v6
> -Solve BAT issue
>=20
> --v7
> -Make wd->wb leaving the register WD untouched[Jani] -move writeback
> registers to a seprate file rather than keeping it in i914_reg [Jani] -fi=
x the
> atomic flip done issue when crtc is being detached from writeback
> connector [Swati] -fix atomic check failing when no writeback job is crea=
ted
>=20
>=20
> Suraj Kandpal (3):
>   drm/i915: Define WD trancoder for i915
>   drm/i915: Change intel_connector iterators
>   drm/i915: Enable WD Transcoder
>=20
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   8 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  75 +-
> drivers/gpu/drm/i915/display/intel_display.h  |  14 +-
> .../drm/i915/display/intel_display_debugfs.c  |  13 +-
>  .../drm/i915/display/intel_display_types.h    |  31 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
>  .../drm/i915/display/intel_modeset_setup.c    | 103 ++-
>  .../drm/i915/display/intel_modeset_verify.c   |  17 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>  drivers/gpu/drm/i915/display/intel_wb.c       | 714 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wb.h       |  49 ++
>  .../drm/i915/display/intel_writeback_reg.h    | 128 ++++
>  drivers/gpu/drm/i915/i915_drv.h               |   1 +
>  drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  10 +
>  20 files changed, 1151 insertions(+), 50 deletions(-)  create mode 10064=
4
> drivers/gpu/drm/i915/display/intel_wb.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h
>=20
> --
> 2.25.1


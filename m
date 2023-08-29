Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD7A78C030
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 10:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542EC10E172;
	Tue, 29 Aug 2023 08:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D686B10E172
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 08:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693297552; x=1724833552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2PRZcV9K7I74eDndAuNp1IVsSj8Opi9xj+JBUyvUPJ8=;
 b=Pih8dEtKK5JgDPuEQEkg6v8ndN1SPy3SAgliVYjaTvf5BYDvh9OqSqGN
 w8h5GmfoSozOq5ULY7o47frJl5Gn9I1dVwTlE2SYfRO5KQy8KuWpORKpx
 rVD7LNPMrK4kzVGUpEYACNg2j2HnjYhT4G9KMj/AyiLJm7UpPaM9k/tmb
 xu+zeSEnKosRRoWQpA9Uy1evqh3UkcmYefQhAvlfgc+TALnmuCI8A6a+j
 mMdL4vkr1tpSXMUd+vKJGKVq2yFEKUCCyNhA5GK82T/zBw1dymtQ+qcMq
 WbsPreYn0qxr4MXmYmITQRuX7YUVcMvhAoKtycmHitZqa4h38NaUj0aWO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="374202654"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="374202654"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 01:25:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="912337522"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="912337522"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2023 01:25:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 01:25:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 01:25:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 01:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4Vx3is90Jfjpz1R+CJF3r8dYU37m8HxV91P2dHEOOaFAI1QWxaVrV7m/4tWu3fjQIPFXb0gT3c31s8aDRhODNLUsdHRgy3t9mY6ZbZ+dhpyCaneqyRKCKon7pXS7OuutXBlYLmSFIjPkfIFQk8Cm4pBS8jWrYHCEqVsu1KtfQdeeEZ4mRmyGKiPeGoBvBYURnAuIgK0ZOBrHwXIc6eVLC0aqCEOjTsp0nP6+qu2TZwz7VLEHielFKynBcyqIMu8sPhuWgfSc14UUMXVNSb9rUelRVXExpAhmDS2JSg0IiALMjIqh6WhlQgHpz82SGnyaM0iN5g2E8e1vxoX0oZPlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nc+kqWl//TcwMeNr1tooIl8ZfYh0FslsiIovXFO3jLg=;
 b=PJQNqRKJ17LlXQjLjwcSxRPDUhO+wBhBWV+3Yx9CuHwSLKnr69THaBZMjHfKsRKsE1n6t8JON0riT+Jz1PXfxZL6qLu9fA9xcgMI+rPZfTKhWBVfFe3bD/vm1BSaadiB60GafZWsuH8CVzXVaGQPVNVY8/eaQzhQaxLHkpUb6qAuSlSaAmXrSKW+hI/kg0/w4j7ZXWt4sbzWwoaEzhAkSRez5pSv66/7g+oGtQOQazNre3B8lxSL3nr/EGq7PAu1xAjm+PKPy8D8F9Ww98dp5bJQOYHgR8+jThDvGwxnRxlrbK9yuRefGM5GuQtXkyuHxXa4pNf0KTmEjGBO6WSGGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by BN9PR11MB5291.namprd11.prod.outlook.com (2603:10b6:408:118::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 08:25:38 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::47c3:d35d:e598:b83]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::47c3:d35d:e598:b83%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 08:25:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 0/4] HDCP MST aux issue fix
Thread-Index: AQHZ2XnjT184kYjJYkKia9t3yiTFzbAA8Y4g
Date: Tue, 29 Aug 2023 08:25:37 +0000
Message-ID: <CY5PR11MB634471F53518F56AFFDED96EF4E7A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20230828063401.600414-1-suraj.kandpal@intel.com>
In-Reply-To: <20230828063401.600414-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|BN9PR11MB5291:EE_
x-ms-office365-filtering-correlation-id: 24bf817e-69fb-4347-a482-08dba869863a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DzTXnEWTKLUtF2ataYWaGHfOcarxWfgQhkug42672zOk5RNpkMWivGRNshtEmMpct5Uir477xbK8WvgNaVZqhAjqNYHgYHEuh4WuTMvc/U51+tIHogrgH4JBDDR/cuHIK9Ixw5tEWhfAfQ0ZAARqNhLuzThBeY9y9yJ/qAyfX0bSqlhmQrUjIIJP+Vbw6XWNYR+lCTOo744REMoHLpuufNpkGyk45fFcq/usibNvRF4F5BesUgUMEfBw/qJ17KJ1c6pFyCnHBrVlh7HYvih4yOYhD1vPSAKCmrW+tl1+YTn6APCEW0601PXUZYVEcxWuNd6UdpVcGCC3tqnDfA2+DERf6aFC5/OTkJSjbnILBG94ujGMa5AVWfazFd/6PLhYS+bWDQFhVLH/NhsnnS6XNn5LItwFe5/P6m+kp40Jqh57QwsODQ4clVCjkcdRMRFQXswK+TAIMB/TQdu57cXbrmJew2WxGvIERjxpzgtESfAxyhZq1rHSxbo2C+LfC7cZW2nv0MXsmwcIOkiedgurPC6hJJLmbkBofRpdMv8LbqbzMAE01H7HLffzaFGjEtxh6V73pOG5AprCDJixNiKvaQMundpxuNlPm2pg8KcIodsBXQbBK+0mxMGDB6VMSdam
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(451199024)(1800799009)(186009)(8936002)(122000001)(110136005)(53546011)(76116006)(478600001)(66946007)(6506007)(7696005)(71200400001)(64756008)(66446008)(66476007)(66556008)(38070700005)(316002)(38100700002)(41300700001)(82960400001)(9686003)(26005)(8676002)(5660300002)(83380400001)(2906002)(107886003)(52536014)(86362001)(55016003)(33656002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f6m/AVTZkg99LwpXEXv2kmfc87elsCEH3TFJgkzCDn86PvE1lAbImkpqyyJd?=
 =?us-ascii?Q?GAlJTNeyUd1bkBJpo4eqPE3JR1mL9i4ntppSAlHIe2LhBw/+IuqSJ4sKta9k?=
 =?us-ascii?Q?c24oE63czCEaTxKmNP9O9UBgDJuuCX0VzFZghQjx93LkN2xV0ub7/07Dkzoh?=
 =?us-ascii?Q?o7RJxZ/YPB4WqTDhX4sQGWraEE279XIrJ0M8dVpnzGylakbg2KTR93w7BBV2?=
 =?us-ascii?Q?NXVXRkzpGBaH7xK/m4pS/u0SI0AETD382SC3qgPdehRqBERZNAJEQubB+ViO?=
 =?us-ascii?Q?9OcTD7VL4Yi3fZ/Aurmp0AxLGP6/GS0xykZYZineh7ifxeG58u6+B+UTe/Er?=
 =?us-ascii?Q?NKa1XaK8JFJISVV6Olq76QVAAgERL1UqpZETkiE7zXTDRdhq7NlKvnOiU9uz?=
 =?us-ascii?Q?5ZYOz38YesbAzAmcnX+VLZAVPuhSErTViOkHJw9K2uFKQ28utY7pG8x+CpJ6?=
 =?us-ascii?Q?ER/Qj9YhgRwZUoEFLxCoaWD47R7QHJjqbGYKbRqMQWUTVaykoRz1IWE0bYgA?=
 =?us-ascii?Q?5dNcN3aS1Ni9AxYRdX0j5mYPZeDFRYdNArUVfjsQevLkk2mqzZ5IBkNjvrEW?=
 =?us-ascii?Q?hBFdu+Fq1oXn7g5bNyJGUDTW0NzMS/RYEkS/JP7gGZW7IHwrIYc2AFbPvxbD?=
 =?us-ascii?Q?N8QHXRG4dkqYb4B/rU6BEiQEjm5p/wpkJK/M8DCftqqqKDjEd3jDbtH2h2vj?=
 =?us-ascii?Q?6rP6vuxUJ6YCKLCQjvemY8gynKJEZYOINIKegCe57KV1O4Nky3lqIoTMPyz8?=
 =?us-ascii?Q?f2v1Nhpsxv96Ef69wYA/DFNLicex2eAMc4a/e0+5jBEpFr2249F5Ij8ZeEkS?=
 =?us-ascii?Q?ZLoVkVlp1cUQ0pYSI2oiM0SuiLPRA4pkNjA+CG/AulDLgdgFhnxAPL3U2Wds?=
 =?us-ascii?Q?FqzSXUcaxiwC3JwXby67kylXiz1eDQ3zplX2WUFzYNHP5FWPdhAm8OMTUCbG?=
 =?us-ascii?Q?vRFIoxAYenI7bjwBPqC8Bn0nSSUdDHo7ivfdbdunJiwgLy1GjZkhvoRI7nKE?=
 =?us-ascii?Q?0Mp+tRDWozMitWSXarLWrG8c1D/HH4PD9OGr5DniM2PF7sRaxcoGss4r6kLQ?=
 =?us-ascii?Q?TmJl+c9ZhJpVq+D/9Z0nFSgg6JeiI/z3023ZQ+Z8e/tcYccfG2bsqwuHTLZc?=
 =?us-ascii?Q?cIZXh/jkyoU+A5o7HqGP//NGDQacXi25kcDWbA9/XMSBl15X6aZhl7dIJSpP?=
 =?us-ascii?Q?RSqbqslEo5YTlG+TLCIUQ6r95vEwNZyTHQfu+SkWQ1qnx7pdIV+nWZep6/xr?=
 =?us-ascii?Q?IjTMHkJiX5VMNnlNDX+8wwIMmz2yFTvnw5EwHrGXKSN4CscK+hA3dnaOWMv0?=
 =?us-ascii?Q?ZFz7qNm2j5cOmumM9oVpWP8Uyxy+B76WCQs9xQ7OqO9ilzT2lSmjCCzCRcF1?=
 =?us-ascii?Q?MK4vUyrnI4rlNw5nlm60cRxbv6/fM+nIFLGsSD7ACxB5jtmVkzTbzk2bX3tF?=
 =?us-ascii?Q?gakpUFnmfD0kpQbLRxVII1B2ENfizpHf2E/eZ9HXrYd8q078pjuA2BLyEw2D?=
 =?us-ascii?Q?pB796ZC9fkvyqxX7f3U8jsxHkXmSQWPz4f1MmbWpzHefCQIHIVVt5J97rGv7?=
 =?us-ascii?Q?RaBSA1TEpdDxN6ifUHB0QE7C8ylOgSu3JVjlos0I?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24bf817e-69fb-4347-a482-08dba869863a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 08:25:37.9484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TrD8oVhbHbMdLChdocFLRjsRZYxsI87jSAn9dwRXppyyuycPKm2So7Ae3rrWWRZ4uYPxjiRs7384Wp4tCehLuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5291
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/4] HDCP MST aux issue fix
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
Cc: "uma.shakar@intel.com" <uma.shakar@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Monday, August 28, 2023 12:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: uma.shakar@intel.com
> Subject: [Intel-gfx] [PATCH v3 0/4] HDCP MST aux issue fix
>=20
> Up until now all dp hdcp specific function derived the aux from dig_port =
which gave
> the aux of the primary port but with DPMST when a MST hub comes into pict=
ure the
> monitor becomes remote and what we need is a corresponding aux which is a=
lso
> remote.
> These set of patches aim to fix up just that.
>=20
> --v2
> -Do not pass drm_core struct to i915 function [Arun] -Fix typo and correc=
t commit
> message in 3rd patch [Arun] -Provide justification for timeout adjustment=
 [Arun]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Pushed to drm-intel-next. Thanks for the patches and reviews.

Regards,
Uma Shankar

> Suraj Kandpal (4):
>   drm/i915/hdcp: Use intel_connector argument in intel_hdcp_shim
>   drm/i915/hdcp: Propagate aux info in DP HDCP functions
>   drm/i915/hdcp: Send the correct aux for DPMST HDCP scenario
>   drm/i915/hdcp: Adjust timeout for read in DPMST Scenario
>=20
>  .../drm/i915/display/intel_display_types.h    |  6 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 80 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 +++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  6 +-
>  4 files changed, 73 insertions(+), 49 deletions(-)
>=20
> --
> 2.25.1


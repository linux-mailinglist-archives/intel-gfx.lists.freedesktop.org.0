Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF75C8D4E5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 09:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C56610E794;
	Thu, 27 Nov 2025 08:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GfOhoxpk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31A810E791;
 Thu, 27 Nov 2025 08:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764231520; x=1795767520;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3cgyD3tp5/dFhrSB8oIPPP/LwJZp0msTpjkNOuo0zss=;
 b=GfOhoxpkxbyoSti/Ipn1shAd8xrsvupSEUQVim9mHz1uJjDL588UG41A
 O8eu7hq6W02RJD74v4v9F89N19i6/tazKYY9PbiiyIssZGjLJaB2GafOx
 3839KtSy51V+fSEKZ6jT0HC760tF7+5pSu86q15wxl0e2hStNqZh4VpZH
 0yJlSKlNokeTeD8WjQVR6lbxPhbi7WdlXho0Y/3UiFyk3/Q17cvB3CGE7
 r8krkPVxxC4eqEzL62C1PwV4OSHTCXtBvIm+8xLF4qcQTIk3aKDo/BMPW
 EQ7aHjgIxdU1SozXUqUXa5Hz/W9MU3On+SlqlF9UChj+FXw9D6uurVpQ0 Q==;
X-CSE-ConnectionGUID: 6Y/6PHK4QXuQTE8CmGyAdQ==
X-CSE-MsgGUID: sxhxezqSSP2cw9kiepMd2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="83886014"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="83886014"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:18:40 -0800
X-CSE-ConnectionGUID: OAXkXuvyS6qk6OOWpA2JSA==
X-CSE-MsgGUID: o9wsSk8vQj2e1Hds+53tTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="193067825"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 00:18:40 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:18:39 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 00:18:39 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 00:18:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rXzy7BrsJpk8M3xo9Ct+NmAMxKH6hBWvHtRTWP2OsuHDqimqUWB5HBA9jVwM/0viaxKijlZL/u1tC4/XhEgyH/6bLeokmOMWIMhW4ksrhYtlAzRxnTEKd/hLqa2/1bXO56qDELmvibdlWd/32LNHGJWjX+gouW+vZfJZxIYcLlkO1JKafmrFsfdaRArFbliw5Fmt+yY5PQLFH/z56tfYHsYg2+kjYOrHgDDd5dV9jObl+PhSPIpLcz3fJv+LF8JG3i+ISDoEk2xe1Cw2yCEWwuQ36U5/ocmK7GNocmx0SkmEWwXqIn14pCPWX/hNVI0XFBT9xT+n8GbTikxOEgc9iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YcgVR0WDlAMurQpHvgi+QYXPXV+9AFbMoEUON+iVx54=;
 b=Fi2P3pXce6kPOATJ+l3hQ/bBU2zWjxI1+98hAj42gjval/LNH97qk72B2xZMhLIDvciPZX/VokPnEA2viv1lbv88uFEl551Bi3wUY5MmwpU+mi/v4yw/beNHtu8Y3qDslOfg5/TKmxXgn9fSVvB0JmKzzCN5YGWwm7agvKoj0AZ1ZaW67Wrsq0LPrBxMpfYJuClAfpTbNbVbkW7zTPQ3iQgXxviBOAKOjyNMDtSxEdiOSgC6DZPVvV7D471Qi+CJnmFmnEM9896dQRvxSywcKgyceScnyEaQPId2r3uXUh1I/GV0oL8eg5SSaz+kHwRcD2k5kaR+Aku7b3QgrojA7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8035.namprd11.prod.outlook.com (2603:10b6:510:245::21)
 by MW6PR11MB8410.namprd11.prod.outlook.com (2603:10b6:303:249::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 08:18:34 +0000
Received: from PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063]) by PH7PR11MB8035.namprd11.prod.outlook.com
 ([fe80::b991:bb49:eda1:e063%4]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 08:18:34 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel, xe}_dsb_buffer.c
 independent of display
Thread-Topic: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel, xe}_dsb_buffer.c
 independent of display
Thread-Index: AQHcXsV1X6fM+Ksmf0+a7em0aMDQNrUGLjwg
Date: Thu, 27 Nov 2025 08:18:34 +0000
Message-ID: <PH7PR11MB803500F399EADA5703EF35A5F9DFA@PH7PR11MB8035.namprd11.prod.outlook.com>
References: <cover.1764155417.git.jani.nikula@intel.com>
 <a8cee08e8c36c2cf84cb9cda1b9f318db76710af.1764155417.git.jani.nikula@intel.com>
In-Reply-To: <a8cee08e8c36c2cf84cb9cda1b9f318db76710af.1764155417.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8035:EE_|MW6PR11MB8410:EE_
x-ms-office365-filtering-correlation-id: 3a34fe8e-8ed5-4622-fa23-08de2d8d8eb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cDFJkwDGTDA6x/WLlPDwm68knjdYUgJdV5THQ9Pgfw1TEMocqQ98PFXDmBS1?=
 =?us-ascii?Q?RO0UKEmOYDVU8i+2e1rvcX7wlBlYq3NhINP5GRJeSsQIq/W5vh3XpdnVb37q?=
 =?us-ascii?Q?xoraPeYToFhL/8sIRzTneWG5wcZdgzeSWnb/y+TbFzKqhJU9A5x7Yu+mI2uZ?=
 =?us-ascii?Q?+dGtBKeXsZmtcCQhdW8v75r6ERF45MQfIm22GY+ter898/WvD6/siAupWdKc?=
 =?us-ascii?Q?SXE5DlHYtyCtFnjFgO4EbR6hJHmTr1ADH3BrpTolCIkSgw2rPrZoJo4Yt2Zo?=
 =?us-ascii?Q?ZnMWpvgGP3nmhDqHhj3Pxgm2Vzo1XX4Y2LgUZnlpXNp+xY1SrbvQbfMvswGf?=
 =?us-ascii?Q?l+IZElDka83CKJL1cmAmjRVjyoyvlr3Ee9nRcgEIyxCHNPmaFD9xSKfVMN2H?=
 =?us-ascii?Q?gv4HBdM2FgHz13m3FKP5LFcMSvjkh3VStbi8hnLLnl/cC3WBWTx4zKhITI3e?=
 =?us-ascii?Q?puSwjxA9LwzGGqBcydRo5+ZE1kyekp3qQyGhSppiUX8eVvrDrUOZJrvThcKH?=
 =?us-ascii?Q?0SiZc0ieryZDo2+uLF045XcLuEO2AcUgqACQ7jdnGb4utQZW0E2Zoam4tK8W?=
 =?us-ascii?Q?+Qdi2IQxNoLbMIodwudDgD18zgzQR+KnHNbORgqk2y+f9eosCwE7jdOXBZZo?=
 =?us-ascii?Q?aqXMrSsbSsmhyib0Vr0tVvsxM9p7iVg+O31r0dOwEGMiJekIC4vO9l+0O823?=
 =?us-ascii?Q?y+47EYLJ0LFTOGvJFNj8fU7E8ydvEDfyU5o5LAXywWmLNjDVDZTJduXfgH5X?=
 =?us-ascii?Q?swRCtL4bGUkRWpPrLxJkcVOznhgf+I2bdre5v9kiabMijoKEPs/gqwIuhMea?=
 =?us-ascii?Q?w73dNw4+Ljb3MicCEWfTbmmia/mrIpvu/LKOI20i17ZfIbyTVrrtXQvo/Ekf?=
 =?us-ascii?Q?jMyH+U6BdeRNcJJKEi3ctJQISvJODypmxbIxLzZUZ9fjwoUH3KE6dI2giTNh?=
 =?us-ascii?Q?lyoWl4mibhXpThHO35VwlpJP0v5HQ7WUhvbhbaMkpjRGS/Vp1RNF0gFDCR21?=
 =?us-ascii?Q?9RqaRXLW8d3jYx+Rngx0yyMLjEBLUX0yuLU+W0x4gZdcDHHeU6+UyofEyzUY?=
 =?us-ascii?Q?epKjrhp5fMkxbSpjHMuWjIDNY55BD5iF8M58T0UUHcVluukaUrw3k01pxe9H?=
 =?us-ascii?Q?AnY92o0mCkGvZ57j+JLVpvVB6GG8uPblDdWpOn1SeNOxM/7kTWigY/PyiO+H?=
 =?us-ascii?Q?W1IegeghE3tms2Xwv5zQ4fe9a0Wz8BVCMUNDtt8etdsCRKxhqi1EP3OJb2cX?=
 =?us-ascii?Q?eENud0M1tET0Fd5sGCg37mkntOOhfbeYfAD4oTWhiO4Us3mzxnppCpR5VuXk?=
 =?us-ascii?Q?YL63nVJopcHbnQNtasTOENjGCamiU+Sr81VUYqSEW84fEVVIE/vTbMTEesC5?=
 =?us-ascii?Q?6LL4xxSmXrtRlVJwHXb7zxi/CLqpVeunLmv8roE04gRBzmIrnTHs00NiMZq1?=
 =?us-ascii?Q?5chhAUtKrll+WmUG7Go1kj+WOjuJ9u/YMpzVLxEU2sGP+BKZOHBcDQUTU4S2?=
 =?us-ascii?Q?bPOhhTgyIbIqNfinNv0IvLUL1gEeTq4KeXUh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8035.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sdYD1SDII++61IZh9wajoVuVjnfkB2GaQEf8rYIkzhM5evW8Iocmn9o0rVZq?=
 =?us-ascii?Q?RLqQMmz7UfiNUci1vYYonQqJEvEBhGQMpa+M4B5217GhPSDrzWhXNKYrmeOR?=
 =?us-ascii?Q?wmxkq944j2dRFTSidhKfKvqEir95Eck6iTwb29+rgJa40UhJUcYaYXf1YJJX?=
 =?us-ascii?Q?FIG6Uqj6bfURHDRstUI8NvOMK0+8nqmQkUI3dzJmpZbhJKYmcjozY+9mW7Hb?=
 =?us-ascii?Q?LfjYUECHB2PH+zsq17HJr0aJ835WLtkIfuyLK9KH9UNYDtFfIikz2Hfuum3k?=
 =?us-ascii?Q?jx5nMAeuKjwjPrGsWinZx6s8FAy7kvYqxF3ybr+5V6YJUQ3IY/RzvxzbtH0W?=
 =?us-ascii?Q?2XP15su1fFs6TxzxoxEN2gVSK9fsPafFPQ3Okh5H9ndmi3bejhLSp/jLssIv?=
 =?us-ascii?Q?y73kcIqleS8BzmnX8iyO3XZWfwa8Ot4obYCbRnUcZMUuJAlYgn2rx9eR+KHB?=
 =?us-ascii?Q?XTPiAuXkkSR9AwNldbUN8cVigrQwhTEbQFSRwhbW2LQBwTwkDgj+3k+plw2r?=
 =?us-ascii?Q?J6HE4Vp1wP6OJyxRAv+mDV04AJ1k+5bKgFW3Xjcfb/1CbHS1l8Cj16WcKg3M?=
 =?us-ascii?Q?v/OoxlGPr8lN2vEoTouaYbttLTa8dtb/mgZ7+wxwZmEImGsFYKEq1sTkyhvm?=
 =?us-ascii?Q?5YXaGSVgG8IsfupRsnOn6aOdiBFrFvu+IZwa6H6QJiE2ZoOdgYpkw2pq9C0V?=
 =?us-ascii?Q?yHO+FhJYNy7k6j4XtQBI66850XVQnP1q10DRMSvW4Zk66UDRBeo7hIJStGEo?=
 =?us-ascii?Q?t3pOCz21SkeB6ueFez3Y7/99iWglhEYvQtJ5dB7oDawmWbBXSY0+AxOnLH6I?=
 =?us-ascii?Q?dqeUzdTN843jRXgHStNeT8KpIrUF1xiBynTWClh8d1njaw19zW49oakDwLfT?=
 =?us-ascii?Q?yF6xxqVXS2x3K7WoqXp7mml4DOZuxaRCKaDMDb8YihHfb/IARUVhrBRAEDq4?=
 =?us-ascii?Q?p0AxQ05fPcTLU9oKEUmeQGCG9WuJ+sxNe9J9LxQYMi4yp3z+5MyezSNNGoAg?=
 =?us-ascii?Q?nJW2rRFOv21T8gcU/aEYFYBh5dwc78Qq6oyqjXAtTI1Di9o2MsdMKp+FBKPS?=
 =?us-ascii?Q?yWyL5xrilaPzILPGKFXoyNMGxVzYHjkfjG1YQxyPRYJ0z/PQ3ZveFBwTVCdo?=
 =?us-ascii?Q?GIRRoHFXfksqZfNtTu2uXlCNJ5Cxejb5QaHDPWSMReTiqTum39qsiW1+0kM5?=
 =?us-ascii?Q?iNsCAaLbTL99Q41LB8jflhch90QtU3m3VPFYx8Z+h4il8LqbK+xFqbMqZbV9?=
 =?us-ascii?Q?Is6xUJNh/QiDSTgHyWOF+hYqmzKyU/6jIPWMtqIWbBnz2lEi03AOWyAmJ+37?=
 =?us-ascii?Q?hKwdYlnpir24E/b9I2/HGKqeFoDkGHqb8uNz5dbJTVMsVJapitRIwQBMYoge?=
 =?us-ascii?Q?PseVDMniOwyGKBGeAuXwHRCDe9NensvP8PCHKF6u39dW2TGJtrDQsxyWWd/e?=
 =?us-ascii?Q?uM8Fv/sDGZzpplSICJD36DBr2q1Hxp+NsseplgvUIGzY7NQzvJ/SRhZiHOqU?=
 =?us-ascii?Q?iN/tPruUDMKMRQbJBGo+iMjsm0AmNJx85olj6Pd/+Sgc9+msgbhKkUJVGhaI?=
 =?us-ascii?Q?gLj3ZM5nvL2iw68wfGfy7Mk9B7VTu44VwAL7XdGx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8035.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a34fe8e-8ed5-4622-fa23-08de2d8d8eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 08:18:34.0772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OTMHDy+z00PlgOyZ2nimOjZbxkBw8w9zSS+/IjBptD/xE5Bmm0iR8CwcuQsWmuvzIwWwX4BVyCyY6iTk8zzdSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8410
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, November 26, 2025 4:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
> Subject: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel, xe}_dsb_buffer.c
> independent of display
>=20
> The DSB buffer implementation is really independent of display. Pass
> struct drm_device instead of struct intel_crtc to
> intel_dsb_buffer_create(), and drop the intel_display_types.h include.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c        | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.c | 5 ++---
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 4 ++--
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c      | 5 ++---
>  4 files changed, 7 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 4ad4efbf9253..6d546f9ff316 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -953,7 +953,7 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_atomic_state *state,
>  	/* ~1 qword per instruction, full cachelines */
>  	size =3D ALIGN(max_cmds * 8, CACHELINE_BYTES);
>=20
> -	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
> +	if (!intel_dsb_buffer_create(display->drm, &dsb->dsb_buf, size))
>  		goto out_put_rpm;
>=20
>  	intel_display_rpm_put(display, wakeref);
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> index c77d48bda26a..1eafcb2dedcb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> @@ -7,7 +7,6 @@
>  #include "gem/i915_gem_lmem.h"
>  #include "i915_drv.h"
>  #include "i915_vma.h"
> -#include "intel_display_types.h"
>  #include "intel_dsb_buffer.h"
>=20
>  u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
> @@ -32,9 +31,9 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer
> *dsb_buf, u32 idx, u32 val,
>  	memset(&dsb_buf->cmd_buf[idx], val, size);
>  }
>=20
> -bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_b=
uffer
> *dsb_buf, size_t size)
> +bool intel_dsb_buffer_create(struct drm_device *drm, struct
> intel_dsb_buffer *dsb_buf, size_t size)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 =3D to_i915(drm);
>  	struct drm_i915_gem_object *obj;
>  	struct i915_vma *vma;
>  	u32 *buf;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> index 425acd393905..496ece42b4a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> @@ -8,7 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> -struct intel_crtc;
> +struct drm_device;
>  struct i915_vma;
>=20
>  struct intel_dsb_buffer {
> @@ -21,7 +21,7 @@ u32 intel_dsb_buffer_ggtt_offset(struct
> intel_dsb_buffer *dsb_buf);
>  void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u=
32
> val);
>  u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
>  void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx,
> u32 val, size_t size);
> -bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_b=
uffer
> *dsb_buf,
> +bool intel_dsb_buffer_create(struct drm_device *drm, struct
> intel_dsb_buffer *dsb_buf,
>  			     size_t size);
>  void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
>  void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index 58581d7aaae6..1bbebc0313c8 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -4,7 +4,6 @@
>   */
>=20
>  #include "i915_vma.h"
> -#include "intel_display_types.h"
>  #include "intel_dsb_buffer.h"
>  #include "xe_bo.h"
>  #include "xe_device.h"
> @@ -32,9 +31,9 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer
> *dsb_buf, u32 idx, u32 val,
>  	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
>  }
>=20
> -bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_b=
uffer
> *dsb_buf, size_t size)
> +bool intel_dsb_buffer_create(struct drm_device *drm, struct
> intel_dsb_buffer *dsb_buf, size_t size)
>  {
> -	struct xe_device *xe =3D to_xe_device(crtc->base.dev);
> +	struct xe_device *xe =3D to_xe_device(drm);
>  	struct xe_bo *obj;
>  	struct i915_vma *vma;
>=20
> --
> 2.47.3


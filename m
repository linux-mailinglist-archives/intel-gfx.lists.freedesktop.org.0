Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE26B14730
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 06:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538E410E5BF;
	Tue, 29 Jul 2025 04:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLc9E7JI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FA110E5BD;
 Tue, 29 Jul 2025 04:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753762972; x=1785298972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fcTkXBbGqLccvPIZqkYaUmRj4LyA1U8QHA4xnn5+F5A=;
 b=aLc9E7JIgm8rl2ZWPfm+i8o+ZXQpACvVWJU5jRiNgi1GlX8+FfGdWX+p
 VToPZoLGOGE4bw7Rk1urBxDDF0u0JpCCEQ7G/F6Lly9vEqC/hw0bSeWrx
 jrpcQSI4lYODy8tss+lul372aHa5dCTztpAKm0fTTkHhyER18kgFu5dyh
 T+OVMiLP5So9+WZih1nBdmHDhzkmc67TGDzw0ZgIWwS3Q2HRR+GLGJ2JB
 d2sqypabXjLAvLj7aVoMlT9U2BBIEL7oyP0PNg8DhqQ4JxYKfdypvGEd1
 +Tjs5XeY6gOnLH+n9PhK8qafybnp/JCph2QsjnX7WRBhR7/2YWkHdbeCz Q==;
X-CSE-ConnectionGUID: sYgoEeg5TIiHcAPyF9g8pg==
X-CSE-MsgGUID: 7Lw8Tn1SSGavyTZT8YJUog==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="59824152"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="59824152"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:22:51 -0700
X-CSE-ConnectionGUID: MkZwVO1pT2KaquKCxHDaxQ==
X-CSE-MsgGUID: Zdhj4FOoSVONnjH8fujPpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="162636542"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:22:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:22:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 21:22:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NO8COJAjIw6/cj4iZ+8lRts5Zbs+SJARLVZaLTWG7wCPdm6Zb2M+WyWBWjyffpNM0gcf6ziPApKkyex9VYw9erb/YstHIzg/KNePdbDvNwvGtu3y/ATPdSfUrz2HLzVjgaEPdNL2PsFHmsKDmZ4S5mLvtoQgwVla6lIxZiSXmDV17wQ6LN48x2JBeq3oSUDKGR/uKhjib317foX2Crq7qlhs0HfB0sk44aRsi93aIbi5jDqW/yUDuY8RHP5svJPywqpuiNTbO72eQEHWP25wWF5ykaHUXXuaJrr9CrMHh3+f3vZ/rinPWiJ+y48ORreQ7IT46TqVeVsBCQiNLeHfcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLx4bd5x2VaVcKgUU7sG28jsuGpvvmtSeiVmMAZTJGo=;
 b=X11a8TeYpnIvGkAKYDZqfrD45euia8lnF4udkk1WrbFa8zktZGiz3LKUN0u7jcjJpsaTCTfjVMjgy1EZ/09BOahuws185xOiagR4mub4rgBKUEi3jwM57jv3LFqkmF7+H1dVg5WSGAHdPT4/GJylPykkubcvQjZtg0Sasf89bPm4wi1xdJfibHNoI3gbLdGlH1Y2TfCYtpHVhZ6QbMJBacACFoRmAsObRMO5uEqDAIgJch14OsQmyY5QWOPhoFo0qlBOYRihGGgCCbEqDQbnX1SpU9Vp8LfVxscR/P06qWk8L+CQLdjaV81U0UHxJ8nhP8dnH2v50TdNm59K22yIlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW6PR11MB8392.namprd11.prod.outlook.com
 (2603:10b6:303:23a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 04:22:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 04:22:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Thread-Topic: [PATCH 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
Thread-Index: AQHb/Sua/IBKCMAPU0Sbc3G9GeWfRrRHhCIAgAEAsrA=
Date: Tue, 29 Jul 2025 04:22:19 +0000
Message-ID: <DM3PPF208195D8DDEF1F03CAB203363DD21E325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-3-suraj.kandpal@intel.com>
 <0601423daeaa9bcdf1b5ceb2c2d92cc92c189551@intel.com>
In-Reply-To: <0601423daeaa9bcdf1b5ceb2c2d92cc92c189551@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW6PR11MB8392:EE_
x-ms-office365-filtering-correlation-id: 55a607f2-a155-4f8f-650c-08ddce57820c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4rfNNIyIa9d9Irum/GV2ehoUezPuiWHBOWE6FU3xbAW3ZXvI5zf7aVuJ46Yb?=
 =?us-ascii?Q?O0j37lyeymBLRCdz08Lf9Qx6onPR5jSS13YequQSkGVeIMqE7sZnVaRDlPWL?=
 =?us-ascii?Q?d5EUht9YpxuUFB67HGNsA/Zkzs8woS8n/gWXfiriWmpWeFxFxbLtgjS2FGva?=
 =?us-ascii?Q?E64lgBr8jqI0HFfLydqDFBOs4JFEy+t1sO4cWUO5QDosAN1EN6DgZ79OR+9V?=
 =?us-ascii?Q?ZCx3mloo5Qwc88Iyi/bq9lJGTsZaIESfUR/wKPSWnv+wpXt3mtHxgrmTmMBO?=
 =?us-ascii?Q?+BgRJbI5NZ9xg2OqwtXaVvMkgCEsiroDPPrD3vVhLNfqe4lLlY6F8PrECeJI?=
 =?us-ascii?Q?UROxXHAprMHsguQVJXVaY0CDfRT+foUPzVXhScowb2T5MsXELCCBab7zeExt?=
 =?us-ascii?Q?CBPTey5F4+ROoaM+Q5mcp6WPapUtCpyR16VjUSti6jpd+5KkUMT3ySvS+AHK?=
 =?us-ascii?Q?aUqyd9pE6nzpVDzsBgPJdVYUtsJL92gXobolm2FBN+57DjjnBgKYFLhtDPJ6?=
 =?us-ascii?Q?76A+rpx6BATxilUQAwwmBAeTEUp+X518kUyP64RBfaD8/ORNr/zAsD6AtKlw?=
 =?us-ascii?Q?0jXBzZlOdAm3EMiNzxZKgIDqK2noaLQ+UwwNMf5Mm5mG0b8CGjFJujIuSFwT?=
 =?us-ascii?Q?+CpsvdnmBKFP1KjnODh6pSmy/jL+ZAp433+guX7JZKVp/BgpF34KZTPYQYZU?=
 =?us-ascii?Q?tdvQqFwUALibj002GKJh3ouY7dMJPRg8uYmIC9k95q5U7fniGYkCRSF1E9iZ?=
 =?us-ascii?Q?NkrbXYF7jZF2pTjV1WVY0NARQvoiW6rnZn243E/UTx1Ctw8lXF5HSL9OZzdD?=
 =?us-ascii?Q?BpokBAmzT2YeHq94tfgz8D5SqLOHkhUFC8qRyxj/ZDohKoB9P69kvO5WHGvI?=
 =?us-ascii?Q?v/ZAExyLVZ5tg5o10Fjd6R6goJoPRVLnhQ/mxoJm7pa3WR/gqs9n3/GGcEPa?=
 =?us-ascii?Q?GKEtrlG3cxKARO9IcV6a87CzELniTdsTTYK98rvJW1ARV6fZSb6p3YkglAvR?=
 =?us-ascii?Q?gyhIdLVMqX0avpURq4C0/TSBe4XkJ3mFFm2oYq4QWA4TJKhLPOdwxlIktl+L?=
 =?us-ascii?Q?KuhFVl7fHE37Oywtt6HP+lcdowZ7hN/6hsCrswyVcPXKjQQaEnSx3PdcDgrr?=
 =?us-ascii?Q?mY/ClHa6O8VpckfcNTv+OkVDw4xQTQD5/rsLEg7czRrgW5Fl9ZNHtNz5iMuh?=
 =?us-ascii?Q?bx2gtmjhjZ4Q/yANz1ip2gOUj4Ff9lAK537VX6LCywrAxoc2XXr/kFJJYtRp?=
 =?us-ascii?Q?Jvv7ZwpKU3dietRvBLkHZrfCkc0k0oJJgrOg4lGxuw9tfSGJ6QpEu4Vhe7a5?=
 =?us-ascii?Q?5RjLoBToQRl8q5mklRDdePElkdlj8g5MLTnKfaRvCZVuGSOkqYRH7qntVWBB?=
 =?us-ascii?Q?XzUsIXLdj0JsezQaD+WbVDbi37UJE3APsLv0jUb0+7g6MnbxcDo6qHDJ3krm?=
 =?us-ascii?Q?2lHS1Lf8mPY/ZXcNMdprDPqrIzzzUG7dc4wO0lvVIqeTrQpeImLekSizUSS8?=
 =?us-ascii?Q?voK5HJ8BiiPYmQQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jNJJ8Jago3jWvXO1sDP88xOoPpCZPGO2mSboaagZTSO1uDMfChhC81Uu5mYM?=
 =?us-ascii?Q?NFP8zZjoU6ExI8VrC8NjfS9aHKKuG4Sj2Ixu+0LHcOZPCOvI/N8m3jMZvllT?=
 =?us-ascii?Q?5OXwSouNsvWeRoyGHXIuDeW1D+UX14Bac35jLrn2TCq9QRe/HLscpCeGFzbV?=
 =?us-ascii?Q?7J/jVXdyf10Mrh7Yec4EbPxBRUR5gcUwFMwwQ1pLocFGdWYPuGiLqIt2SW8P?=
 =?us-ascii?Q?kb1iUXQHfJ4MjL2Zyoh8jfIYTwQ66SKaBexFkVqzQNm08qYWu3I4eu+PffdL?=
 =?us-ascii?Q?PwaA5tL9iU982hxB08kW1eiEW2oHFkXcGeTNiblT++RdjJerjdhcmfOXWQ12?=
 =?us-ascii?Q?onRE/vZ9OnqU+0cN4ZG2iwKHt6kYcbaEqCuARpTuT/40YDox1K0y7nxDCrhN?=
 =?us-ascii?Q?kS6hogzcCqyhG37LagSOgONS8YB6nMJkU1sLOS1FUhfKd5o1ckmJicMeIneR?=
 =?us-ascii?Q?MazDIodwJCe1RDBKRCHlid8Rmez6YPJLpOwFoVAtvmpUZbji1O89uSU42zo1?=
 =?us-ascii?Q?R/4g7IhRkSVNkHycT53BncsyMUfF7h4VRz0SnWR7daYy6qzfqiKP6CxCxZMG?=
 =?us-ascii?Q?//6SxrowNmW3OAAS3zWYqfr8LnBXL9eWsAdaLGwpvY+DAqe82IywgeqiVSSq?=
 =?us-ascii?Q?j9oR6trjs8oD/UwJuSOSLjkourU3UwWvyMmOMZqlmxK9CoxU3QCN3WNM5K2J?=
 =?us-ascii?Q?atXE9uI55a5ObjuAdIAgVpFaJTIVko4oxoufZpFMM7QgeixZ20Aic5dcD1n4?=
 =?us-ascii?Q?Jw5t66M1r7pbpKXsMTno5/j8B3OzgJCiXggLEo+1bttGw/DMp3oHLJZMyO5o?=
 =?us-ascii?Q?P+30UJ2M4ZwSGt/AkJ8i4wZBqw3By4xdfCYBvxbdr7RfjkmSrG8dS+xtGqaY?=
 =?us-ascii?Q?gQMh2TbqAor3DPnEnaJjcStRtHt8lqlCyl6lffFYy67VH+IVzSEcQy9RUJXf?=
 =?us-ascii?Q?SFSvh3TY1317obN35h/QtJbTlBQLDQXA/K4hi1yV5D33uPWTeYGtyxCaYq2J?=
 =?us-ascii?Q?XaIOcp1fwA4R0H59PFNCQepFKTDHmDv/EddZJPAS2jbz+Qy/DkSaVStNOotD?=
 =?us-ascii?Q?pKvTVdwy3+hb2nbL5ZCHMAJoGElEBbsYcqxrE4qFDrkVlz8rBDnzxce6/rc4?=
 =?us-ascii?Q?2GGT4zcSSGgkLMd0anK+yZrHS91WcLSS7Eld7B+NTCjT3PAWdTzpP93bpgDH?=
 =?us-ascii?Q?GFW9GAyu6NRO8Q2jNCaW/b1JDWD//K38dY01H1xDJ4PPY00oNUmu57oeCm+C?=
 =?us-ascii?Q?mpSZwgUMFd95oFwZrok2IxZCQSZ66tA+mFXlVN+57szd+INzYhgSLUa3RFhC?=
 =?us-ascii?Q?MqG+8+U9JdRJNHmKGKofpo5vXpvMrNBpBkv7AtSgobRpiPoWvdMXIky12uY5?=
 =?us-ascii?Q?+R+JXo5XyKwnYY/FEGeMpCwjS55zEk0S8gIw/Q+6yM87HxVWe9M4ummwfTft?=
 =?us-ascii?Q?kKynHr/BWHm0j7whk1ZecLYrMsBBTIYB5ATFaTB38zT7NK0HiTjnK2Dfa1rQ?=
 =?us-ascii?Q?w2RYE0wZQUxH143D9ZeI84HpG0T6JHsp0unFZ1G0CPcvRrweH0/ESvdttvWc?=
 =?us-ascii?Q?gONJwa2waa/zSsv59pbxVfbM/TJtJDO8NsD0HxRX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55a607f2-a155-4f8f-650c-08ddce57820c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 04:22:19.5428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uGlcxzziwMSQ3hnBBsY2wK47CJCQhc3Xu7/gv/THLeLjsp1TaneKZHUTvHL//yn8EuuCejuK1fID9JycfhY0nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8392
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, July 28, 2025 6:28 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/bios: Add function to check if edp data
> override is needed
>=20
> On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add a function that helps identify if the rate provided needs to be
> > overridden. For this we need a function that compares the rate
> > provided and bitmask of rates provided in VBT.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 58
> > +++++++++++++++++++++++  drivers/gpu/drm/i915/display/intel_bios.h |
> > 2 +
> >  2 files changed, 60 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 8337ebe0f2c8..3eac804b2449 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2480,6 +2480,54 @@ static int
> parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
> >  	}
> >  }
> >
> > +static bool parse_bdb_263_edp_data_override(const u32
> > +edp_data_override_mask, int rate)
>=20
> We don't really use const like this anywhere.

Sure will remove this

>=20
> > +{
> > +	u32 val;
> > +
> > +	switch (rate) {
> > +	case 2000000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_20;
> > +		break;
> > +	case 1350000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_13_5;
> > +		break;
> > +	case 1000000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_10;
> > +		break;
> > +	case 810000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_8_1;
> > +		break;
> > +	case 675000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_6_75;
> > +		break;
> > +	case 540000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_5_4;
> > +		break;
> > +	case 432000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_4_32;
> > +		break;
> > +	case 324000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_3_24;
> > +		break;
> > +	case 270000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_2_7;
> > +		break;
> > +	case 243000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_2_43;
> > +		break;
> > +	case 216000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_2_16;
> > +		break;
> > +	case 162000:
> > +		val =3D BDB_263_VBT_EDP_LINK_RATE_1_62;
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return edp_data_override_mask & val;
>=20
> I think you're better off having a helper function that returns the mask =
for a
> rate, possibly 0, that you don't pass edp_data_override_mask at all.
>=20

Sure will fix that

> > +}
> > +
> >  int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data
> > *devdata)  {
> >  	if (!devdata || devdata->display->vbt.version < 216) @@ -2499,6
> > +2547,16 @@ int intel_bios_dp_max_lane_count(const struct
> intel_bios_encoder_data *devdata)
> >  	return devdata->child.dp_max_lane_count + 1;  }
> >
> > +bool
> > +intel_bios_need_edp_data_override(const struct intel_bios_encoder_data
> *devdata,
> > +				  int rate)
>=20
> intel_bios_encoder_supports_edp_rate() or something, "need edp data
> override" doesn't mean anything.

Sure

>=20
> > +{
> > +	if (!devdata || devdata->display->vbt.version < 263)
> > +		return false;
> > +
> > +	return
> > +parse_bdb_263_edp_data_override(devdata->child.edp_data_override,
> > +rate);
>=20
> This would become:
>=20
> 	return devdata->child.edp_data_override &
> edp_rate_override_mask(rate);
>=20
> except negated with the positive function naming.
>=20
> Also child.edp_data_override is a misleading name, because it's about dat=
a
> *rate* override, not some random data override.

Sure will amend the name to edp_data_rate_override.

>=20
> > +}
> > +
> >  static void sanitize_device_type(struct intel_bios_encoder_data *devda=
ta,
> >  				 enum port port)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index 6cd7a011b8c4..aeba0e9b5228 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct
> intel_display *display,
> >  					      const struct
> intel_bios_encoder_data *devdata));
> >
> >  void intel_bios_debugfs_register(struct intel_display *display);
> > +bool
> > +intel_bios_need_edp_data_override(const struct
> > +intel_bios_encoder_data *devdata, int rate);
>=20
> Place this next to the other intel_bios_encoder_supports_* declarations.
>=20
> BR,
> Jani.
>=20
> >
> >  #endif /* _INTEL_BIOS_H_ */
>=20
> --
> Jani Nikula, Intel

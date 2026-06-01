Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEJmMFz3HGplUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:07:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A06190A5
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039C4112D2A;
	Mon,  1 Jun 2026 03:07:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSc/o52L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55D4112D29;
 Mon,  1 Jun 2026 03:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780283224; x=1811819224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i3XA6SheWSlk3NibTPW26Sdcz+qT0WUPB8fVkeX0Ic0=;
 b=OSc/o52LTvGStN0LNtvTute/JPH7INFo6gDl7TG4QcfGFiN2F04RfKbW
 6kQXUwVhg5flwWg2YspO9Z/c4s8RlVxq/P45zmoAmhOZbimjVrjm1WuVY
 kt9Mxj5wY2OXTeHL0MWXpXX4oMDI68uVjx3GWbahAC6SngJlTBL9eKHqF
 QknL2giOzPBm44femnOevVUEFAAP8G/SvdMobR3YYpd+iU0yLp6tw06uz
 BRhaLwt5uQwzzTBENapJ6M4bk+wHHoz8tc4Afb0M2pz/G71UVRcbE1TkK
 maZkjr7zrPuNNs6HqQE0PJ6h+PF7epSf6nP3HlYW0dbGZL/mcGzVv/ln+ g==;
X-CSE-ConnectionGUID: +1XDDxs/RJSYARi843IPqg==
X-CSE-MsgGUID: h5Lsvqv8T6awZkcjDpO8rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80766085"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80766085"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:07:03 -0700
X-CSE-ConnectionGUID: IjaSSle+R62KMrbGQu4xMQ==
X-CSE-MsgGUID: fjEQe2K9QpqIoGLHgRfc3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="247423999"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:07:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:07:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 20:07:02 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:07:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQ/lsC12RpNVsVwp8MzQQf6fRIf3rJkOhcRlWleDqA8etMnHLXKu58tUxil9Ep/GB1MEPLIHEvbhyCGrYpWidnjIT8V5j/lx7dFbfvKiT6s5kPXtJFVUGFFn4qlIzCzxoTRJgm1SVvbn9rx/3fVPQQ/6rc8VN2a3lJx6HsWKqiyUvtyDkApptHBY2LqoXUAQiF4NxCSoWGAysiKEFW4CSLRX5yyFY3tbrBvd3CKFY3qSGp1zyvNb8D9Y/RjkGGzjbyMXC+QJPFU0sXMBHhPqdezSb5x6m2HcdBVoAJQ+fNecJHC5hFFGeiMf5ymGaHmkyEX21Dop4PUAi24vXfOn1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i3XA6SheWSlk3NibTPW26Sdcz+qT0WUPB8fVkeX0Ic0=;
 b=iRjx7O8KmLpkEaEt3wl2C7ACuIit14DbB19ITWjKxlS2siWv8MhSStWZmMSJqv+SV9rlhagNrLBI9RJstKtouqpev6lGD4tI3fg1IOmcdFERY2fZ2lZMwY/mlCF0aDeibUzQUfAvie7DkfNB5eZPYiYHnyqul1Oe0reLmTO2KMUORiqpC6BoS+seZgsTDsIwThMrsjh4fHyoLJ/gmUqOjMV/qZEAEfnK+GJzyUWQAxLtNNjupzDN+8TlCzaQRPIrYKHIJEMToKY7sGFWRXyLOz+vqlcMKkvz+MxbTpuxuUFgB5TQdT+KaXInk4LwoFoIGacWREouaSF4U8eR6Zn89g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH9PR11MB924967.namprd11.prod.outlook.com
 (2603:10b6:510:3e8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 03:07:00 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 03:07:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 01/10] drm/i915/bios: search for VBT #57 by default
Thread-Topic: [PATCH v4 01/10] drm/i915/bios: search for VBT #57 by default
Thread-Index: AQHc76F2npzXnVEDFUCxdSa9EDYzvbYpB8LQ
Date: Mon, 1 Jun 2026 03:07:00 +0000
Message-ID: <DM3PPF208195D8D5CE7C57463E45466523FE3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-2-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH9PR11MB924967:EE_
x-ms-office365-filtering-correlation-id: 7c9df2fb-a748-422c-90d4-08debf8ad947
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: XcmjqVrwFvFsK7RmKxPWm0578D4o7lEaoPIP3xTPvJxcyzBKdVTpLvF0H5F6h0jClsKyOLf6o81wDEaneFuh1kzvlmcI1oo0eN9nTmlf8uR5g2aA1usNAvoZ+zgl/AN/RrtM89uR9gnjxKOua21TlfuS+9ygy6ezgLdbobkJddp6b9ryKtfAtSkNRAZE9Xju+FUTRjb8IZoRSbpO0XhatPEdmVGLCO5jcBQsK+ZCq8DBHRbru26oPEBC7eQ/Wc53vEabs64UYg+J7te7mhw/vVp8rdb5sobu6U4BkQ/AVTw08rXZdyP4DBV7PMLajdeDW2Dl+gDnS2MO7VGpG4T1fCU+al6P58JURQ50AN60Lxe8N78ufYTdHlXXK1kbS+Ul8v65fgNXf8je79YUqkfhrX5vILYYD/TVo9B+qt+eXNxX4A0pAjRggfQXymBJ405A0U4HSONWyPiYrgxKavJ3NP4Yg664CUZjh2YWDHQlmzrcDOw57otuggrKpiWycmgCvMWtqHlzKcCfh2V6OA+wbGTpDsDsE9tEW9qu4jzqX6yjLI4ilCSTYxg6Qyg+DVyrTj6aVCgxdiKmelgl/wu6reKKpWSuInjEFpHSkQq5HQVe9klPEbZCN2ZWVpKW6rONUx7RJIEUJeNW+I1Y51uhVvD4Xji03G4xGCJlxQT5Sv1L+BpclqtyZEIlf5qOrOjaqS/ivBQQkeK3nbziSkNvddJNPIpBm2T2aJ81pXONnCmDNMkv0E7XTaoNBcjJny+6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUs3VGNBSXdoMlNXOER1TnRKU2t3UE9CWTlpSDV0QkhJWE4wUUNCV3l2TFlh?=
 =?utf-8?B?VVVqUEorTlhHVnBST2RramRmSkdpOUphSjRGaFl0UGV5dDAzN3lCRytiQ3Y4?=
 =?utf-8?B?cFU5MU9yQkJTMEMvaFBQOVZHQmVrMVI2TjJhb0p5SjY3WDA5bXhGWjRUbkxH?=
 =?utf-8?B?eXVXL0lJTDRqSy9iallLbmcvVUZGTkhRckY1akFJV2ZLVHhLTWFlUzdqdTQz?=
 =?utf-8?B?WlFGWWNUS0M1Y1NSMUxyOGZhVHpoSllLbHdka2ZRWEpzT3FzTkZtVUFoQ3Q5?=
 =?utf-8?B?SzBTZzc1cWo2Y2ZGdGNtWlRyMEJUblJuWVloRWtpLzdJVS8yTW9FTWZWSDRD?=
 =?utf-8?B?SG5wbEZIRzRVUC9NWHN2Y1pBTVlmSmZXNnhQQVdEMUdGLzBXdjE3dzVRTkhQ?=
 =?utf-8?B?QW1id0xXLzNtSGFBMk1BT3V3dkJVUmRzNmVwSjZ4WUVXWk5zK3I4TW95ZkNx?=
 =?utf-8?B?Y2R1N2xaVlZEVGs3MTJ4MXBDV3RkMTRkZ24yaVNsSkk5aEJtbE9TWVRCNysw?=
 =?utf-8?B?dVNJTTl1cm9zb3JtQVNZM1N1Q2k1RUJGVW5RR2twemw2U1hxSnlYWURMNzdw?=
 =?utf-8?B?a2F3TVBtSWc4cTZSQkdOK1U1eVNXWUFYYWJRVy82Rlord3NYcmN6bjkzaU9N?=
 =?utf-8?B?VjlCVEpHT3M2WVlDVWNKMkdGNGxHU01Pcm9NRVRqcDVHamhPRUs1SXEzQnNk?=
 =?utf-8?B?SVFQbFVzNzhOaTBaSkFicXNuWWdIbC92VFNZcWt4UE42WXZGTDVYSE5XNVAx?=
 =?utf-8?B?Q3hxN3lKalE0cllnVVVXcWFNTlNsd0t3STRCZ3FKRzF2SFBEbzZKanJ6OVA4?=
 =?utf-8?B?S1g3Q3Zwa2sxcUhtTnRJMG9VVEU4NGQzK3pYaTRlbFZKUUQvS01CZU96VjBu?=
 =?utf-8?B?ZFNmb3o2eWxwckp1L295NlE4Z056UE8yLys3VjI0V2hUR2g3K254ZG1NczN5?=
 =?utf-8?B?MDBESlg4VlE0aEdGSklyZkxGTnE4ekVIMkFvMC8zUXZOOWdXZ2ZzMHhIempQ?=
 =?utf-8?B?K0c0Yk5GNllrR3daMVhoQjFVQUUwcUdybHQwZDAyR0tLVU1FS3VROFZvZ2RD?=
 =?utf-8?B?VldJQ2hsRGdpcTdid1ZaNjFSY0k2K2lYSjFnMnpQNVFwaWZoV3pCeG1oUlpi?=
 =?utf-8?B?Ris5a3hDRWJBdEt4ZzBkWlBYUCtzWjZRMnJvdXpHcnN1L1lNdE9lUWRFcFln?=
 =?utf-8?B?YkJ2Yy82SjNKMWFTSEYrWnlHcldNMDR6WjFla0o4SmFjTno2K3k3MWV3WXpj?=
 =?utf-8?B?V3lUdXNvckJrSGYyanZaOHVSa1Y0YmxrYlJYSTk5THNmTXd6aHN3YktCUk4y?=
 =?utf-8?B?aXhVM3ZDQmxyYzZndG5HWjZJbDdudmhEdzQrRXNjOTVVZHFDMGJLcnF1THFG?=
 =?utf-8?B?UTcwa3FpSG12RTQ2VmxjZU9PZUdMRWdDZDNWeitFblUyMXExN1MvcEFhbmUv?=
 =?utf-8?B?allzWlMyNmdncTY1eC9ZRVNSOUVpQndYd1EybGdvMjBsWGhmVlErM1h1bThK?=
 =?utf-8?B?RVphTEtrM3lSU1BCbko2RU45V2dEWm13SEZpQVBLWUg4Z2RvUy92REtnVDIy?=
 =?utf-8?B?RitIYUkwWlhVOWZkUGRsVGxyVGsrM1p0RXl2eTZIczVwRTN5clFTdjZYN0lu?=
 =?utf-8?B?VktiNmJoeVFWZ3RaN3dtVGZjNEhMeWo5UXRzR2JkdUs2QXdnbWwxNUhhS2V4?=
 =?utf-8?B?TlpQTTVpQVZmQkRKYVRTQ0JsQWZhaHNTaFBxSkQvSnhnU2tSZEN4dnAveGtX?=
 =?utf-8?B?M0dqazJ2blhOcjEzOFdCNHdqbTZGakpIaFdMU1lXb0VOZ2JiYTdqS1g1dXZn?=
 =?utf-8?B?elZ0Q2dSaG5tSEpMdk1VZVdLcnRad09mcGFFUHI1TGsrV2RQSWdTdmtHVk1B?=
 =?utf-8?B?MXVXelJVYXRmUXRpSVlmVEtXQ2F2SHdTWVFpNzdXYjFkejJ2empWVTMvK1lW?=
 =?utf-8?B?aWJ6Tkc3QjZ5VHkzeDJLWGxuM2hnN2lPMERBUldHb0gxRVhXakgyOVNya09O?=
 =?utf-8?B?VGVNalRHTmk5N3FpM0VCWnBINmhzUmZtTWZhMFBwVXk4dGpGQTQ3cmZiN3RW?=
 =?utf-8?B?MVk2RER4aDNvR2VBb0hqcmRPZGhqSnFmcnhSVGdoVDdpS0R1eU1CLzN3d3lv?=
 =?utf-8?B?Z3FZcTJoM1BVM01TRHlXNWtCN0RreDdtRTV4S0ppVFRUTkRyazZTOGZudVFP?=
 =?utf-8?B?SzRNU0NyelBsRmttcXVuVml0RnpCSTNEUzN5ZXFNQzhKenRYekdnTXZVZDgx?=
 =?utf-8?B?OXFrQ1o1U1RMY0RCQUFucjVwK3l5V3FkVm1GSnV1elppU3VsYlQ3U1FRV0Vy?=
 =?utf-8?B?dHBRTm1ib3RXcnNFWTcwc1REZHBRblpreEJlK3lpVFpHN2dwUktFdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XdCRySvWLBlXYNgrkNsm5rIROs6A2L/S8R7X4Ur1a41rro5Pfvg2hnF4ke+6SvShashA3XHD2XVwVl1MRPcmILpPe9ew2TGMkT9pEY1Q406wnlNu/ywZ7ixEhjtM2lPI5erJ01cheSKP7P8ECxQOraknBL/ThapnZS3h23nSHO3aFxQn+T7peYqpmugLXuV5oWsTGRUs8TIrUIX+smWgmvFlMQY4wrE45utzUwhwFibtZW558ybJ00676yBGH242DDIYMRKzEaAOKOwNtgn7D4wWGUR5zoQN282m2aNSI4C3Ovz3/zpkOLy6lBD8dBAYAFaZnJb/D512xdIJyeZN5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c9df2fb-a748-422c-90d4-08debf8ad947
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 03:07:00.4616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yM6nvPMBkwgkj1Qk6uVjoy/SBvQAQp1qsRHsjfbRkSwDj9mS/z08JXs//Sq+/31nYW26slk3Q54fQhR/x4yGJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR11MB924967
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D5A06190A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDEvMTBdIGRybS9pOTE1L2Jpb3M6IHNlYXJjaCBmb3IgVkJU
ICM1NyBieSBkZWZhdWx0DQo+IA0KPiBTdGFydCBzZWFyY2hpbmcgZm9yIFZzd2luZyAvIFByZWVt
cGhhc2lzIE92ZXJyaWRlIEJsb2NrIGR1cmluZyBWQlQgcGFyc2luZyBhdA0KPiBpbml0X2JkYl9i
bG9ja3MoKS4NCj4gDQo+IENoZWNrIGZvciBmYWlsdXJlIHNpbmNlIHByZS1JQ0wgR09QcyBkbyBu
b3QgY29udGFpbiB0aGUgYmxvY2suIENoZWNrIGFsc28gaWYNCj4gVkJUIHZlcnNpb24gaXMgYXBw
cm9wcmlhdGVseSB1cC10by1kYXRlLg0KPiANCj4gSXNzdWUgYSBkZWJ1ZyBtZXNzYWdlIHdoZW4g
cG9ydCByZXF1ZXN0cyB0byBvdmVycmlkZSBWUy9QRSBhbmQgcGFyc2luZyBWQlQNCj4gIzU3IGZv
ciB0aGUgcGxhdGZvcm0gaGFzIG5vdCB5ZXQgYmVlbiBpbXBsZW1lbnRlZC4NCj4gDQo+IEJzcGVj
OiAzMjA2Mw0KDQpUaGlzIGJlbG9uZ3MgaW4gdGhlIHRyYWlsZXIgb2YgY29tbWl0IG1lc3NhZ2Ug
cmlnaHQgYWJvdmUgdGhlIFNpZ25lZC1vZmYtYnkgd2l0aCBub3QgbmV3IGxpbmUgaW4gYmV0d2Vl
bg0KDQpXaXRoIHRoYXQgZml4ZWQNCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiB2My0+djQNCj4gLSBhZGQgQnNwZWMgKFN1
cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIw
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+IGluZGV4IGI2ZmU4N2MyOWFhNy4uNDIwYjA5YjRkMDFlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjAwLDYgKzIw
MCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgew0KPiAgCSAgLm1pbl9zaXplID0gc2l6ZW9mKHN0
cnVjdCBiZGJfbWlwaV9zZXF1ZW5jZSkgfSwNCj4gIAl7IC5zZWN0aW9uX2lkID0gQkRCX0NPTVBS
RVNTSU9OX1BBUkFNRVRFUlMsDQo+ICAJICAubWluX3NpemUgPSBzaXplb2Yoc3RydWN0IGJkYl9j
b21wcmVzc2lvbl9wYXJhbWV0ZXJzKSwgfSwNCj4gKwl7IC5zZWN0aW9uX2lkID0gQkRCX1ZTV0lO
R19QUkVFTVBILA0KPiArCSAgLm1pbl9zaXplID0gc2l6ZW9mKHN0cnVjdCBiZGJfdnN3aW5nX3By
ZWVtcGgpLCB9LA0KPiAgCXsgLnNlY3Rpb25faWQgPSBCREJfR0VORVJJQ19EVEQsDQo+ICAJICAu
bWluX3NpemUgPSBzaXplb2Yoc3RydWN0IGJkYl9nZW5lcmljX2R0ZCksIH0sICB9OyBAQCAtMjE4
Myw2DQo+ICsyMTg1LDIzIEBAIHBhcnNlX2NvbXByZXNzaW9uX3BhcmFtZXRlcnMoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ICAJfQ0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkDQo+
ICtwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSkgew0KPiArCWNvbnN0IHN0cnVjdCBiZGJfdnN3aW5nX3ByZWVtcGggKmJsb2NrOw0KPiAr
DQo+ICsJaWYgKGRpc3BsYXktPnZidC52ZXJzaW9uIDwgMjE4KQ0KPiArCQlyZXR1cm47DQo+ICsN
Cj4gKwlibG9jayA9IGJkYl9maW5kX3NlY3Rpb24oZGlzcGxheSwgQkRCX1ZTV0lOR19QUkVFTVBI
KTsNCj4gKw0KPiArCS8qIHByZS1JQ0wgR09QcyBkb24ndCBoYXZlIFZCVCAjNTcgKi8NCj4gKwlp
ZiAoIWJsb2NrKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sICJ2YWxpZCBWUy9QRS1PIHJlcXVlc3QgYnV0IG5vdCB5ZXQNCj4gK3N1cHBvcnRlZFxuIik7
IH0NCj4gKw0KPiAgc3RhdGljIHU4IHRyYW5zbGF0ZV9pYm9vc3Qoc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXksIHU4IHZhbCkgIHsNCj4gIAlzdGF0aWMgY29uc3QgdTggbWFwcGluZ1tdID0g
eyAxLCAzLCA3IH07IC8qIFNlZSBWQlQgc3BlYyAqLyBAQCAtMzI3NCw2DQo+ICszMjkzLDcgQEAg
dm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IA0K
PiAgCS8qIERlcGVuZHMgb24gY2hpbGQgZGV2aWNlIGxpc3QgKi8NCj4gIAlwYXJzZV9jb21wcmVz
c2lvbl9wYXJhbWV0ZXJzKGRpc3BsYXkpOw0KPiArCXBhcnNlX3Zzd2luZ19wcmVlbXBoX292ZXJy
aWRlKGRpc3BsYXkpOw0KPiANCj4gIG91dDoNCj4gIAlpZiAoIXZidCkgew0KPiAtLQ0KPiAyLjQ1
LjINCg0K

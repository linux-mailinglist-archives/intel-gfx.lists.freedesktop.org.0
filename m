Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPt9GloQgWkFEAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:00:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9658DD15F4
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050F610E155;
	Mon,  2 Feb 2026 21:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KipNrUUi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D362310E065;
 Mon,  2 Feb 2026 21:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770066005; x=1801602005;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=snzz3+aFWnBRQg6E6tRj+g56syQXju7rIpp5Xr+v21g=;
 b=KipNrUUiCsiMWciENJFFqfhx1XaxtntsSyiuJjlj+Nqzs4lWGBluLFpd
 Rb+TnEAQpAwqxj8YdOG1eEfZinuZJ7mP9ZDJthBEVDPLTurjeg4O59QNb
 q9cmgvqjGQ72PoNkcROV797D5G2ZyZUy2uw8onW2fSM2xl+gs01y8DHVO
 t9OJB4poUAUuHqCSWvG66N1Tz3iSGclpoftHuMoTJHwx6HN6LtlqgcDNE
 yJIklMCrNvILZz/LxQ2pOiRGe8Gt5CjaM9ZeTdcX2Uw0sApU2VsZrqrCK
 gGUk7vQkGm5EwvtavVUso+kKAdh5WygHKqhA+bG/VUGq3Trt2vtV2Wyb7 Q==;
X-CSE-ConnectionGUID: 8sb0Dvc3TrGis4xjOEFaPw==
X-CSE-MsgGUID: ROZGAHDCRxCMY03F33Luxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81863047"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="81863047"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:00:04 -0800
X-CSE-ConnectionGUID: Sg+NWZ8GRxCAeCIbThTwJA==
X-CSE-MsgGUID: VjzeIWuvRm2cSxbWb3HgnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214157304"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:00:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:00:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 13:00:03 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:00:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UByP12LrP0bCvsu3UROjOCEkpQCFyjyHAa1dqeBo2l808fGZBruNeBBaGjC7nWeVMGj1QV3zgyQWm5v/fqGYasmdwQ1/w8PDwCIHjGV0sK/i+46TCoiJjhYJLa6DGAYo7oUM0fU40Hv48R0qwzHHJjhGSP3nOIMK1IfDcbMeQkQl8/Gkz1eZhUXU7khFxL/PbFYcmtKP7sD6SBFCq493Uh445GU7Ul5kk/rA+3hncPKu4Jp8WGotYi9Fhx67MhlLFNG+AnAy7YLBhxYZgWhMyN/mB712Sgnpr0bHSg27uB4MmmQmibB5BLcG1MBTGfDXuOKgBCU7r8ecfMsMvsIA0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9M5qaKqYAZKb5I/qNYomfQsmR3TZHZTvEPv9hC67BE=;
 b=nVfPTbahGzDyTWGzu6LfWBYxkpw8LhddQKl4YMywUlJGmMqwoRLSMi7/Uryrqrrn0gDogg1ZqmAhKlykL46MlxW1tMw6Hp26J5tksOvtZXhaDoWCYXYm87EbHRekHVrziFmXlDONgRvTm3BgC9EEabTtAPnAEkfRt2897b8Gbj7keJumCibGL8oIBeG27w+ZM2clcD+3L6JmpqQSiTA9XWJre+IlBxRRYCCsdRoAEOL5SLxFW942ti+VtBI0b2oHPr/WeqTL0BYvXseuD2zSgCePtVlTfioTGhN1L4xF6F13+bHknNBUbfs3343MIa+Qx5sGjloShF9uKVHo4LscTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 20:59:58 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 20:59:58 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 09/21] drm/i915/display: Enable interrupts earlier on
 PREEMPT_RT
Thread-Topic: [i915-rt v5 09/21] drm/i915/display: Enable interrupts earlier
 on PREEMPT_RT
Thread-Index: AQHcit1n4tUkeJkJxEyzqAaZi8ZYxrVv9X9Q
Date: Mon, 2 Feb 2026 20:59:58 +0000
Message-ID: <DM4PR11MB6360829C8D2FD6FB19C054C5F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-10-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-10-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: 02402f57-7b56-4c20-31f8-08de629e0677
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?J7OTZNmxRVsmVkHSGlPUKrZvGtbSUG2pJ0CFaTImbWj5ZQdjIGTSSAr83SPX?=
 =?us-ascii?Q?ndjLgIzWoO9N7MkkngF94NlGqwlykS8bO24/AMP0YlujO7o+QVvpL9XvGz65?=
 =?us-ascii?Q?haLgiLRwRFPm/vajMVzTc27tye6hwK0wTr2diQuuX/faafq61Z9fTmnw9jWQ?=
 =?us-ascii?Q?182QNIGNmVYPng4bUnMOemlVuTZExwar0Ye7tNDwnsxxLNKMwKWirxjOlPGc?=
 =?us-ascii?Q?ghZ1OkfT7qTl/yU/jrXLkTDHh6lSacBRk8Q53ecg59eBDMzki1bY29QZtc+t?=
 =?us-ascii?Q?tbo8u6cClRVhjRvttvWNbgEiT3U/cdR8oeEPrZ3wC0/ge5QM2h8+ev1y126C?=
 =?us-ascii?Q?elaaK9VpPFU4LwVInj+EAdP1KuFJXPYx5n/GaNDnsvkTHNOQXsYwdEdNmZZ7?=
 =?us-ascii?Q?Y87DhiX+fnzJbqZwsSN1vEDKOn6nv66/TOKCQnmiZLvS2TOPDoQ+9BLNBCxs?=
 =?us-ascii?Q?vADoMMkzXmiFaNRXhtZCz+Gyly4oz9rT94b1jurMFpT6dhiTJIfthJ9GAoKL?=
 =?us-ascii?Q?vSPpszx3/p56YtRLMmHcZOSOJLq3iRvVlapmqv7EyBK8w3TUkRM3qQ8VE44S?=
 =?us-ascii?Q?sFVEz4dgdw+IhAyxy28ter328IG2IwgvpproVShBydi95qPvpKF5TQmivy06?=
 =?us-ascii?Q?cMiCo8obghavGUBFBw9s0FSjNXbL8Y4ICJvpxSLGPxUu0S475FUqd3t4JBHR?=
 =?us-ascii?Q?dYy+J1wqiHs0lV8R61YVmi4hXLQUhZ0G3E2yzT0ciVdzVYAlm8P+N5Pwlxa0?=
 =?us-ascii?Q?HRHUEjTd1bAfM57jjX8db2+pd7azak2JCc2EBM58q9Yuc7mvl6TG9Po374oG?=
 =?us-ascii?Q?lt85QbfBIhnNTaURQnA52Ara0MKMyYmNhsaY+3ua2/5S73xesCI80uFIgcK2?=
 =?us-ascii?Q?OQ+A7aSrtV6VuBg/U/p58dtmYQmQGOaO+TrESuO2KFdOU5TfDwVO6uc/aKU/?=
 =?us-ascii?Q?P4KKF4i/5SO9YsmMOx7z+guFCloshHMs6cZcb/Vc/e3lreFImFyDo30Fp9Hn?=
 =?us-ascii?Q?dSiqzSn6UWB+GrAQbtIOjNNWKz/Rhe4VJ7fFevQJ9/6DDqnaMxePfGebetOx?=
 =?us-ascii?Q?z52Is4n4Grcif/qx+Lm7KBwnrW13hXqmoCEBP2jIgwEygNvZPW/rjbvIb0kI?=
 =?us-ascii?Q?cRnH3nWKCvZc6Abjj+ahNmhsYfZQiKt0oIKgWbCcdyagVxdf62k4dod41aXv?=
 =?us-ascii?Q?VslX/HFLmHjFKRz5w1+dXmFHAxVWNoL+Wo7mxmZOUW9mg2W/PVX5N8Mti1fT?=
 =?us-ascii?Q?wrRV1TRv4rtkeheKm7lLE27eNyo2RmwmhatNla9T1Dv/kr/qzEkqFgQbUEqH?=
 =?us-ascii?Q?nrjEc+Vk+ifs42Im4qg3A/pVRS1sHj0dFlCTbKpLLSkdCLvxQhi7nV/aAVGz?=
 =?us-ascii?Q?4h1bpYonbEg43tTxOnwR1mEUUtC2S5YFZ2mL+yt+TPfi9pfaUIn/DOTnjZqW?=
 =?us-ascii?Q?ZBqPAqUowT3hZ1yibfODWFTZbnCSEeXnqYW2XshweCo0wnO8WMFALAFzTisK?=
 =?us-ascii?Q?zLatK5igqkT+5CrotChtDKCyfBdsxqmE0w0n0jL31NQlSn4NS5exES1TJLoQ?=
 =?us-ascii?Q?ocMDYHaD3ZSyGoW44hHh2gKjeeAdwyZXGP1zHhQxUpxYgbTfFCzLE/WEIUCk?=
 =?us-ascii?Q?K3ZFb388BRaSwdfMhZYM0nI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dORuKeElt+ld5u/55ksXSHjDgtFaJ5icXaVDz8iOSuOWV+u1tzd2AQaW7YTh?=
 =?us-ascii?Q?38w5LJ4mSw8dpq2psvadkUo/wxpJGw6eMQYtOpk0e3iy0t2ESKnyLMKCwxUL?=
 =?us-ascii?Q?nR2JFT98BQTxpLjpnLah0ErfIpIs6R1lCZB3Av/bes+Os7qkFMloCkc+J8cy?=
 =?us-ascii?Q?m8dPucU2ZDKEosKbvwERXU0FhTIOXDYclIQ9VtNvrqSbiIfKc7kgD3qtuCTf?=
 =?us-ascii?Q?BN5kS7QksOfi0eB5VdM2fMtz3Yjjrz7GuoIlcTZ26eL9UcTZTEUqpADG/FnC?=
 =?us-ascii?Q?7GZJbpI7pkFbMXbfIScF3fZu1w6sV6fd5ve5z9XKcn2G0CeYZ432pfFpWqb0?=
 =?us-ascii?Q?4HaiqcGqFyLtDhr9RMaBM51DhXCoyFPrPtcSy+e7Jj1C7BHb1bcMBITqFroR?=
 =?us-ascii?Q?3d5Y9Df0Y1M4iI0bkC5pvEb4TtGieu9EGlRocgm+2nPkn9V2ej1tjmnAKE0L?=
 =?us-ascii?Q?0luEjR5ksVQnMdn+Li1AzzvBrF+wNuf+oWfU/G1YXPymUzv2hrOtQu/IjBEV?=
 =?us-ascii?Q?SuXkhq1Vtv4urpqqxMsqMLjWNCI0gWMoyJQhoNxJKW0289S7zoefqcLNcyH7?=
 =?us-ascii?Q?l8mzVoNQXMUTUneEIsXVdH59TLkcfLt44EFKn2b8bmXvNmHRA30dPeSz9BTB?=
 =?us-ascii?Q?bw68FffzSfp/0YEip/WRR2tYvjq33dl2b2xzjHgqzJylNNZYpHz1Sn8qTzVr?=
 =?us-ascii?Q?NfJQ0pE+FuLjgVc5wwMurs0h22chugnhcI58gxdy57R4CqJ4CkGiXYLqMnjG?=
 =?us-ascii?Q?HyhMbaKrICRaghv+zAE6m4wQzIrPpbIogQORcHk5MoH0Y2OXLvS6fgOUl2nW?=
 =?us-ascii?Q?/l3n5DuNfI+woYJzg+8Nnsm3VkZIwf+/arG16xF4fatvk5C1WmGudZwCFNdT?=
 =?us-ascii?Q?EQE2P5WEZTlvQesqk0HqTw9tnTPLUSiVlHgfUNeweb85cQEPudnEGOVTMwZt?=
 =?us-ascii?Q?8a6qq2vq6M+FIpp4kQlFJxmYNWtbHwjOzJ8uutZYvDY2Kpb/Bx5MkuCnVRfN?=
 =?us-ascii?Q?RXLtUCBvNayneca/HMhsOLs2hS4Ql2P0blpf4rFI42S5ILFJQa2n1YCJqYuk?=
 =?us-ascii?Q?y4ZJeESpdvMWzSxEj0dKGKXuVGWk17/zVDyWlqXsW9/eHaP9NKAHIzCyq+Nu?=
 =?us-ascii?Q?SSVyyf3J54Cc+z6oC1GF9Cgv1T/kPrAfz6g/haIe4WrnBzCCwqmnu4c3mPn0?=
 =?us-ascii?Q?DdMlaf9v/xaNiE/qoFK7d65z0E4X5hd7LShW0AT0jFPaQvtGnbm3lV3629RU?=
 =?us-ascii?Q?63YXG+E8a8SlIBm+/73xkiWBurHD5Hi7w+civZyDQ6tDM/LnnH1QJecf4iru?=
 =?us-ascii?Q?qe2hU6jZJ4SV6txluhjgCtKpLsfi/haCKTuNEsBLmXgL26tlfcAaXxjTqiOb?=
 =?us-ascii?Q?g4XY8osV5vHjXKeOuthpruDw7hc9A0Hxq/emn1dhBISwAtytEeBxtjOsS/9d?=
 =?us-ascii?Q?a2fjsex9Of35orQmdqEGnt8bJmOJdjFVJxSbTybSDEwQOM6B0MwzwJJ9Eh0t?=
 =?us-ascii?Q?bORYrnlCqEMzEawclbPazhdELi41vsPf58IPakXK8Q24JgolQSiG464/rifW?=
 =?us-ascii?Q?smQgA3gcDp8ujVU39IvEwE9g226i9qrk8agLL6b1zkqqKUWvyow1LumC1AaH?=
 =?us-ascii?Q?1RUgItKZ7Wc1r9ndSFJZQ90DVkQ+XhlSE9GjcpTXaeW+mtatBAuax0XVEJg8?=
 =?us-ascii?Q?IenwQkfiL0k2b73v/Emm0p8TzyxZ01jAhN/EFxu19sDoe+nV/JIscEckxFsV?=
 =?us-ascii?Q?aqKmP+Oecw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02402f57-7b56-4c20-31f8-08de629e0677
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 20:59:58.5879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P7VXM166RAWAHtL8GzRGHpndUKs/+MRNCjvHUnvDFzH+ApWt/F/J3It9akdDili9kQsYlUqsz2HhnfSug788Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9658DD15F4
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 09/21] drm/i915/display: Enable interrupts earlier o=
n
> PREEMPT_RT
>=20
> The last part of the vblank evasion is about updating bookkeeping, not
> programming hardware registers.
>=20
> The interrupts cannot stay disabled here on PREEMPT_RT since the spinlock=
s get
> converted to mutexes.
>=20
> There's still a small race in VRR that needs to be addressed, and in the =
other
> worst case there is a delay of a vblank completion if the vblank is fired=
 and we
> schedule on the next vblank, this needs to be addressed separately.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index cb31c9c1c2525..84ab737c50918 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -703,6 +703,14 @@ void intel_pipe_update_end(struct intel_atomic_state
> *state,
>  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
>  		icl_dsi_frame_update(new_crtc_state);
>=20
> +#if IS_ENABLED(CONFIG_PREEMPT_RT)
> +	/*
> +	 * Timing sensitive register writing completed, non-deterministic
> +	 * locking from here on out.
> +	 */
> +	local_irq_enable();
> +#endif
> +
>  	/* We're still in the vblank-evade critical section, this can't race.
>  	 * Would be slightly nice to just grab the vblank count and arm the
>  	 * event outside of the critical section - the spinlock might spin for =
a @@ -
> 750,7 +758,9 @@ void intel_pipe_update_end(struct intel_atomic_state *sta=
te,
>  	if (!state->base.legacy_cursor_update)
>  		intel_vrr_send_push(NULL, new_crtc_state);

Yeah, we need to check for the VRR case as this will not work out for VRR.
For other non VRR case as well, potential of missed frame is there, but we =
can check on
CI with some stress test as to how much it impacts practically. Maybe limit=
 to
Non VRR in first phase and then plan for VRR enabling on RT as separate cha=
nge.

Regards,
Uma Shankar

> +#if !IS_ENABLED(CONFIG_PREEMPT_RT)
>  	local_irq_enable();
> +#endif
>=20
>  	if (intel_parent_vgpu_active(display))
>  		goto out;
> --
> 2.51.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BspBLjuC2pQRQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:01:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C032B57752D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129E310E360;
	Tue, 19 May 2026 05:01:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5ofT41p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19A210E121;
 Tue, 19 May 2026 05:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779166900; x=1810702900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mGbmsAEDURZGtigFfBTdxKZWx1KjCaJLngnTGye3vZ8=;
 b=j5ofT41pEq6UGoBYuLvCsxHEayXLYWtqYtpOPK7+8e+ZcJq6fWqe4Jac
 +u7pOexG12IQ04qXqwWTY4ZYjsMPm5sXGvPEF8SFFs+79+5NNacQpQoZB
 j9n4gUG9So/frSG9yPuYdB2RR9FDYgkZsP1NE5fxm8ZaQ4NkOutDNfRcv
 rLeKICLU2XhxhJOaGQLINxfBdNi64CfokQqPZRE3wn2u4e2cFK//3ocI6
 DuZ8AJusRT25SAVcu6ikdr+yj+ZnCcOi2iEsuT6lqwadn/ZhUha37T6jv
 sVIxBKOncW2avmpssv1zfIHIvhDkIJgE3H3l057edJDcHJZEZ8OoxKhkA g==;
X-CSE-ConnectionGUID: 89YLL5gFSayEQZbadHQdTw==
X-CSE-MsgGUID: R6v/STdPTjKyK/DRaJ+U3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="90341160"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="90341160"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:01:40 -0700
X-CSE-ConnectionGUID: uCo46BM9Qdiu8gAKxCMwJw==
X-CSE-MsgGUID: RHsULaK2TqubAf7iuEtoPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="277759769"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:01:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:01:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:01:38 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:01:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D9aS6TUwq5U05JBIEq1gyrU35n5cjfb4wIdVWyvRChSYef/3CIUCNMfuwH9H17r32i0ULxAAa+WXl/nslJ0s0THd+EeCQW2vSmPf+3FOHuPstivBg+GraELAPGiwSK/jX1TWLob+tySVpYIcXUpGvm9QpT3ib1qSWjvAY5s4MflUTv941WAQFP9P1F9o09P3LE56G1NKXFtFSD77adPs6MjTErtxjSNJsGAUgVNxVOgGRmOOEw1efbbomzlERmAirx5Efeoazjwo+1qYprBiKdivLbFup3j9ybNBPFHqjGCYc2Ag7wHDEzVM3ybI0eA2tOVZ5yp9QG/Eeuu5yAmwrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mGbmsAEDURZGtigFfBTdxKZWx1KjCaJLngnTGye3vZ8=;
 b=Lyr9GD4UDln26O7gWulo7Lt+efvZ5txA43YNHBSS+SPMsNu6uQ0zmf5grQxmsz6v/Duzthrm3kAHoOvAPJImSJtF57PrvdUTy4W4ZIazedxuaDlApiepToalPrI4Wj2wfGjKcqbUWrvA5Dlla5XHwanLfQEKZop9AMLmliCkOddzQDAJqoJKbiwMdxdqH+QltR6svga6IZyEqvYBGdv0wndZoiBh+kti+FzEQ31JiqBRccjX4dixdriig333dYFOlbGbGHk9vyvM/8iVUDC7uL/DcXla6XKDoTTfFR2tqDiqMcAOafTniJHM6kX2YtXRmlKzRnbNInFDsuFzXrHlVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB7629.namprd11.prod.outlook.com
 (2603:10b6:8:146::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 05:01:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:01:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 05/31] drm/i915/bios: de/allocate VS/PE-O buffers'
 matrix
Thread-Topic: [PATCH v3 05/31] drm/i915/bios: de/allocate VS/PE-O buffers'
 matrix
Thread-Index: AQHc3cFbhPksHD/jnUiXF3nbKT+uqrYU2ldA
Date: Tue, 19 May 2026 05:01:30 +0000
Message-ID: <DM3PPF208195D8DD6D75704D06C0DFF0D3FE3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-6-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-6-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB7629:EE_
x-ms-office365-filtering-correlation-id: 8fb0c473-4745-4c17-f634-08deb563b0d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003|4143699003|11063799003|3023799003|38070700021;
x-microsoft-antispam-message-info: bOu2gp52ow2+XTg5VVzX65Fx7Je10DUNpgzZOWJkhT06+8JuYM+1rRLhXHjH9UuW3zKFyVokMqxqRdJFJFGKiHp234R0sN1g2YxMpjyHD4k3h5ijBxmuspkTsa/q3zAwCLiu7cneeJwDbpygUcA2dNX7ddnoLE4nqnm6QC19XzAMGQaYgby2yJxD+5E+QF7hDBDvIE10104kHlzRtQeI4+9UdMqczVF/AldEiYz/MV0rextS7vffUFlQH9rX3nL+3t58DCdModMmP6u2jxRFrHlN8GeclsKPS18tyG0VD2oTediqd+RO9c1QDZ+7CzdspXur/9o45pkW/mcaXU9QwTGC1a4moXGjnJF18Cff71k+O4JanqLu2zetcBk9gFqnSEIXkz4VJXOPzotKn3E0/X7ngLPzfidB19zZhmn6xex0e+m6UjnaIIDWBr15MDOZErGRoWnssKZu49PY7U+s/O3fB/MLY7CiAZM7tVjhMh39UvpE1dLrb8m5vU8u+FQ7fifcZGW6UPbrM4c6muStEBrk7HDqFbDrNTREz4zwnjxTvScFdhSkQZoWz50r9o2xRKLMG+4i6yWjm8HRw2s1b/3XqPwHukPJN5y+bwfLYpXO9x1MApI70w+C8zTS2b30lao2jXk4GEqRqtvEjMpj9/zJaQofPz2UdvnN1qJkfc2zMGz8/+jxaqzmMFKWDc8QglOhsceRe5dO/qFXGOZXDeQbY7+r79jLE9vBdNn6F4MsUS0ERzLtAOgItJZwsr5m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003)(4143699003)(11063799003)(3023799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlNNRDl0czlHTXJiM0tnbFQ2bS9GYlBheUJ4eXpiMTh4RE0vTWM4MzVXUXN0?=
 =?utf-8?B?UzdQWHVjTjJEdXZDUmRuQzh1c3NGK3lYa3RZQndTVTdpT0pGSCtLS0RzbEdN?=
 =?utf-8?B?TDFaZ0tTTXkxVmFpVzMrcUFEOXdMTDdEaTZvaXBvQXA4NzhpOFk5UWwwOWl1?=
 =?utf-8?B?eUpBTnFBMlNZd2FkTHMvVmd5TGxDNGRXRXJxalNlTDBNZVFIRkJNZWtiTFF5?=
 =?utf-8?B?dXFWM0dDTmVZdmR4VVAwdmZNSE9JTmljT250VW1scGhzTE9ZYUdpMGhDdGJM?=
 =?utf-8?B?VHhhdWxlMCs0d2U1b2JOV3U5VCtQb1VoSTVQTVFUUEtDZEt5NHRLaVhtOXFL?=
 =?utf-8?B?eUtBbzVlcEpFaUZET0lWUlM4S0UvcXkyUnVhVVorVlRLWG5sOVBwNVdlbmNa?=
 =?utf-8?B?ZnRJSC9yV3FUR2F5UmdQOHI3cmFBVklmdFRjc3RxVEFMUU12R3MwVUFCU1Bj?=
 =?utf-8?B?ZnlBSWIyTkZoaC9Hck1NZDZnbFE2ajlyMzYrRkZBMkhIbVdaamF1Zjg0TDNx?=
 =?utf-8?B?djNZaldrYTB1NU9acDluaHh2WHBRZVllcHRQQ2M0MU9OLzgybHQ5ZWJFRGxq?=
 =?utf-8?B?c3BHVDU3OVFhWmhmMHEwei82Q2luWFR5Z1dLaVBHNTlIUU80TVR0cFZIMHhh?=
 =?utf-8?B?ZytaQ0hROXRvUGRIZ1Y3cU1rUEEvWFZKQzBjSmxRUHgxOGQ5RW5xbGdselJL?=
 =?utf-8?B?RGpkY3JTcUtOLyt5QWdjRlJyb3RrczBJVUNlaTZncjE0bFJCTi84VHRMd3Zl?=
 =?utf-8?B?MWpTSnhia0FjRWpoUEx2eTBnWTVadTd6SFl0d0NCV0ZLSHJMaDlFSE9scWdV?=
 =?utf-8?B?L3MxcU1IV2hJWFEzbFJheFdaNmR2Mml2TTFybTByVThFS2pDL0ZSTUk3V1lo?=
 =?utf-8?B?bm1SNnYrS0tIc1V1Y2pwUm1SSnBUOVU3VWhPT05yV3dobUM0cFhVODkvTDRD?=
 =?utf-8?B?clovcllBOUJLR3VkMFJxczdSdzdNT1NTbmR1VWh1NldXdkhtRUEzT2lwdmlj?=
 =?utf-8?B?bEJiN1Btaml1bWhPSGJRSkFLVUQ4by9FRW45Zjc4a2JFdmpjc0FBQ3RnaytL?=
 =?utf-8?B?aVhIRWdJWTlGMWgyS0hGRHlkMEdvOVI1Q2xlblc3YkhHTElYZjJWZk1Samx3?=
 =?utf-8?B?ZnJzazMyYkxUVmRSdjVCK1A2QlRaZjBTVXBMMWRFdW9JZlkwWkxUUU1qWjJq?=
 =?utf-8?B?dWlLZ2sxYm55TXlMWFNlUVd4VThETHQxNDAza0llRDZoOFBrWnJpbis5QlM0?=
 =?utf-8?B?SmJsNWZpKzVIY1l6eXQ5bStnc3VCYU83MGtod3V5ZFA3MW9QRW5kZXpXNWxo?=
 =?utf-8?B?SXJmMk5IUy9JZXc1MGlxaktiSDBuYTZOQUxYekNTQllkZzduOXJSeVd5WWtG?=
 =?utf-8?B?c2E0aE5tRkszSEVpWFRlVnFDY1VUTHBZL1JmZ2tLb3RxR0xGQitQOTFuckhJ?=
 =?utf-8?B?NDdHUlBWcFpzeVRSVXBlRitZUUdsdnJ5NXh4WnRrNnVSY0tUZnl2ME5Vb1U5?=
 =?utf-8?B?UitRVWVNakZscEI3eTNjM0JPVXJsOXVMd3hIeXk1MnlRMEVUR3BUWkdXRHR0?=
 =?utf-8?B?czFFMzlUeVBYZmh1aUpTTDVPNTFtZHRlUEN3SW1XUVNwL3M5akdBcEQvUDJv?=
 =?utf-8?B?Z2hyU1ZCT2s2SDNvbVNhQjEzMElyOGkzUEtaaFZ3bnBZMU9wcmxhTytiSjhs?=
 =?utf-8?B?V2V4Ymx0RGd4aUgwekRLajVlYUF5ckRZQVBWVXJCajBUTU9RRFJaYTYxdzFV?=
 =?utf-8?B?dy9ublc4RnduY1huU1YzbExzcS8vbWZhSk1MZDl5OE51dEVIVUVRaUZXQzd6?=
 =?utf-8?B?L1lZMVlMOHZPMkZOK1hwaWgrRHZESW85aGV0SnBmem81Vkx0ODgxK0JTSThJ?=
 =?utf-8?B?WUdrR3JZQnZEbDZtSlE0Z1E0a3lRNjJEOFVUVTV3c0tWUjdEaklBZkdFL3I2?=
 =?utf-8?B?QVFPQnZUYm1mejVXNVBML0FaYXNZOFFKdURlNUpDUnI3UmtPdzJKcXhuc1B4?=
 =?utf-8?B?cVhHa3BoNXhKQkphUFJuSGJsSTVNUEpaYzh4bmdpL0w3ODczaFA2czg1WUk0?=
 =?utf-8?B?Mnd0UWxxa1J2MlJtUHVpN0g4blZpVVkzQ2J0U3ZjVUN4ODBOVWN5YnIrOS9R?=
 =?utf-8?B?T0JmbU1BMDk2dEZ4NXBvU0c5ZmZUWnpHKzdQNWNWaVBlaENkdWE0ZXcyVHRp?=
 =?utf-8?B?aktsbXUxYzVISDl2V0VvZWNrYWFUV3VTR25MWUVObHlFbTJpSHZVUTgvWE96?=
 =?utf-8?B?L0VWcnBrQXl2bEpuRnFwQlhwdy93Z2RkM2JOZzNQd0ZKTzFUVHQ2d2Y2TzlN?=
 =?utf-8?B?L0dHZWRhaUluNGcrV3pnY2l6dDRoVVI5M3VTQnpXQnhlbWQxK05tZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qOikPzOd2qVVwMvkPoa57NDqjeZ+2zs5OKiRIV/4C44QFC1cpuFEcAbeD9z9EBPiVwSgGPCp6PP4T5Qvo7FWnDfY8q9DK7ex3RhcITrgVgT8X7sIeHE5Jnq8xQKkb7LF127PkCbIWpTg6iRfr/A44FmE4mSHi39OCXp1VcvuKBS19B1tRpbPbLoeo4prepJdjUeqtnprjvET+jK7eRAspND/2zJEfIsftEEdtzMWQGZHpUpCmOzkH4nEeDAVjRBV5aS1sGl9o9Vm3Zxm8ToXYjscSp/ZL1/EBfpNoREeAfhsJF5ijnbq6WsUWE4k1TQcyNSwY6TXl+LI5kwFROde+w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fb0c473-4745-4c17-f634-08deb563b0d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:01:30.5694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZMgeU0OFH6XEl1QNqq90lKYfwWPEpbP+ibcQPT2kV30C0yxIO/4WCYKdcuwHe8Jy0KdrHOx2+a4QOPyPeqTEIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C032B57752D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDUvMzFdIGRybS9pOTE1L2Jpb3M6IGRlL2FsbG9jYXRlIFZT
L1BFLU8gYnVmZmVycycgbWF0cml4DQo+IA0KPiBTaW5jZSBhbGwgb2YgdGhlIHRhYmxlcycgcm93
cyBhcmUgc3RpY2tlZCB0b2dldGhlciBhbmQgaGVuY2UgZm9ybSBhIGdpYW50IHRhYmxlLA0KDQoq
IHN0dWNrDQoNCj4gd2UgY291bGQgY2FsbCBpdCAiYnVmZmVycycgdGFibGUiLiBUaGlzIGlzIG5v
dCBlc3BlY2lhbGx5IGdyZWF0IGxpbmdvIHRob3VnaA0KPiBiZWNhdXNlIHRoZXJlIGlzIGEgbmFt
aW5nIGNsYXNoIGJldHdlZW4gc3VwZXJpb3IgImJ1ZmZlcnMnIHRhYmxlIiBhbmQgdGFibGVzDQo+
IHRoYXQgZm9ybSBpdC4NCj4gDQo+IEFsdGVybmF0aXZlbHkgd2UgY2FuIHRyZWF0IGVhY2ggaW50
ZXJpb3IgdGFibGUgYXMgYSBjb2x1bW4gb2YgY291cGxlIHN0cnVjdA0KPiBpbnRlbF9kZGlfYnVm
X3RyYW5zX2VudHJ5J3MuIFRoZW4gYWZ0ZXIgc3RpY2tpbmcgYWxsIHRhYmxlcyB0b2dldGhlciBj
b2x1bW4tYnktDQo+IGNvbHVtbiB3ZSBvYnRhaW4gYSBtYXRyaXggb2Ygc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnNfZW50cnkuIFdlIGFyZQ0KPiBhbGxvd2VkIHRvIGRvIHRoYXQgc2luY2UgZXZl
cnkgdGFibGUgaGFzIHRoZSBzYW1lIG51bWJlciBvZiByb3dzLg0KPiANCj4gVGhpcyBkYXRhIHN0
cnVjdHVyZSdzIHJlcHJlc2VudGF0aW9uIGhhcyB0aGUgYWR2YW50YWdlIHRoYXQgaXQgcmVzb2x2
ZXMNCj4gYWZvcmVtZW50aW9uZWQgbGluZ28gY2xhc2ggd2hpbGUgc3RpbGwgYmVpbmcgZXF1aXZh
bGVudCB0byAiYnVmZmVycycNCj4gdGFibGUiLCBzaW1wbHkgcmVzaGFwZWQuIFRodXMgaXQgd2ls
bCBiZSBtZW50aW9uZWQgYXMgImJ1ZmZlcnMnIG1hdHJpeCIuDQo+IA0KPiBGb3IgdGhlIGNvbnZl
bmllbmNlIG9mIHVzZSwgaW1wbGVtZW50YXRpb24gYXNzdW1lIHRyYW5zcG9zaXRpb24gb2YgdGhl
DQoNCiogYXNzdW1lcyBhIC4uDQoNCj4gbWF0cml4IGRlc2NyaWJlZCBhYm92ZTogZWFjaCB0YWJs
ZSBmcm9tIFZCVCAjNTcgZm9ybXMgb25lIG1hdHJpeCdzIHJvdyBhbmQNCj4gZWFjaCBtYXRyaXgn
cyBjb2x1bW4gcmVwcmVzZW50cyBvbmUgcm93IG9mIHRoZSB0YWJsZSBmcm9tIFZCVCAjNTcuDQo+
IEl0IGFsbG93cyB1cyB0byB1c2Ugc3BlY2lmaWMgdGFibGUgd2l0aG91dCBzcGVjaWZ5aW5nIHRh
YmxlJ3Mgcm93Lg0KPiANCj4gQWRkIHBvaW50ZXIgZm9yIG1hdHJpeCBvZiBpbnRlbF9kZGlfYnVm
X3RyYW5zX2VudHJ5IGludG8gaW50ZWxfdmJ0X2RhdGEuDQo+IEluY2x1ZGUgaW50ZWxfZGRpX2J1
Zl90cmFucy5oIGluIGludGVsX2Jpb3MuYyB0byBlbmFibGUgYWRkaW5nIGl0Lg0KPiANCj4gTmFt
ZSB0aGUgcG9pbnRlciBhcyBidWZzX210cnguIGJ1ZnNfbXR4IHdvdWxkIGJlIGEgYmV0dGVyIGZp
dCwgYnV0IGl0IGNvdWxkDQo+IG1pc2xlYWRpbmdseSBpbmRpY2F0ZSB0aGF0IGl0IHJlcHJlc2Vu
dHMgbXV0ZXguDQo+IA0KPiBBbGxvY2F0ZSAobnVtX3RhYmxlcyB4IG51bV9yb3dzKSBtYXRyaXgg
b2YgaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeS4NCj4gVGhpcyAiYnVmZmVycycgbWF0cml4IiB3
aWxsIGJlIHVzZWQgdG8gc3RvcmUgYWxsIGRlcGFyc2VkIFZTL1BFLU8gdGFibGVzIGZyb20NCj4g
VkJUICM1Ny4gU3RvcmUgbWF0cml4J3MgcG9pbnRlciBpbiBpbnRlbF92YnRfZGF0YS4NCj4gDQo+
IERlYWxsb2NhdGUgd2hvbGUgbWF0cml4IG9uIGRyaXZlciByZW1vdmFsLg0KPiANCj4gdjItPnYz
DQo+IC0gc3dpdGNoIGZyb20ga3phbGxvYygpIGludG8ga3phbGxvY19vYmpzKCkNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8
IDIxICsrKysrKysrKysrKysrKysrKy0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2NvcmUuaCB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggZDY0NjY4YzEwMjJhNy4uMDY0ZWI0ZmRhM2YzYSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTM0
LDYgKzM0LDcgQEANCj4gICNpbmNsdWRlIDxkcm0vZHJtX2ZpeGVkLmg+DQo+ICAjaW5jbHVkZSA8
ZHJtL2RybV9wcmludC5oPg0KPiANCj4gKyNpbmNsdWRlICJpbnRlbF9kZGlfYnVmX3RyYW5zLmgi
DQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3Bs
YXlfY29yZS5oIg0KPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcnBtLmgiDQo+IEBAIC0yMTg4
LDcgKzIxODksOSBAQCBwYXJzZV9jb21wcmVzc2lvbl9wYXJhbWV0ZXJzKHN0cnVjdA0KPiBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5KSAgc3RhdGljIHZvaWQgIHBhcnNlX3Zzd2luZ19wcmVlbXBoX292
ZXJyaWRlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSAgew0KPiArCXVuaW9uIGlu
dGVsX2RkaV9idWZfdHJhbnNfZW50cnkgKipidWZzX210cng7DQo+ICAJY29uc3Qgc3RydWN0IGJk
Yl92c3dpbmdfcHJlZW1waCAqYmxvY2s7DQo+ICsJdTggbnVtX3Jvd3M7DQo+IA0KPiAgCWlmIChk
aXNwbGF5LT52YnQudmVyc2lvbiA8IDIxOCkNCj4gIAkJcmV0dXJuOw0KPiBAQCAtMjE5OSwxMCAr
MjIwMiwxOCBAQCBwYXJzZV92c3dpbmdfcHJlZW1waF9vdmVycmlkZShzdHJ1Y3QNCj4gaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSkNCj4gIAlpZiAoIWJsb2NrKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAr
CW51bV9yb3dzID0gRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQgPyAxNiA6IDEwOw0KDQpIYXZl
IG51bSByb3dzIGRlY2xhcmVkIGluIHRoZSBwcmV2aW91cyBwYXRjaCBpdHNlbGYgcmF0aGVyIHRo
YW4gY2hhbmdpbmcgaXQgaGVyZSBhZ2Fpbg0KDQo+ICsNCj4gKwlidWZzX210cnggPSBremFsbG9j
X29ianMoKmJ1ZnNfbXRyeCwgYmxvY2stPm51bV90YWJsZXMpOw0KDQpOdWxsIGNoZWNrIHRvIHNl
ZSBpZiBpdCBhY3R1YWxseSBnb3QgYWxsb2NhdGVkIGZvciBub3QuDQoNCj4gKw0KPiArCWZvciAo
aW50IGlkeCA9IDA7IGlkeCA8IGJsb2NrLT5udW1fdGFibGVzOyBpZHgrKykNCg0KUGxlYXNlIGRl
Y2xhcmUgdGhlIGludCBpIGF0IHN0YXJ0IG9mIGZ1bmN0aW9uIGFuZCB1c2UgdGhhdCB3ZSBkb27i
gJl0IGRvIHRoaXMgaW5jbGluZSBkZWNsYXJhdGlvbiBpbiBhIGZvciBsb29wIGluIGk5MTUNCg0K
PiArCQlidWZzX210cnhbaWR4XSA9IGt6YWxsb2Nfb2JqcygqKmJ1ZnNfbXRyeCwgbnVtX3Jvd3Mp
Ow0KDQpTYW1lIGhlcmUsIG51bGwgY2hlY2sgdG8gc2VlIGlmIGl0IGFjdHVhbGx5IGdvdCBhbGxv
Y2F0ZWQgZm9yIG5vdC4gRnJlZSB0aGUgcHJldmlvdXMgYWxsb2NhdGlvbnMgaWYgbm90IGFsbG9j
YXRlZA0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ICsNCj4gIAlkcm1fZGJnX2ttcyhk
aXNwbGF5LT5kcm0sICJWUy9QRS1PIHBhcnNpbmcgbm90IHlldCBzdXBwb3J0ZWRcbiIpOw0KPiAN
Cj4gKwlkaXNwbGF5LT52YnQuYnVmc19tdHJ4ID0gYnVmc19tdHJ4Ow0KPiAgCWRpc3BsYXktPnZi
dC5udW1fdGFibGVzID0gYmxvY2stPm51bV90YWJsZXM7DQo+IC0JZGlzcGxheS0+dmJ0Lm51bV9y
b3dzID0gRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQgPyAxNiA6IDEwOw0KPiArCWRpc3BsYXkt
PnZidC5udW1fcm93cyA9IG51bV9yb3dzOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB1OCB0cmFuc2xh
dGVfaWJvb3N0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCB1OCB2YWwpIEBAIC0zMDAy
LDYNCj4gKzMwMTMsNyBAQCBpbml0X3ZidF9kZWZhdWx0cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSkNCj4gIAkJICAgIGRpc3BsYXktPnZidC5sdmRzX3NzY19mcmVxKTsNCj4gDQo+ICAJ
LyogVnN3aW5nIC8gUHJlZW1waGFzaXMgT3ZlcnJpZGUgKi8NCj4gKwlkaXNwbGF5LT52YnQuYnVm
c19tdHJ4ID0gTlVMTDsNCj4gIAlkaXNwbGF5LT52YnQubnVtX3RhYmxlcyA9IDA7DQo+ICAJZGlz
cGxheS0+dmJ0Lm51bV9yb3dzID0gMDsNCj4gIH0NCj4gQEAgLTMzODUsNiArMzM5NywxMyBAQCB2
b2lkIGludGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlz
cGxheSkNCj4gIAkJbGlzdF9kZWwoJmVudHJ5LT5ub2RlKTsNCj4gIAkJa2ZyZWUoZW50cnkpOw0K
PiAgCX0NCj4gKw0KPiArCWlmIChkaXNwbGF5LT52YnQuYnVmc19tdHJ4KSB7DQo+ICsJCWZvciAo
aW50IGlkeCA9IDA7IGlkeCA8IGRpc3BsYXktPnZidC5udW1fdGFibGVzOyBpZHgrKykNCj4gKwkJ
CWtmcmVlKGRpc3BsYXktPnZidC5idWZzX210cnhbaWR4XSk7DQo+ICsNCj4gKwkJa2ZyZWUoZGlz
cGxheS0+dmJ0LmJ1ZnNfbXRyeCk7DQo+ICsJfQ0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfYmlv
c19maW5pX3BhbmVsKHN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwpIGRpZmYgLS1naXQNCj4gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBpbmRleCAz
NmVhNDg3M2RlZWIwLi5hOTEzOTdlY2ZlMDE3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gQEAgLTI0Miw2ICsyNDIs
NyBAQCBzdHJ1Y3QgaW50ZWxfdmJ0X2RhdGEgew0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgZGlzcGxh
eV9kZXZpY2VzOw0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgYmRiX2Jsb2NrczsNCj4gDQo+ICsJdW5p
b24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqKmJ1ZnNfbXRyeDsNCj4gIAlpbnQgbnVtX3Rh
YmxlczsNCj4gIAlpbnQgbnVtX3Jvd3M7DQo+IA0KPiAtLQ0KPiAyLjQ1LjINCg0K

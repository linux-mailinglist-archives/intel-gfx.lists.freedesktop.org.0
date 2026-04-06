Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AvHObsn1GkwrwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:38:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0BA3A7963
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 23:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAAA10E2BB;
	Mon,  6 Apr 2026 21:38:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SnbGNLa+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801AC10E2BB;
 Mon,  6 Apr 2026 21:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775511480; x=1807047480;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fcSWZYiUvxAU/aRTNmB87KProwZDHNXESKRTw1/GYDI=;
 b=SnbGNLa+yZYMqh1mHMdqMeAiDCIVghrSUaKFs+OLl04WEeukUpCZZo/X
 W7JUx1gATHR3Q2qWsunD558R7y64i3SCIf35yiQ1JABo6u8cjWyKLPRgR
 W9876akS0glN6UgG3tysHBGO2m5m4KxXMxb5JWG0ZGT/xII8g3mXz8xvw
 Cakod/Nb2JWVrqzlfBRg5nYSJyzh5EYujs2bl46oy6kTyfKLK/ZuL3Sbp
 OvkEx1MSlhIY8aA8qWHAhGDvQV0+UcbcrVhmzE/iZDHvqvqq8+ZMpl3zB
 rB40L8EOdj1okno6ZnwEYrYGST+LEsV45t3AhFSgWAEphM9J6/UWKaum6 g==;
X-CSE-ConnectionGUID: Ji0mVMu9SN6OJPsLCDvcGQ==
X-CSE-MsgGUID: myQWfS0NS+6PdU5mQIQPSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="87091378"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="87091378"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:37:59 -0700
X-CSE-ConnectionGUID: w5OsR0d1Rqyc4GYNlRf0Yw==
X-CSE-MsgGUID: SCFep/2ITxmfbvLb2xqirQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="223679436"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 14:37:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:37:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 14:37:28 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.63) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 14:37:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wr+Q71lq/l31lg3aaAaap7LiQ1YfgVjvFsOfPbHQ3btK3Wx8GyDKKwJU+RQ6oSb4tUIm6nlOvz5/kIHULpIPcyeGB+9zJHCOe7yu40PcQJJdj5CuEMHCD/TCSepdwxmfNCeBAAZaNhQbF3pGv4ktJAM3nFGmwSKeGdlSgiY14JqtwgZj8BRUPXkrCGuVpt56CXf+Gfmk80i4uKbDJ4sLnD2XCYFhI9ZtgvkJ4hnOZe2cbhwqD04L0/bKYCrshdehAIsTQaz+jfOpXv6TfJfb8tohQaKVG2HekJLsD3ALJiUSOWEhLQkOeFCC/ZTRsxQ52G/oA/zJJJqRrL9O7BsCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sh4fknKV+wVCTrDkcORjl9jc+iIPMtxTpAKUlP61rZQ=;
 b=BcRpS/SEZMngoDCXd601Lkzu7JOnjKF+1/r5zsoz6K5AuJsRrKBIc6u+fTD9qZyup7mu0TCFxeFy2xUhSkTJs9bAxpbuGdo6AJu3mtpojozp8KA4wMPu1cML8eBz/FD8a9tw3/nxrYOXvvnsmrL8GuPjC/WEEr8H3KFWC58MOJq89yC+WxXooqtrz51S1yJniuKzridZ88C4ujw/T4D1Nk3s2n5LJfFojpbFVtSHaBwXe1A4jq1HbZezrYDLyRfCDf5dUFoloFl/53m8tbGKg1BHk1rrebUpd2hjX4Tb3SIXlZ30l8z80x0Wf31qHpFobhgKLtjqgxOfhLdkxxhGmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA3PR11MB7535.namprd11.prod.outlook.com (2603:10b6:806:307::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Mon, 6 Apr
 2026 21:37:26 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 21:37:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 10/12] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Topic: [PATCH v3 10/12] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Index: AQHcswMRqoGv34kD4U2TopG8UGt337XSrntg
Date: Mon, 6 Apr 2026 21:37:26 +0000
Message-ID: <DM4PR11MB6360169625191AAB5FCD0528F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-11-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-11-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA3PR11MB7535:EE_
x-ms-office365-filtering-correlation-id: f3bf2be6-22fb-4527-b507-08de9424b22a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 312FiY7GjsMxVQ7SM/jy2TAEM6rXbQpVN2T+ZYOXSKb1hys5gOceqWE+Mlm6HFYvwenDZZ76rrdMd9jRGYjGplYIFMkQgt95koUXWq1rGsnN/yr8NRDSTArTbFNM6S53SFoJ8KJ5rmPsC+ZD/Aj2SVmOTvoLVtWmmYuoQS+6OgMMfBmLrgSXHoh/d7fCUMP65/++1/EtJmJYPiDfeZJt0N2lCoaYHvzOm4feS41VLRsSP+06i70QP8ydMZluqFJlTHa0ElMapqohMdkPU82G1zUNv41WbfnDiPFYs0FcfrrDe9HjD1khpEqOb9TUHcY4k7mEsKZBY+4ABj5vnc2N/E314gEV2+CEXuI74blVyHIhgbhCEh3Tqx39TJrT+NIIw/wKfVTu9/TYvtigRP/aUl9y1JF2xbb36M16M0m5A1VFq7NpPHGkYOyuU0f4ffAkQFtXZUiLx8OIJRjB4ZJTNpmHKe1IpG/XqjbRTynbIGJLb5fqfNA5mF3Vxi3GEsMXmMyj+jAM71Gx5XZSXLnm7JrAe2akSbMNhOXTnPQenpSDskVTpFKzoAYGAKc2KosPsUC9VI8+0bGChL9eXAnfY48ttAR/Wo4bBhiSvpUQmbN6NzZTa/G2zKKM3N31MhUDuq5Kh586nx59ybTzyEv5r5qkhpft+2hg6EZb9psr851+0YyKWfVTAFu3iBZi5MFaE+IoSDtRR5Pga83Wm7uxYAO6jZDvbp4npfwJcqqtIxU+M/BcoV7KAWjCULcuFPSGPeISseBRfYmm6YxIiq0pUdjoBZcmau/teZ9qP53FWcE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m/s435v2HPM5QLPeuqUWDO9kT1aI45oN2ntGqmf4eDCRFknZ4zYlmHAzxBfg?=
 =?us-ascii?Q?bUDvgxrGX9UO6ulyteEBf242zTsr1Y4HYXetGtlvnKajfid2OD5WbOKflWBX?=
 =?us-ascii?Q?WrRUpmLCLr/D78ZqdsBjR6hzUBHuBPt8W9SUlL8ulQgKg+HShxwlUtfZGIY8?=
 =?us-ascii?Q?cE5Nv2LZhTNSzjw1DbgVIhihyhCOSe0gkJInk+NGOKqr7kXZwk3a34/WOZlp?=
 =?us-ascii?Q?Xs4pFw4bVsvR1oH26NX5U00le/kcLZLFlUSk2tfX9o+PZgUXjBbAKvKpGL8T?=
 =?us-ascii?Q?FTtoXZoUvDyX6qYGL7YFAN5IqQ1c5tZ0sbZjIVfSUd3AzEr80ARLzYc+L3EV?=
 =?us-ascii?Q?fNNMlCWV5eXEranLXFhMe7FRL/bM4T9cjq3QtcbOxPqxEKs/aoGuadWKOYjJ?=
 =?us-ascii?Q?bE98bEaGp91GqdWON5TNMIZLGJKYwyQIB8otSpZxzxf6P+w6WkTqOa9lfjfl?=
 =?us-ascii?Q?v46eTiILuw+lLafLQ1mN5Ij6QzVoikBNG0I32bVyRTWyJznpHkZtcNCMNl+p?=
 =?us-ascii?Q?2gpGwWwudcUoYN4q/P2ISS87xUwc77Vn3H40ZdbwHhdKmUgfJ6AggbvdnnKn?=
 =?us-ascii?Q?eui4YZm6Q9EDRgJpGmCeYdhOIlWovgHKAbA35RCKQUucg+8fKlrDdLpDwOiZ?=
 =?us-ascii?Q?oM5Dy4V+w/NrHkpTZ+7glUSvFDchmmCixe89TcpyFt5w5tGSpEOp7Gxitg5i?=
 =?us-ascii?Q?2onx6/DPWIWqqHOcf2qm/sD/xXOjAgW2Jgbt6STWo/bLnfJMdH//yAOsROqp?=
 =?us-ascii?Q?4eUfBEeFALaaabDUGGidDFn9owemtILaNHF1IrrtfN4IM1GMoFuTimrqMQHU?=
 =?us-ascii?Q?fCxrlGZFn0P0ahlTJ3q/DpW/6g1pCocJKw+XegqgwOoCcYXJJGRX1xNcgFMQ?=
 =?us-ascii?Q?IYVH/Q31S5RqNs/+pIfK+/3NJmdV0UYtNSw+E1JhxoFCDvxtzHVulu7/wTbJ?=
 =?us-ascii?Q?Xu9lDSifkciJrmTiH/nWiWKvvRZyInysmEKyMgXGxM3HZPmd0RsLHIKLIlSa?=
 =?us-ascii?Q?Fgzea6qJIxkfckyZjlz6U1s9nP/OmXZvM40Ux+Di2tEy/UqBAaNXw2Ju5jiA?=
 =?us-ascii?Q?mpOcUf1XOH1HzVRdWlOJ5IMr0k/e/9wrp4A8ODLJCor/NP7oCyTS2A9EoNQW?=
 =?us-ascii?Q?kfJSFOPSS5BkdPquTodoiHV/rxEiOX+AyfLnDfkTlodfHXnEHkfgUovLN74G?=
 =?us-ascii?Q?NHoIMbMCwfL+tD3WEQXV+ab+o7/QUXH3S5ifq4RaYNYb+QOBO7VdeBr9IC5g?=
 =?us-ascii?Q?KK9M501JPO20R2gGyShKRK3HlNqCSqWVzKv494/h0zJBdMLJUO4rjaL8SbMn?=
 =?us-ascii?Q?BPZ4F90BsWG5rawMcxwk0EDaM5ziJ33QTnggZumETVKBTl5jVIFyhYwAYNB+?=
 =?us-ascii?Q?Lg6i0si6nw7MtwclsujCCyAiJBKhHlTmJCyIbI8FTm/1fgzTZSX/UPm7350C?=
 =?us-ascii?Q?ynZJOmla2xwiX/ijMz/LToAl3ahZYMg1DmwhuQzX6MXk7vn7VaC9jYi8cloq?=
 =?us-ascii?Q?zUeATQxP0x2sY1KcHF6fwlFf3xsAfrv9TaRU9JLK2DZtF5gvBQnIeRgQLkvG?=
 =?us-ascii?Q?jUIEXOSUBrqGqfvN3XhAnQLPp+txuJMY9NigeRzAWVpibiyXZdFxClq/hFYg?=
 =?us-ascii?Q?E0ETCesGA0VKPsyx2T6JzGd3OyIQIGEXkFm3cRizAwzlseD0f5VXBALbzcqX?=
 =?us-ascii?Q?z9cA0XaNBtvm5w56NkXKeTt4TV8y9TbWDzkQRgZvMIok1Iimizpr9HYfYcZd?=
 =?us-ascii?Q?2nLZoIfkcQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PfG2Az3DGmjXGtGI4ezhNcxU43yfvUKOMikFalFCOuX2ZN/IZIh4ktiS11LlLBVS48uIPRvj8PtXTa4Fy8p0HipdJfo30axOem8b7G5aw95DwYomFZeUhyeKcjFETjaXkoYWH3NwwIBdv3ZOVkWmsEfXOH5EuQPMqo+yWpdKxGFwojw7whOwVt3Eo8kXGrvO3lFIOfc7swx2gUJ13cTGH+kIqVDry42dQtwFRMiCErDSKLLLaa+N4H9pNOjN3vtSRkf7UNGXBaKhSfEqSbXmHrVkeRGpXbkCmaAFgY5vbIrYpivVpZnhlOTY2qFt8r+EuBqi7fk7EIlIlQhadX0XTw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3bf2be6-22fb-4527-b507-08de9424b22a
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 21:37:26.1649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gA3Gamo6CKWz/2A7XNK1uD0/l8lph3abAC7CQ9LNjW1RHuMjLQ+DSqgG7cOPjY0sv22I3lUV3QTCl2JGYq8fmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7535
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2A0BA3A7963
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 10/12] drm/i915/cmtg: Add CMTG interrupt handling
>=20
> Add support fot vsync, vblank, and delayed vlank interrupts of CMTG which=
 are
> part of DE port interrupt.

Nit: Typo in for

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 37 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++-
> .../gpu/drm/i915/display/intel_display_irq.c  | 12 ++++++
> .../gpu/drm/i915/display/intel_display_regs.h |  6 +++
>  5 files changed, 61 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index fff299e1acfb..35d39f2fb86b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -13,6 +13,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> @@ -380,3 +381,39 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_s=
tate
> *crtc_state)
>  	crtc->cmtg.enabled =3D true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> transcoder_name(cpu_transcoder));  }
> +
> +void intel_cmtg_mask_interrupt(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 interrupt_mask =3D 0;
> +
> +	if (!HAS_DC3CO(display))

Use consistent DC3co check as used in earlier patches.

> +		return;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A)
> +		interrupt_mask =3D CMTG_VBLANK_A |
> CMTG_DELAYED_VBLANK_A |
> +CMTG_VSYNC_A;
> +
=20
Better to use if else if instead of separate if block.

> +	if (cpu_transcoder =3D=3D TRANSCODER_B)
> +		interrupt_mask =3D CMTG_VBLANK_B |
> CMTG_DELAYED_VBLANK_B |
> +CMTG_VSYNC_B;
> +
> +	bdw_update_port_irq(display, interrupt_mask, 0); }
> +
> +void intel_cmtg_unmask_interrupt(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 enabled_irq_mask =3D 0;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A)
> +		enabled_irq_mask =3D CMTG_VBLANK_A |
> CMTG_DELAYED_VBLANK_A |
> +CMTG_VSYNC_A;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_B)
> +		enabled_irq_mask =3D CMTG_VBLANK_B |
> CMTG_DELAYED_VBLANK_B |
> +CMTG_VSYNC_B;

Logic for mask and unmask function is similar, this can be merged and manag=
ed with one function.

> +
> +	bdw_update_port_irq(display, 0, enabled_irq_mask); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 79785afccc51..0a6fad9635ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -21,5 +21,7 @@ void intel_cmtg_set_timings(const struct intel_crtc_sta=
te
> *crtc_state, bool lrr)  void intel_cmtg_set_clk_select(const struct intel=
_crtc_state
> *crtc_state);  void intel_cmtg_sanitize(struct intel_display *display);  =
bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_mask_interrupt(const struct intel_crtc_state
> +*crtc_state); void intel_cmtg_unmask_interrupt(const struct
> +intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index baf4d640bfbf..6febf569889f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1084,6 +1084,7 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
>  	if (!crtc->cmtg.enabled && intel_vrr_is_fixed_rr(new_crtc_state)) {
>  		intel_cmtg_enable_sync(new_crtc_state);
>  		intel_cmtg_enable_ddi(new_crtc_state);
> +		intel_cmtg_unmask_interrupt(new_crtc_state);
>  	}
>  }
>=20
> @@ -6925,8 +6926,10 @@ static void intel_update_crtc(struct intel_atomic_=
state
> *state,
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
>=20
> -	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc))
> +	if (crtc->cmtg.enabled && intel_crtc_vrr_enabling(state, crtc)) {
>  		intel_cmtg_disable(new_crtc_state);
> +		intel_cmtg_mask_interrupt(new_crtc_state);
> +	}
>  }
>=20
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *sta=
te, diff --git
> a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 70c1bba7c0a8..95e6523b32d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1467,6 +1467,18 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  				found =3D true;
>  			}
>=20
> +			if (DISPLAY_VER(display) > 30) {

I think better to start with >=3D35, I mean do from where it starts the sup=
port.

> +				if (iir & (CMTG_VBLANK_A | CMTG_VSYNC_A |
> CMTG_DELAYED_VBLANK_A)) {
> +					intel_handle_vblank(display, PIPE_A);
> +					found =3D true;
> +				}
> +
> +				if (iir & (CMTG_VBLANK_B | CMTG_VSYNC_B |
> CMTG_DELAYED_VBLANK_B)) {
> +					intel_handle_vblank(display, PIPE_B);
> +					found =3D true;
> +				}
> +			}
> +
>  			if (DISPLAY_VER(display) >=3D 11) {
>  				u32 te_trigger =3D iir & (DSI0_TE | DSI1_TE);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4746e9ebd920..5838338f495a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1427,6 +1427,12 @@
>  #define  GEN9_AUX_CHANNEL_B		(1 << 25)
>  #define  DSI1_TE			(1 << 24)
>  #define  DSI0_TE			(1 << 23)
> +#define  CMTG_VSYNC_B			(1 << 19)
> +#define  CMTG_DELAYED_VBLANK_B		(1 << 18)
> +#define  CMTG_VBLANK_B			(1 << 17)
> +#define  CMTG_VSYNC_A			(1 << 16)
> +#define  CMTG_DELAYED_VBLANK_A		(1 << 15)
> +#define  CMTG_VBLANK_A			(1 << 14)
>  #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 +
> _HPD_PIN_DDI(hpd_pin))
>  #define  BXT_DE_PORT_HOTPLUG_MASK
> 	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>=20
> GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
> --
> 2.29.0


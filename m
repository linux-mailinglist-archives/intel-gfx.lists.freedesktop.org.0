Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJWsDGERzGnGNgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:24:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3874536FEBC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:24:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E994D10E9CB;
	Tue, 31 Mar 2026 18:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxMxj2Xc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428F010E9CB;
 Tue, 31 Mar 2026 18:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774981469; x=1806517469;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mrw/yET0TRDyv2ifgjJfu910qNLgyn7BzqdB05Vmphg=;
 b=jxMxj2XcqWnYoxLUxC+Km1gtGcysUmP6AGMWa/jTKI8JHedMclW99WM8
 NVK4rwvHtYiukxP+H3T0FI4kFhnsDdMbDLkvgXo1oCsocsbfziRz10vPo
 KM8zmpbHRfA65BLygQfgl5NN/0HzXJKgeFpUiC6aWP+olcj49AvfsI1oD
 xOV5xpWSG3Qi6trx7gwjSRkiirdes29tYelnqyh6JA5RL49/o5RNkNmHC
 CahrhSKuyyH+Oewe7uZ8bP3jmxeEjEZ5IfoQxTOEqBsPv/y2XBuvCXOHF
 fed/7nN4bH/XtYGGvSIWGHGcwVE2ssHNImir1RNa+wmzxlHlyVA9173Af A==;
X-CSE-ConnectionGUID: o6bAD3LLSyGl/PywENXxtw==
X-CSE-MsgGUID: VbN6hW5iS0OPPQuUaB+O0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76197503"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76197503"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:24:28 -0700
X-CSE-ConnectionGUID: CQG5dAehQKWcGtRuALBP6w==
X-CSE-MsgGUID: aglxCNQCTdeEPiM+Z/KcWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="230877199"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:24:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 11:24:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 11:24:27 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 11:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Keis6SOPMtU6XZ6I33VaAoWji19e/9Mq8ITPuRgiSjBgqxddsbr3eDVTPgJyVX/SsP2EfnNdjZWSmInw19vbOl8MWiTlCKQ/RDm6Q2iHglNUwIhs87x24dOueLGzvDnHLlXMoucRVyMxXQ2jdT4aGOxuWpdW5XlvO7mZGLjfVo20XHrn48FTIXnqZVWZBH/snOdS1NPA/IoqQe4neQJ49URmoT8/c2lxWHInnahpCCqMm0f8ur7qBB+GZCiZzKfo7msgBZto/bf0jMN3AOK7MfhcKZEKaFXEaa56VwO7y+hBHxDiXM3LWVZ89ybzQEVLxAD9aRyuM4DYYouVPkCEFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GH3IQbo0wjYZKuhqRM/8s/0NlM08APouLpd6uR1qmhI=;
 b=VW7SCwsRxFZmlOUP6oxjBijtXiU+nUgx6glTzEmxcaLMMZcWLrehZ0npjMy2XkPThjgJcv+Vq+A1hsFG+lyfJeIjFFWn5BGLJli2RTmpPT5lDO0s1Y17A/XQWg3GrUHzxRe8jD1bZqyx9QaYKvQoKsDSxxMTi+XULED61PnjpLQNNwQbvjaObQwdbUT7URfyOh1TjfAKjS66MtPxytc8yVSF6v21isti9ayjW0FtAibHsF7vgvNWP1wgzdoh7Lbj504AAeC5wOPef8c5qmF7B56BpM0s/l2LuZH3GpjOyRN0XMru9Iin30cyot5t5ILfm+Au67z8Tdq2I2LgtCrtQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by IA1PR11MB7824.namprd11.prod.outlook.com (2603:10b6:208:3f9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 18:24:25 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 18:24:24 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Thread-Topic: [PATCH] drm/i915/pfit: Prevent negative coordinates in center
 mode
Thread-Index: AQHcwTYKvO3zIL7T30ylKqEHkW8iEbXI7m6AgAAFVYA=
Date: Tue, 31 Mar 2026 18:24:24 +0000
Message-ID: <IA1PR11MB6467AE1FD548AC5CBD7D3EF6E353A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260331174044.73300-1-nemesa.garg@intel.com>
 <acwMBaVFSA3rZjxN@intel.com>
In-Reply-To: <acwMBaVFSA3rZjxN@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|IA1PR11MB7824:EE_
x-ms-office365-filtering-correlation-id: dc63792d-686e-45ee-2468-08de8f52bcba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 2XGtucNzdPv8ydl6Qc6SElKKmlv1WsIzSX2f3rBg0ZGY3H6NwyJdt9zZlHZWDlaVHEcOP8uzONVOnVtTCXdE9LbJDGTHdJn7Po6USpBmWPhCtjr0UgxnX576TAaIu8cSmJ4hWzg0cUvkpZQ4Iik2YPkg7wdQh34QNeYY0Fpojizu73rOtUcOaVVmgNHYS4haRO8jf2DkFt8GtC8a3LhYy1bP9tnC3YqqkXFIzBsbZjIri48lnxILy2yWH6guKOITS0ktqD9pUkAehokEFntMGyh8hvA38kIQGXieXW1i26gPgHWnvEAF+ZsFT11vKuerOnOiwtP3BxmQHlSBwjodhSIkEYhiicQNTxwlxzrwyKOyxc0D2cOZfKfygMmt6QHSZk9V6JXE99XFxICa1JPPFF2LVdBvLfy7RrLK7Zf7aFKhqApAScMABcekoCPzbWI8KTwgqOZ3nkaAkPTB2a00t6A3YxCFyrCMdJl4/KuXdYcy/Df2nWeRNWbNZ8T35klqY8CS4PAtkcVcCtT6aHibZjNB2YarkBIBlyVCJdsukhM1W9P/FRjsZz2Pl9znWWHQf5iagFasq4loQKmRMQpZwReJXRdW3oMCA3U85XSCeM2bZg77LIXQPPgpn8CRoYv7h/7z+WhNZuYC0MThbWXzog8qayVJrY4q95Rcv3j5ExdWsCewes1zJFo7hgln6OXoXI8kHJ401Y5jCWDzc6lqMXDj3rS5qIelmJSrGLWYiw1Xx1hngtqemO82KWDR72YT/HI4dQ+HU24QCKEPFHWAnvZ+Ym7A2+tGie7e4hFnaqI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yd3o+gVax3Rv0+yrwHPhXp7vkz8XL7Tvw21yLEnmCvmSMSwwRMpgKO2Q3t?=
 =?iso-8859-1?Q?Q6RvSr+gw06bxxUDjdbydYmWdxlCWCfSzxlvkZA47SCKhu9X+wgRY1Wbbj?=
 =?iso-8859-1?Q?cuJLGF6YVgbdK2jaG7HoR54UPgVswR+ZvMZw07Rts9HPxmcRixru5Z5wcY?=
 =?iso-8859-1?Q?2XvAZyZ1a9w7poEkD6NK+xGQB2bMLH6ShweFQ974w8fbp8tdTHpTqRwCG7?=
 =?iso-8859-1?Q?6p2j4R9L3JkyjO7BY1Gg1awhIdTMQkt835iCdr3XydDG4gka7Rj6B/2+WZ?=
 =?iso-8859-1?Q?KTcBB3/u3xukTpzRxly+uWA8m6Y5mU4nll6Zk8VEuppgj8XnvEI+FykBpl?=
 =?iso-8859-1?Q?LlvLrOO8NkIg2z+w3qcfM99OSzOXH83sYCfgd+uyKVIERMlV+WtuEEE2hP?=
 =?iso-8859-1?Q?nzJZaxWxsjjUgYwkjt5JMKPT8jdqiUP9uPOcjcsmDkVOFwUmmzQHIBBYg4?=
 =?iso-8859-1?Q?pkzi2zv82AEPORC1jK9FWMRHw90cMfgD3enBcgZ7GUWrEsAvhCAd/u12pS?=
 =?iso-8859-1?Q?XlWo1SqOg/O0DQ/t6E/v9L/wa7nBWdc62+GF5VuEqFe+N8J7jxvg8eqlR1?=
 =?iso-8859-1?Q?B0DzcsQhAmchGyDVIPl9ATRz/W6xwbXPNfP45dDKEaJ1p+4juhb1L0c+Wm?=
 =?iso-8859-1?Q?Mq2wtBOyyhTppmG1J6S95UrBHMDNSV/IRY980cZOfCeaBBTF6zaucz7DAv?=
 =?iso-8859-1?Q?bRJM2bUhSyrFw4q3GTW7IIQjs3p/4OlRbNZzhTPg/R5u3N9dlX1te2Q8FF?=
 =?iso-8859-1?Q?3w6kXdZYjEKdIQTI865nwXwoAyi+eEE73gzMTHxApsMV9c7TD76jjk1ZmZ?=
 =?iso-8859-1?Q?OhhoDDSDG9QgG6FNEm/Sr2s0kL6XWlYPQ7Y/tvzeN9hGe/HRR4oGEV0FWs?=
 =?iso-8859-1?Q?gzbA6IzNig8zUzh44Vgsvv/+tNbHzAuRo5WmEMsIhKHDs1UkCJvTiLZe8R?=
 =?iso-8859-1?Q?hiTlt7zPNsJVvEX9mxydjuygR8+WCFz2sTpqbW+eK87uwkbIVR7NW2AOmp?=
 =?iso-8859-1?Q?0XZoaU6bsRpVpjfKavr9Z8GrNmZ8Y3PHvVshm20ttj/q262CgC5hfG+Ay0?=
 =?iso-8859-1?Q?ujZQqHJ7W6tYTWxL+bMKbc5gbVEmC6xZAq11XBN60g5jEQ2lCpJpBinViR?=
 =?iso-8859-1?Q?M2ysb5uhbaynFCddK65L7F8FUUAhaj01LgqL/0sfDhZ24MPgcoCCffxI3w?=
 =?iso-8859-1?Q?W6lESuRCfB6h0AMMoQhJdVGw0Hm9V45ISCHEb9vw6ov2eaMiuN5kYgrapd?=
 =?iso-8859-1?Q?dWuNFIFVeozag+7pZAoTn3+oZmxUQYS1fMOMM4G6CE1+/wGOtiOZDTiKyZ?=
 =?iso-8859-1?Q?+XTHvJolnYHars20puVl39TNXIy72MWv97wMuWzEs78FF1JiGlLv7POY3l?=
 =?iso-8859-1?Q?7O8YfyaJhNdv2ONj28MHgNjXCYCTBGJsFawFCqthM+NwzmwxRmgEgZSkub?=
 =?iso-8859-1?Q?NgD3XaW3WXUU4zmdNkDsGnDkVEOPtcjhXfgHCU0RSg1cTID9pHgSKiNFLc?=
 =?iso-8859-1?Q?ZzyoVePyevaUV/I8u+0mkKiA459cCKt4onmVYipiekhYeUyzsqpyfFJTQT?=
 =?iso-8859-1?Q?xXpGdibnH1yGQFx7yPa6xvRM2CziDw/aLGW2dcC7C3X3d1HhiXXPa06LXj?=
 =?iso-8859-1?Q?A4He/LU43eirKM+uTf/+sVzyzIcM3whVLMrkW8jY39V0ZAwkOtpETdfrHW?=
 =?iso-8859-1?Q?CjRItkENHbdQUZsjCNDlmjYKs+ahRcRGtnz1S6F1W/z3VvGH8YZ9AYC2TR?=
 =?iso-8859-1?Q?p6Qet2qZrvU8YSlKTDTViCIqm2dawytJe9Wdpssg3vZ8DWzxn/Ywtcc0Go?=
 =?iso-8859-1?Q?GQ9mhxd12A=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dL8HqJxQVZ9vZsJEahBJCtq+1K/N4qN75XWr1bYSoEaNtQjOy0P8lD9hJ7SUVDPzIxjhGea6OYnlmpoErJtfrRKw65gbgL6GvQW0ouHAZn3i/72xdDs1AslKM4xYo8fydw1Vu4XqNFwuaMbRK91kAE1SWW7Dsi6Ny0vKqqN+362dKSg3NpyOeiZIG/dYhE33qqqBrSKMbiBE7dCqWhu9BzSroR8xn/8xCXn1l1NRQqyEcFnJXU05q260hiqxnPJ7SBa6KHgf8bEGSWSN6KopUD510ZtCNOdVFygF5tcu7UsfmT0YTc2Ti5ZmjEQ/zZXiM9dC0C8B7F3AoEF6UeGSUQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc63792d-686e-45ee-2468-08de8f52bcba
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 18:24:24.9312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +fsmkpdQ1e0yxOaGcG8KP/7eDvqWJNAllEJzA6cgezPJi9K5jCvS7MVkWLufzwzK4r3l+FhPnFFarqQ2wM3n/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7824
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3874536FEBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, March 31, 2026 11:32 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/pfit: Prevent negative coordinates in cente=
r
> mode
>=20
> On Tue, Mar 31, 2026 at 11:10:44PM +0530, Nemesa Garg wrote:
> > When the pipe_src width or height are greater than adjusted_mode
> > hdisplay and vdisplay, computed x and y offsets for center mode can be
> negative.
> > Writing negative values into the pch_fit registers result in a state er=
ror.
> > Add a check to clamp these values so that they are never negative.
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c
> > b/drivers/gpu/drm/i915/display/intel_pfit.c
> > index 6dda496190e0..1507c2b5b5c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > @@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_stat=
e
> *crtc_state,
> >  			     const struct drm_connector_state *conn_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&crtc_state->hw.adjusted_mode;
> >  	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> > @@ -204,6 +205,16 @@ static int pch_panel_fitting(struct intel_crtc_sta=
te
> *crtc_state,
> >  		height =3D pipe_src_h;
> >  		x =3D (adjusted_mode->crtc_hdisplay - width + 1)/2;
> >  		y =3D (adjusted_mode->crtc_vdisplay - height + 1)/2;
> > +		if (adjusted_mode->crtc_hdisplay < width ||
> > +		    adjusted_mode->crtc_vdisplay < height) {
> > +			drm_dbg_kms(display->drm,
> > +				    "[CRTC:%d:%s] pfit center mode source
> (%dx%d) exceeds display (%dx%d)\n",
> > +				    crtc->base.base.id, crtc->base.name,
> > +				    width, height,
>=20
> width,height represent the pfit output window size. So I think it'd be be=
tter to
> do the check in terms of pipe_src_w,pipe_src_h.
>=20
> And I guess then we can do it before we even compute x,y,width,height.
>=20
Sure. Will change.

Thanks and Regards,
Nemesa
> > +				    adjusted_mode->crtc_hdisplay,
> > +				    adjusted_mode->crtc_vdisplay);
> > +			return -EINVAL;
> > +		}
> >  		break;
> >
> >  	case DRM_MODE_SCALE_ASPECT:
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

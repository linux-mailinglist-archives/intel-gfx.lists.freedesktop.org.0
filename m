Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vz+mKskEVmpmyAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:43:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8EE75300D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:43:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LRZsKUDA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E1710E67A;
	Tue, 14 Jul 2026 09:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB0D10ECBB;
 Tue, 14 Jul 2026 09:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784022214; x=1815558214;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pOC3tRFlDoLOhn8q8caSwUUid3chkMZ3tGQovD6nz0E=;
 b=LRZsKUDAOeb8x2BBRF7kDopxzYRDlj2zUoAIW1ZLRmaRVSMkRNHDiZVJ
 FknJBy0OVw4I645IQWXcOLhh5t0clNMhv3amJf5OrcLCrD/b0UCAE7JiG
 H6CeHiZo17rLL9hNMReMmEqL43Y/DmX/XmwJcuq2ZVwM+S/5tLcTSa9Vp
 LHlc+UkUDNl8qi9NO5cLoh+ikXJdCfhuwDhKwgE4PQrMh1OrOZsm7UNzW
 JdgTGD+OJXktr0OiZmAzj2rt5xrAsDii7hv/tuMEoFmjxWEXNcV7hjDdC
 4Hw0x9dWuJz5DOPMZYUMdYhUOKUXKU/dYs424VOPuvvNsQsoV43t9RWkH Q==;
X-CSE-ConnectionGUID: Gm3ADWpdSRCtHullTj/X7A==
X-CSE-MsgGUID: 8QsWr1TNSrSduke4pHhpmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="87183693"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="87183693"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:43:33 -0700
X-CSE-ConnectionGUID: QytCTpCnQDauCjYvBwwTCQ==
X-CSE-MsgGUID: s8gu9JFYSYa2FPinFIoJxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="254069822"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:43:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:43:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:43:30 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.70) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UdYV5VlwkI0GjAYwsUwLJwy5SRebr457QlNJe8Isyr+tlnN2cwRhIiOXhbFaSq4Sige6RDNVXyy9Kw7WIWdPlqD0Ey5FFZfe9Oji7Rn0GmdrA2Zse2rSm5Vr+gpLH38WGJWKnASjgd6o+Og4cY1Cwnz0bVXE9wkqpYGRkJzZUYjpcHaF9/5TEDGb5s9GKc7gRQyiJQ9VyNv+FEefQx24p6d/Zk38Vww1uyo4IzKVwHqXVVVGvS6lafQvYywPqwWM51VHb/Fpg4Euir769axu64h6r5ixvK96q+pYpHuJmd+oPgRMTiyQlmfUdQrH6nMuB8GRBXuVgGSUxODdHc0jFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pOC3tRFlDoLOhn8q8caSwUUid3chkMZ3tGQovD6nz0E=;
 b=tAXGyRFOyjEx54cAXsDbJqd+wfwL1kuE4ZrLJWcBZL8HYoN1Bsduj4sKci6TOa2y4U2LblLioQUg8Dr6aSkTl3n9hA7i2DblaDLSXw/PgtfIHqyxVjf1Vm3eg+qV1bLuthSElaXNzgs0sz9ZDqmzquCY9i/r/a5dWFKtYimFdpJj530//JrCtgYhw5NFk9OYpUNef7YaQTqSE0lphud5nAM0enjNQv5rSNzYAxSIlzwurwgi5VgmUb/x4HbJ1w/KeMxBLs8VDYDdGX2YBv5eF2Y8CeyRNLLV2Sv6lELcLm2zB+pteWfZ8ZLiJClbyVvuYSP0d2f/sDN3fdG4Q0aCmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM6PR11MB4593.namprd11.prod.outlook.com (2603:10b6:5:2a3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Tue, 14 Jul
 2026 09:43:27 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0223.008; Tue, 14 Jul 2026
 09:43:27 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth threshold
Thread-Topic: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth
 threshold
Thread-Index: AQHc/QZkoAY64JsZGUmu1QY5xQ581rZs7oMAgAAB3wA=
Date: Tue, 14 Jul 2026 09:43:27 +0000
Message-ID: <fc71679c36379e2dcbe72cc1e6d6af2a2d6175ab.camel@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-8-vinod.govindapillai@intel.com>
 <DS4PPFE901A304F24C228DE849CFFF801E4E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F24C228DE849CFFF801E4E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM6PR11MB4593:EE_
x-ms-office365-filtering-correlation-id: f9426913-43f9-4d41-682d-08dee18c5b42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|23010399003|1800799024|18002099003|22082099003|38070700021|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: R7auisz0mhgQmZUFcpL2bUWcjBmCc1py9JnFI3PGtUhX089lWGtUfTUxlAysMhEGWIxmZ/s9XrbUE8sGXv5NxWamZb+nWXp9aB08qCcHkpPjYUxh6phTd3fUIqwfCL1GuY52VP2xfHL7+36T5/Hm5/P56Pu6qs5zzQS/bcZONDVLzM4vaSWiIFPDe/bpAJ1F5cAD1QE0q/0QJmfAfEL6nz6AXuyYAIMWc3xcjeHEYora5abz8abL5kw5SnbJ3ElhYSBMQVevv4U/D6l9xLNq/HDNN30qZRoTJjXoGv/rM2cEJih0lPEi8fW+9rA6WrNdiyvK2wvcL+js4Y6674IyV79AFTX+el7c33YIdAn84k03aHjPLzlh1EtFedyTTjib4QIsSO7KC53dbIlnyeoBgOppAVc8pXOYNzBh3KQ9+qAgG0xpmXz0Tp0/mcQtqxgOxiFUyGSh8hkSMC6sPYmxKdhVsQgXMYnnnxVaMnei4or3tu3eslnx4XbTTDr9yxO+uBwH9TelJ8NVeQWyAGb+dfsbXHsyfse+6OXtg2zIqdn2cESjKcRK+y+Uwv9i2dN8yjyFjY2hTSkEP5x/WoY/QwrVrnCypDT8F4HMA1ZkbZ4JQB632IpI0s8IBa1eiAjNJRy69Veyy6miODdRCh0vogrJJlbKusQJ/qt1ChF6Cavmtb35JLdXq9Rp84eGYGUVxl1P7NzbKjo0NO9G/QQjgptgTrevXjFIKeMlLoZwMdY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(23010399003)(1800799024)(18002099003)(22082099003)(38070700021)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YW9hbXJ4QzAyMHVXYmViaGFuazdrZjZucFlXVjFHUnUwaFJnUjBZMTQ0SzhP?=
 =?utf-8?B?REIzTnZjMjJMeTFmOC9EdWF4dE5iZWxyNWt4ME5jeEhOQU8va04rd1d5Y2FR?=
 =?utf-8?B?SGJNM0txZlVJUDFCWmxCYzN5QTdQbWRCV1hYdjMwTlRFaTNqUVJoN2hnekpr?=
 =?utf-8?B?SGtSZFFMZ3dlbUM3elZlMnZzYndPVCtCczZyMldxUG9ERnJPSG8xMXNMSlhv?=
 =?utf-8?B?MVBJZE4wSnZ2L1lOMDhtMXlYOTZ4UHZSY2dwYXdNR1ExZ1ZWUkRtLzRMWCtV?=
 =?utf-8?B?Uld2d0h4WEFoalgwcVM2cjc1TjBnL1ZjY1RLYmxrd1BrSkJYaFVRb0Qzd2pp?=
 =?utf-8?B?WE84dXQ1UGpZekk2a0xvMWNJeW5SSXdmazgrUHZIQlk5UzJidk42VG5zakZr?=
 =?utf-8?B?YU4zVk8vL2kra25IL2pVdDBidW9idlkzNnQ4eDBGbVRTbEx2TlYzQXo3NEY4?=
 =?utf-8?B?S0hXN24wZDNHVWtYaEY0L1RFOEcvTkJRYVlhL1hXaTZMclFac2pUZEdGamcz?=
 =?utf-8?B?c29hUFJmL1BZZWlsV2FJVVFLSC9EZ3NqNkFSTnVabVdBZGdjRnpWU2N2NmpC?=
 =?utf-8?B?RldSa0U3dTY0N1V5alh3Ymk4OE9pNUxKZk9jVVROTWg0NWVXbHNFZEwrUkpy?=
 =?utf-8?B?U05XTUdnQ09jRGhHQ0hndXhMTmJJZTZzdFNack5OUXoyVkM1a3BEMFNBYzlY?=
 =?utf-8?B?WFRaaiticVlabjZQMTVIT05HbHVNUWhUY2xJTzNXOHQvNCtESGFVL0FITllX?=
 =?utf-8?B?Wk5PZ3J1OGtWWHZYODg3TVo2cm5HbjU1aytZczhxNWdWbTFZb2RGK21jV1pi?=
 =?utf-8?B?WW04UE1CWFQ2aXFzYnpQZ0pGNTBDMDI4TXIrQUlCUjFaeEFnNmRwRjF6T3o0?=
 =?utf-8?B?RjkwV1hlZ1M4Qk5OMXV3STNXY2RzdUNpSzFvMndQUStQdElpZDkwMkJZYktK?=
 =?utf-8?B?ZHhhZnp6MnRzdDN6VzVQeFdxQzFIUVhudnJTNHI4c2FrczZxLzl0dlh0YmlD?=
 =?utf-8?B?a3gxTlBrRU0wbUc2WHMyd2I0d3hFVjZlbVpWWGovd3VPZkszRjlzZHJQek1J?=
 =?utf-8?B?eTFsZk55M1A1NUVSNS9CbWFJWm9TTldaY3ZINHVzQ2xKMkYwbzlyeTlqendF?=
 =?utf-8?B?cWNvODA2Q3ZpU1YrSnRhTjFKOWdvTWV6aEY2T0NQN0hnN2s5ai9RVUdxb0Zr?=
 =?utf-8?B?T3VXWGpRUHdLQitZVjdEUXBNdGVESFRyaFJPUkR2cWgvTDhVNEtXU3N0SENN?=
 =?utf-8?B?MStaQkFCNWVlZDBIUlJCZFV0MmpOSDNPWjB2ejRVM0JscjFMc0UyczFXUzJt?=
 =?utf-8?B?QkxPdStlMjR4a0ZCZlNFVnMxdnpJTHliNjNyQ2NSNWdwNG9iRlU5a1p4d0lj?=
 =?utf-8?B?dTZpUlVpMTl2MVhnN0xadHViNXNicW1nMjFFd1RaSlBNVVdzYjZsdXplcE5X?=
 =?utf-8?B?UGF3MTg4VEtIblFWRXJNbGpDMkdJVUcrb3N6UGZaNG1Ec2ZRV0RiK3hnNGpN?=
 =?utf-8?B?dTlJV2s4akFrREZNenZQa2ZheHZSais4OG1XY2s1QjI4aGpxSWNhamthSll2?=
 =?utf-8?B?TXRWaG9mZFJCTTZpc0dDaUpkblIvaEwxbDl2SVc2NDdhRS9va3poTnp2Ykcr?=
 =?utf-8?B?VzRxci94KzdXcW1LYjA1M2tocEtGUmQ4V2dLZEdDMzgvSUpQTlZMcFNHU2Rr?=
 =?utf-8?B?Z0ZwMnErN3NMVVJaQ1IzNXhhYnFuS0xTVEhhK3pIdHBDUUJsaC9PTm5KSHQz?=
 =?utf-8?B?SXhWemZVRjduS0NxZWNPdzdoV0IwNDlPNGRrRFBxTEhMS1pMRUxpM2s5MHA4?=
 =?utf-8?B?TldCeGRXOE04U0p4ZldPeGg0NThMd3EzVW1XSFBaOUpPakdISi96dGw0eW93?=
 =?utf-8?B?aG5wOGhaQkRQa0RIb1ppdk5lL0JnTFRRNldvRzF2Zi93UG9NMmVJR24vVVF4?=
 =?utf-8?B?TU9CWjREaVJSZnJOdFhqOHZ5NGw0NXk1MFptdFhVVU8reEhLUnNOWktDUzZM?=
 =?utf-8?B?RnBwd2FLTVZ0bEFuKzlDd1ZjM3pHN3FFMVpDZ2h0STdzbm93K081ZEloZSsy?=
 =?utf-8?B?N1FKdytjMTJxc3dad3huZExhcVljdFFoQS84Ym9kbS9xTmR3bW5hRXptUHgw?=
 =?utf-8?B?K3FZaHlVV0cweDY0YTEyV1k4aE51NkozOG93U0Y1M2dZZzdoMkJOc3J6M2xF?=
 =?utf-8?B?OGdzU1ZxMUdSVEsvaUJtNjlHV0M2L1RFUTRZUDlkKzVtZitUV21Ta3pmd0xZ?=
 =?utf-8?B?QkwvdW5TclIrNFhoQnFZNFRMYndXOEkrS21NWG5aK3lIMHlDWUxqd1libnI1?=
 =?utf-8?B?YXNDTWVRZC9aUjZ1MWY0K01JTXgrUW9uVEpKNURSdFk4R3A3VmovUS9BTWxl?=
 =?utf-8?Q?p2iR8+qXK0blQz8DGfxKSlSyzAiN1fcvoA2H7TJtemrn4?=
x-ms-exchange-antispam-messagedata-1: mquoD/hYq827R9lGWC06BF3HV3b7DwCK+/o=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D2CA767D310F5D499AA3AAD881DD7B76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: au0AYUJi8p0reisK09Jjuzt9Z2/vaeyRkNh2iJmsdss+5QY5rkM4FnKGnvmb6sd0raCiGiwRaJcxgmMEK/n6aVT83MOOyAslXtAuHmiA4r6N4LYE89nfaULuaPPzmK0pocET7bw9keV6MZRBvxFbhN83iIkRQMurlbvZ97J4lxJWi2YCvH/F+3FuEfWnkHjPZdRykXHiR/wR0g/vcOw6c9tq9EOY3+xC+zsPGSiValGy3tu40+kgFvNMrHCtIeJukwWOL9cBGsZ0gZ4lYaKEkiXdwwfPLdVqTeMevqR4QEWfwxK0gKHTRMzNZmHs0iyZnbKrhTgXwaLcLA6UGtfyDA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9426913-43f9-4d41-682d-08dee18c5b42
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:43:27.5886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fMzkiEa0l/oFoZVd5CUHxLHWww/DguDGxpVflFOw6KadKq0i4UZGn+Rk5Tl6Dn55ysctUHuhx7cGcPqtpfFvkdZDYQE/YAdCWKWGJsECs9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4593
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C8EE75300D

T24gVHVlLCAyMDI2LTA3LTE0IGF0IDA5OjM2ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjMgNy83XSBkcm0vaTkxNS9idzogaW50cm9kdWNlIHRoZSBw
ZWFrIGJhbmR3aWR0aA0KPiA+IHRocmVzaG9sZA0KPiA+IA0KPiA+IE9uIFhlMyssIHRoZSBTb0Mg
Y2FuIGxvd2VyIHRoZSBmYWJyaWMgZnJlcXVlbmN5IHdoZW4gdGhlIGRpc3BsYXkNCj4gPiBuZWVk
cyBsZXNzDQo+ID4gYmFuZHdpZHRoIHRoYW4gdGhlIG1pbmltdW0gR1YgcG9pbnQuIFRoaXMgdGhy
ZXNob2xkIGlzIGRlZmluZWQgYXMNCj4gPiAyMCBHQi9zLg0KPiA+IFRoZSBkcml2ZXIgY2FuIGNo
b29zZSB0byByZXF1ZXN0IHRoaXMgdGhyZXNob2xkIHdoZW4gdGhlIHJlcXVpcmVkDQo+ID4gZGF0
YSByYXRlDQo+ID4gZmFsbHMgYmVsb3cgaXQuDQo+ID4gDQo+ID4gQWRkIGFuIGV4dHJhIFFHViBl
bnRyeSwgd2l0aCBib3RoIHBlYWsgYncgYW5kIGRlcmF0ZWQgYncgc2V0IHRvDQo+ID4gMjAgR0Iv
cywgdG8gdGhlIGJhbmR3aWR0aCBpbmZvIHdoZW4gYWxsIG9mIHRoZSBmb2xsb3dpbmcgaG9sZDoN
Cj4gPiAxLiBUaGUgcGxhdGZvcm0gaXMgWGUzKy4NCj4gPiAyLiBUaGVyZSBpcyBhdCBsZWFzdCBv
bmUgZXhpc3RpbmcgUUdWIHBvaW50Lg0KPiA+IDMuIFRoZSBudW1iZXIgb2YgUUdWIHBvaW50cyBp
cyBiZWxvdyA4ICh0aGUgbWF4aW11bSkuDQo+ID4gDQo+ID4gT25jZSBhIHBsYW5lIGdyb3VwIGlz
IGZvdW5kLCB0aGUgZHJpdmVyIGl0ZXJhdGVzIG92ZXIgYWxsIFFHVg0KPiA+IHBvaW50cyBpbiB0
aGF0DQo+ID4gZ3JvdXAgdG8gZmluZCB0aGUgYmVzdCBtYXRjaCBmb3IgdGhlIHJlcXVpcmVkIGRh
dGEgcmF0ZS4gSWYgdGhlDQo+ID4gcmVxdWlyZWQgZGF0YQ0KPiA+IHJhdGUgaXMgYmVsb3cgMjAg
R0IvcywgaXQgc2VsZWN0cyB0aGUgcGVhayBidyBmcm9tIHRoaXMgbmV3IFFHVg0KPiA+IHBvaW50
ICgyMCBHQi9zKS4NCj4gPiANCj4gPiB2MjogYWRkIHRoZSBwZWFrIGJhbmR3aWR0aCB0aHJlc2hv
bGQgYXMgYW4gYWRkaXRpb25hbCBRR1YgZW50cnkNCj4gPiANCj4gPiBCc3BlYzogNjg4ODANCj4g
PiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuY8KgwqDCoMKgwqDCoCB8IDMzDQo+ID4gKysrKysrKysrKysrKysrKysrKw0KPiA+
IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaMKgwqAgfMKgIDEg
Kw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gaW5kZXggZGIyZWU5
ZGU1ZWVjLi43MWFhOWE2OTI4ZGIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jDQo+ID4gQEAgLTUyLDYgKzUyLDggQEAgc3RydWN0IGludGVsX3Fndl9w
b2ludCB7DQo+ID4gDQo+ID4gwqAjZGVmaW5lIERFUFJPR0JXUENMSU1JVAkJNjANCj4gPiANCj4g
PiArI2RlZmluZSBQRUFLX0JXX1RIUkVTSE9MRAkyMDAwMA0KPiA+ICsNCj4gPiDCoHN0cnVjdCBp
bnRlbF9wc2ZfZ3ZfcG9pbnQgew0KPiA+IMKgCXU4IGNsazsgLyogY2xvY2sgaW4gbXVsdGlwbGVz
IG9mIDE2LjY2NjYgTUh6ICovwqAgfTsgQEAgLQ0KPiA+IDYwMSw2ICs2MDMsMzQNCj4gPiBAQCBz
dGF0aWMgaW50IHRnbF9wZWFrYncoaW50IG51bV9jaGFubmVscywgaW50IGNoYW5uZWxfd2lkdGgs
IGludA0KPiA+IGRjbGspDQo+ID4gwqAJcmV0dXJuIG51bV9jaGFubmVscyAqIChjaGFubmVsX3dp
ZHRoIC8gOCkgKiBkY2xrO8KgIH0NCj4gPiANCj4gPiArc3RhdGljIHZvaWQgeGUzX2FkZF9wZWFr
YndfdGhyZXNob2xkKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gKmRpc3BsYXkpIHsNCj4gPiAr
CXU4IHFndl9wb2ludHMgPSBkaXNwbGF5LT5idy5udW1fcWd2X3BvaW50czsNCj4gPiArDQo+ID4g
KwlpZiAoIUhBU19QRUFLX0JXX1RIUkVTSE9MRChkaXNwbGF5KSkNCj4gPiArCQlyZXR1cm47DQo+
ID4gKw0KPiA+ICsJaWYgKHFndl9wb2ludHMgPj0gSTkxNV9OVU1fUUdWX1BPSU5UUykgew0KPiA+
ICsJCWRybV93YXJuKGRpc3BsYXktPmRybSwgIk1heGltdW0gUUdWIHBvaW50cw0KPiA+IHJlYWNo
ZWQuDQo+ID4gSWdub3JlIHRoZSBwZWFrIGJ3IHRocmVzaG9sZFxuIik7DQo+IA0KPiBEbyB3ZSBy
ZWFsbHkgbmVlZCB0byBiZSB0aHJvd2luZyBhIHdhcm5pbmcgc3BsYXQgaGVyZSBzaW5jZSB0aGVz
ZSBhcmUNCj4ganVzdCB0aGUgY29uZGl0aW9ucyB3ZSBuZWVkIHRvIG1lZXQgaWYgd2Ugd2FudCBw
ZWFrIEJXIHRocmVzaG9sZC4NCj4gRnJvbSB5b3UgY29tbWl0IG1lc3NhZ2UgaXRzIG5vdCBhbHdh
eXMgbmVjZXNzYXJ5LiBDb3JyZWN0IG1lIGlmIEkgYW0NCj4gd3JvbmcNCj4gTWF5YmUgZHJtX2Ri
Z19rbXMuDQo+IA0KDQpBY2suIFllcyBkZWJ1ZyBpcyBlbm91Z2guIFRoYW5rcy4NCg0KT3RoZXJ3
aXNlIG9rIC0gY2FuIGJlIFJCLWVkPw0KDQpCUg0KVmlub2QgDQoNCj4gDQo+ID4gKwkJcmV0dXJu
Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChxZ3ZfcG9pbnRzIDw9IDEpIHsNCj4gPiArCQlk
cm1fd2FybihkaXNwbGF5LT5kcm0sICJTQUdWIG5vdCBzdXBwb3J0ZWQuIElnbm9yZQ0KPiA+IHRo
ZQ0KPiA+IHBlYWsgYncgdGhyZXNob2xkXG4iKTsNCj4gDQo+IFNhbWUgaGVyZQ0KPiANCj4gUmVn
YXJkcywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiArCQlyZXR1cm47DQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJZGlzcGxheS0+YncubnVtX3Fndl9wb2ludHMrKzsNCj4gPiArDQo+ID4gKwlkaXNw
bGF5LT5idy5wZWFrYndbcWd2X3BvaW50c10gPSBQRUFLX0JXX1RIUkVTSE9MRDsNCj4gPiArDQo+
ID4gKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsgaSsr
KQ0KPiA+ICsJCWRpc3BsYXktPmJ3Lm1heFtpXS5kZXJhdGVkYndbcWd2X3BvaW50c10gPQ0KPiA+
IFBFQUtfQldfVEhSRVNIT0xEOw0KPiA+ICsNCj4gPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwgIkFuIGV4dHJhIFFHViBwb2ludCAlZCBhZGRlZCBmb3INCj4gPiBQZWFrDQo+ID4gYncgdGhy
ZXNob2Qgb2YgJWRcbiIsDQo+ID4gKwkJwqDCoMKgIHFndl9wb2ludHMsIFBFQUtfQldfVEhSRVNI
T0xEKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyBpbnQgdGdsX2dldF9id19pbmZvKHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+IMKgCQkJwqDCoCBjb25zdCBzdHJ1Y3Qg
ZHJhbV9pbmZvICpkcmFtX2luZm8sDQo+ID4gwqAJCQnCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9z
b2NfYndfcGFyYW1zDQo+ID4gKnNvY19id19wYXJhbXMsDQo+ID4gQEAgLTY5NSw2ICs3MjUsOSBA
QCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICpk
aXNwbGF5LA0KPiA+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJRR1YgJWQ6IHBlYWti
dz0ldVxuIiwNCj4gPiBpLA0KPiA+IGRpc3BsYXktPmJ3LnBlYWtid1tpXSk7DQo+ID4gwqAJfQ0K
PiA+IA0KPiA+ICsJLyogRm9yIHhlMyBjYXNlcyBhZGQgYW4gZXh0cmEgcWd2IHBvaW50IGZvciBQ
ZWFrIGJ3DQo+ID4gdGhyZXNob2xkICovDQo+ID4gKwl4ZTNfYWRkX3BlYWtid190aHJlc2hvbGQo
ZGlzcGxheSk7DQo+ID4gKw0KPiA+IMKgCWZvciAoaSA9IDA7IGkgPCBxaS5udW1fcHNmX3BvaW50
czsgaSsrKSB7DQo+ID4gwqAJCWNvbnN0IHN0cnVjdCBpbnRlbF9wc2ZfZ3ZfcG9pbnQgKnNwID0N
Cj4gPiAmcWkucHNmX3BvaW50c1tpXTsNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiBpbmRleCAx
M2U5M2E0YjRmNWYuLjEzNjBhMTZlZGJjMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gPiBAQCAtMTkx
LDYgKzE5MSw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7DQo+ID4gwqAjZGVm
aW5lIEhBU19NQlVTX0pPSU5JTkcoX19kaXNwbGF5KQkoKF9fZGlzcGxheSktDQo+ID4gPiBwbGF0
Zm9ybS5hbGRlcmxha2VfcCB8fCBESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49IDE0KQ0KPiA+IMKg
I2RlZmluZSBIQVNfTVNPKF9fZGlzcGxheSkJCShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49DQo+
ID4gMTIpDQo+ID4gwqAjZGVmaW5lIEhBU19PVkVSTEFZKF9fZGlzcGxheSkJCShESVNQTEFZX0lO
Rk8oX19kaXNwbGF5KS0NCj4gPiA+IGhhc19vdmVybGF5KQ0KPiA+ICsjZGVmaW5lIEhBU19QRUFL
X0JXX1RIUkVTSE9MRChfX2Rpc3BsYXkpDQo+ID4gCShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49
IDMwKQ0KPiA+IMKgI2RlZmluZSBIQVNfUElQRURNQyhfX2Rpc3BsYXkpCQkoRElTUExBWV9WRVIo
X19kaXNwbGF5KSA+PQ0KPiA+IDEyKQ0KPiA+IMKgI2RlZmluZQ0KPiA+IEhBU19QSVhFTF9OT1JN
QUxJWkVSKF9fZGlzcGxheSkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0NCj4gPiAzNSkNCj4g
PiDCoCNkZWZpbmUNCj4gPiBIQVNfUE1ERU1BTkQoX19kaXNwbGF5KQkJKERJU1BMQVlfVkVSKF9f
ZGlzcGxheSkgPj0NCj4gPiAxNCkNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K

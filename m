Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFOFJ6SfoGlVlAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 20:31:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D88F71AE5EE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 20:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E16410E990;
	Thu, 26 Feb 2026 19:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkW+rIp3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E2110E98F;
 Thu, 26 Feb 2026 19:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772134304; x=1803670304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zQ2SkirqPtdZ7naYDAHHB3tqhyzob1JmZTao+9Xxwsc=;
 b=lkW+rIp3sRneVpA49czgjOo3QoIaKYdDpAMu6NwTcfmAwQGmt+DBeNly
 Ao2MW2bhAaaVv+z7e3HNVqH2me8DZf4PZw3cu00VAt7ZYTAcPvrnIBpSk
 HtaSwkViXYAe9iVACUwW9NhJqt11PGcMz7YsyWO4VxQaZ9O7N1jcCGUX8
 wpOtEfK2Cds0AS8zeR9YUFSM2HtviNPFyfV4UN9cs87d1bwwz6sVSPSaN
 viv1BCdsba/8KQnEfGGxaPcoBIY2r6K9ouBN2a7wUkkbyKrR5kv/idLyX
 DnsOPZ5O2PDVogk9rkJ0KLm66OCBvmmjVYsaaOBhq4wrIytE2vUP6CeTN w==;
X-CSE-ConnectionGUID: GyHzTZwzROKT6rohfmigsw==
X-CSE-MsgGUID: YAba95MpSAmtX+zWHUaHgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="84564245"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="84564245"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 11:31:43 -0800
X-CSE-ConnectionGUID: JM/7onbbSXSqTZB0JgeJdg==
X-CSE-MsgGUID: Y8ZuGdtjTgavLPSZ80pMTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216683409"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 11:31:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 11:31:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 11:31:43 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 11:31:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=geqA24j5NJ5CUO/WnLudFmiJYgPTL9H6uqEdi9QBD2fvS11nKi8xD1binSBgTJ6fe1QB0eLXHKp/lQiyWgwOsotOnDON/Eta3EaHmRaY3MELSR5w9cX0ywklEJcWN5v6r47vKLR2KwHKXeQyDP8EYGVJebAc5NWJ/uTPTLrNDT0A/aMxMptJGi0AbrLVcEaAsJDt0CBiwbpwo9orPPf0CUyZJ2qshQBHmW0gjDE5+XK+uiPSF9pXJCR0FDjX1XvZHQIj+Ukz6bU2b6+mafjF6iS/7ZBBsd5a3zxEpCgkERqVKZWYHt34tsYcvJzfTw6g1MySkVnFNDXhCjeQNLa2NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zQ2SkirqPtdZ7naYDAHHB3tqhyzob1JmZTao+9Xxwsc=;
 b=crHJx4JBpGwHxB9Q34dMKbY+nd+/cW2UHArIYtv2ZkQEbl+vkylgqRKTXi1fZ4e2XiKeTNQNYxeT1VTsulmg+9BuxkVO+lAhQKuSYTFA9NNnxAaLgeZoW0/5yR1oXG5f96yMOUYyHJm2kz8+FBkYUXN9kh9TfyeVYiRYwMNxFH637iEvnuwOHTVJIgp2Pf+1Di0UUBLBTNu8ybkOGwJwJDf+VOHn1bk/dhaJz7l9OcfmA/aJZBawuqmKcoh28IBYqQ7tFnSQZYfXC/y7I/E7aZoF0rqUlrOJzDKpNrYrvPE7RkXa50k0RLHXoy44pT6re+ijJXdlspxCsrDMSxZ04g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Thu, 26 Feb
 2026 19:31:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 19:31:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [RESEND_V3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [RESEND_V3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHcpWlrOjrSXmeH+UC8lYRlMDeM/bWVYjuA
Date: Thu, 26 Feb 2026 19:31:40 +0000
Message-ID: <ce8a6e26acc759ddd9834284f30d6f0749886f88.camel@intel.com>
References: <20260224081009.3120480-1-animesh.manna@intel.com>
In-Reply-To: <20260224081009.3120480-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: 1cec571d-ea7b-484b-2eee-08de756daaad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: FKK/7TbeMJgCtJ/LtWlw/mbHnHJjkHlwAq6gllCiFgFG/D8dq76gtLNylxzziDhUsY7xxF4nD4nLHL7PsfbYiBF1NEVEwF7qtvjwm1OAuobLfFJe8E536bbr/NUFjzhpuAkO2xNu0gAiIqOCf7IqS8VqIHHoFjDxjPYl8b3lvT5acving/i9d69jMMuOMbOEk6JYDoV8cd6HaM9pTOkCWuvYxqD0o3HJWF0vUDIlbY3cKznNkyEC6LmOmlgXZ8tPKwYv81Xa7a66D9OZGBTNnxnEvjDRDYPrs4GZTtxe9FaxjepPF+OFjvwkuZ52/B91C7zE8t0kbdMSBqgrzhZ0sy08KxfBvFHNA4tiikYPXI8ETTbb2EbOc4WW6NauCEYi1/i+Gi5bkic3f0VGXpq6/BNtkaIXkHthbDwWmvQ7OLwsIpogpCaKEVkv5aEmwMpJqSDCpTxEwb2NUoBIV7cRBEMx1+liIVOhKp17KVof7Z0UaeNHq1S6AQPZmiyNBdKeTOtroNP2RuMHquzszFxujioeO/icv1WGMeE8gSFp/Mth/rApootcNjthIIyQf/KPaTbP8Xt0setslfn1fLfZn9UOY/SPeHFFtrxQ6rtrsw00DPX9WKp3n4p9JwVlmGJOE0JgjeGs6iaqDbQPttFbpKv8G17BjVhY/jHGBK6QhKI4/mJ6YMzUSGMl8mWaci2l0JnRqNsSd4TgQ7xAkdXdWAgW6m5jLcoNpPJzjDpDI5tNa2Ms+lJjgX+zSeDK0cmx/uSk1PFHQDKa+r/6q0hv4UR/HSScR0IG2ZdWe1/QS1g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3JreTBUdWtLUkVKRVgxaWc4anRFdFJzRnVSTm44TmVNS3pzL1AzNmEvQnlx?=
 =?utf-8?B?bWppTGJYemVKRjB4cFR4TlBRTm12ZHNtZ1RmVy9iNkRLVHhRb2dOamViQkQr?=
 =?utf-8?B?ejdmdEFmY25TSkhxZldTbGVGaWI2VU1uQmh3a2pSbkEwZHBuQUpISndob05C?=
 =?utf-8?B?OThGVDlYcGVSaWJqb0FOR2pUMjdjbUlWT3l4RmFqbHhMU20yc0lDdFllRG5t?=
 =?utf-8?B?TjRMdDIyUUw1QXBlR05MZ2gvYkNlUXhmSE5SMjB3QUFGMXlULy8xMHZkZ0x1?=
 =?utf-8?B?dTBXTlpnaDJ4VzdhalpjbUNyeGtUSlBpMlAwb0hGWkpiYnBuZDdaRzZ5ZDlY?=
 =?utf-8?B?N05PRk1RaHQzT0cxWS9nUVVzOEZqeEI0cW41dVB3NWFZSnJEQUxRcjlLajRk?=
 =?utf-8?B?cFNxdVNJMDdHR2QySXVIVXQ0UDZJYks0bmNaNmRobzhhaitTdHNmQ2NQYVov?=
 =?utf-8?B?TUxZd3liY21BL04vNVdkdkJ5YU5lczJrNEoxR2ZUS2J1RlBGQkoyVWc0ekE4?=
 =?utf-8?B?S2hFN2Y0a0MwOC9DbDc4UEQ2eXNwM3ArdkIrVVJLRlpMNGhyQmZhZGN1YlRo?=
 =?utf-8?B?UURKRlh5dGpKaEM3NE9Ob21wQW51Ky9FL1IwT1NZOXNUVit4bVkrUjVhNCtO?=
 =?utf-8?B?SnJ0VkFQS1pKQUszQWhmWmQ3YXZEQ1o4RlcyVzhZNWJ6Y09Zb0JDSlRhbDQ2?=
 =?utf-8?B?T2UvazdZZ0hxY3k1a0J0aVUwRkkremJPV0JNSDREcnZ3M0lzVytWN0R6TVhY?=
 =?utf-8?B?eXdPb1VVUEZxS1dNbUx0dTdUWG56UFJSOW10aDVNc3lzSUxHTmNyQ2lkeERO?=
 =?utf-8?B?SEgvQXhvVGY3bnhESHYyVnpBQWNCakFIK2dwUGRzaU5uV1diZDBOdzlVNS9E?=
 =?utf-8?B?QzRKSmExeFJjVDhSbW9oejZ2cTJobnFUbTc5YmNUQTFyQzBFQ2s1WWoza3Mr?=
 =?utf-8?B?RHhGcHc3MVFTSkZFR2FyRmxiODN6RHZ3NnRtOUVXUjZEUVZ2REdEeGt3YlpX?=
 =?utf-8?B?UWtsUTFDbTRWK3U3akJOckZZUXVaYlpnVEVodFZjZkFnVk0weHJTRjkxKzdh?=
 =?utf-8?B?U0VpM01SUWJSYmJpMmdSZjN1NWc4VWZ1Z3pnTmtBSmtlWElaZGtwSnhCbzBu?=
 =?utf-8?B?MUtkNDFidGlTTjkwT1AzeFMwMVYzQUhzMEhiUFJVUEVJTDdCcjNtbG9iam1D?=
 =?utf-8?B?dThCVFMyNTM3dVZzUjVlOGJZdVhBR25KR0Y0UkE5Vis0NlJDZGRpQUs2M2Vn?=
 =?utf-8?B?bVJWK1NHUnp1d2ZWL21oUHE5QXFkRHpPZndndDRJL3lZOTFnbUluQzgzWHRy?=
 =?utf-8?B?UVVxRDNXdGN2VFc2VzloaUttemQwTnVCRm9yeHFGT2dubWtKcW16aUN0Zisw?=
 =?utf-8?B?VDVkOEVlZjAzOGZ4ODU0SGhnWHZ0K3FoY1ZHN21sYy9UYmU3UThBelpRYndY?=
 =?utf-8?B?VFFPK0ZPR25DeVpPb0xwYkkzT3FOeW80Q000YVRCcXN3elZYbkM3Q21YMEYy?=
 =?utf-8?B?dnF5SWpScGNSMEVBNld6YTE4c3A4eUsyNmVQR011bTl1OStKbHJsM3RsTUJY?=
 =?utf-8?B?VmUrOW9WaWJaSEdrc0VGODBacExyYVdPUU9GeXRWTHY3TUVFR3hVMTBCNHFp?=
 =?utf-8?B?YXdsbG9pdWFyekwxVkdWajl4MXMvdXN2VGMzajVGaHVURDB1YXk2S0UvZFpW?=
 =?utf-8?B?K3V4ZTZzNzYrNnBsWTNXQkFpOWFzUEVoSlp1VlNNQVFZRUQyc3d4TGNlRnVM?=
 =?utf-8?B?bks5SXRtMFlYZXNVNmMvcHJKWDN4Wk54Z2RCY3IvZ0VNcVA5UnVCK2N2QUUv?=
 =?utf-8?B?OGlIM3hFZEM0VTgvVStrcmg4cFVLbEY0bHFhQWpXeGVoQjRtVXdQQlVLSHJZ?=
 =?utf-8?B?eHNJakpNMTFjRmxzbllKZ084WFo2S3VtUU5IQnNIMjJwVW50dzhrZ2NJS05V?=
 =?utf-8?B?QVdnTkxIVGVGeXBZVG9jeG05VW42SmFWNCtDN21oMSt1MnEySng1elV2Wjh3?=
 =?utf-8?B?b0pHaWVUSTdQS2w3cDJqMkduMnJuL1hJbDBuUW1BU1BMYjREbFpsVUR5MnVM?=
 =?utf-8?B?R0hqa2VVemtYb3l0VkI0eGJBZFZBdlFkQ0tmTXQ3cHc2M1FhV0NnQkFVcGJa?=
 =?utf-8?B?M0o3TlBwMk42NWxoV3QzUnhDQTdYNWZzT081UTlrUXptUUpxZEo4dmVtdXRw?=
 =?utf-8?B?MkZKU3lWSnpqbU1EK2RON2dzeGN1MXFpeXVzYzdiYXZCdlhpN3J2QlBncW1U?=
 =?utf-8?B?OTdFczhRVi9hZnJ0QWpVZlJJd0NXNFMwWXVEYjVYVlFDd3lhYzN6OFhiTmpy?=
 =?utf-8?B?Z0hOZC94Z0RycFkvVEJ4SkkwN0Q5V2dTS2thSk5zNmJ6Zy84cXZ1Tk1qNFNi?=
 =?utf-8?Q?a0XByBrN8cpiPRbkFvYwRi6AMjfgYo/zBqWZKPb2mInkM?=
x-ms-exchange-antispam-messagedata-1: NDqvFAoQ1pc6bMgHrNtVyWkwVYXIFHNuLuw=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FA17D541F9A414439FD3306A46B7A8AE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cec571d-ea7b-484b-2eee-08de756daaad
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 19:31:40.8190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KY8se/7jfZ8ZTbiMXAhruH9okCzBfbxQIPOcNfw3SYWGwcWEuEvq5EJmhNMtmRMZ1IMBYdvr9gQgkNYf1ZaLb6+v021fveyI9PaG24sRbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D88F71AE5EE
X-Rspamd-Action: no action

T24gVHVlLCAyMDI2LTAyLTI0IGF0IDEzOjQwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiBCc3BlYzogNjg5MjANCj4gUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0
aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHzCoCAxICsNCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDI2DQo+ICsrKysrKysrKysr
KysrKysrLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9yZWdzLmgNCj4gaW5kZXggNDllMmE5ZTNlZTBlLi43MTQxMWIyNmU5MTggMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9y
ZWdzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3JlZ3MuaA0KPiBAQCAtMjI2NSw2ICsyMjY1LDcgQEANCj4gwqAjZGVmaW5lIFRSQU5TX0RQMl9D
VEwodHJhbnMpCQkJX01NSU9fVFJBTlModHJhbnMsDQo+IF9UUkFOU19EUDJfQ1RMX0EsIF9UUkFO
U19EUDJfQ1RMX0IpDQo+IMKgI2RlZmluZcKgIFRSQU5TX0RQMl8xMjhCMTMyQl9DSEFOTkVMX0NP
RElORwlSRUdfQklUKDMxKQ0KPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VO
QUJMRQkJUkVHX0JJVCgzMCkNCj4gKyNkZWZpbmXCoCBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VO
QUJMRQkJUkVHX0JJVCgyNikNCj4gwqAjZGVmaW5lwqAgVFJBTlNfRFAyX0RFQlVHX0VOQUJMRQkJ
CVJFR19CSVQoMjMpDQo+IMKgDQo+IMKgI2RlZmluZSBfVFJBTlNfRFAyX1ZGUkVRSElHSF9BCQkJ
MHg2MDBhNA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
aW5kZXggNWJlYTJlZGE3NDRiLi5jYTI0MTVlZGRjYWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDMsNiArNDMsNyBAQA0KPiDCoCNpbmNs
dWRlICJpbnRlbF9kbWMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHAuaCINCj4gwqAjaW5jbHVk
ZSAiaW50ZWxfZHBfYXV4LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+IMKg
I2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5o
Ig0KPiDCoCNpbmNsdWRlICJpbnRlbF9oZG1pLmgiDQo+IEBAIC0xMDIyLDExICsxMDIzLDMwIEBA
IHN0YXRpYyB1OCBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+IMKgCXJldHVybiBmcmFtZXNfYmVmb3JlX3N1X2VudHJ5Ow0KPiDCoH0NCj4gwqAN
Cj4gK3N0YXRpYyBib29sIGludGVsX3Bzcl9hbGxvd19wcl9id19vcHRpbWl6YXRpb24oc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiArCXU4IHZhbDsNCj4gKw0K
PiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDM1KQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+
ICsNCj4gKwlpZiAoIWludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2Rw
KSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJZHJtX2RwX2RwY2RfcmVhZGIoJmludGVs
X2RwLT5hdXgsIERQX1RVTk5FTElOR19DQVBBQklMSVRJRVMsDQo+ICZ2YWwpOw0KPiArCWlmICgh
KHZhbCAmIERQX1BBTkVMX1JFUExBWV9PUFRJTUlaQVRJT05fU1VQUE9SVCkpDQo+ICsJCXJldHVy
biBmYWxzZTsNCg0KSSdtIG5vdCBzdXJlIGlmIGl0IGlzIHdpc2UgdG8gcmVhZCB0aGlzIERQQ0Qg
cmVnaXN0ZXIgZXZlcnkgdGltZSBQYW5lbA0KUmVwbGF5IGdldHMgYWN0aXZhdGVkLiBXZSBhcmUg
Y3VycmVudGx5IHBlcmZvcm1pbmcgcHNyIGV4aXQvcHNyDQphY3RpdmF0ZSBjeWNsZSBvbiBldmVy
eSBpbnRlbF9wc3JfZmx1c2ggY2FsbC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiArDQo+
ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gwqBzdGF0aWMgdm9pZCBkZzJfYWN0aXZhdGVf
cGFuZWxfcmVwbGF5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgew0KPiDCoAlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0K
PiDCoAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gwqAJZW51bSB0
cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiAr
CXUzMiBkcDJfY3RsX3ZhbCA9IFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFOw0KPiDCoA0K
PiDCoAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJiBwc3ItPnNlbF91cGRhdGVfZW5h
YmxlZCkgew0KPiDCoAkJdTMyIHZhbCA9IHBzci0+c3VfcmVnaW9uX2V0X2VuYWJsZWQgPw0KPiBA
QCAtMTAzOSwxMiArMTA1OSwxNCBAQCBzdGF0aWMgdm9pZCBkZzJfYWN0aXZhdGVfcGFuZWxfcmVw
bGF5KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgCQkJwqDCoMKgwqDCoMKgIHZh
bCk7DQo+IMKgCX0NCj4gwqANCj4gKwlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYN
Cj4gaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGltaXphdGlvbihpbnRlbF9kcCkpDQo+ICsJCWRw
Ml9jdGxfdmFsIHw9IFRSQU5TX0RQMl9QUl9UVU5ORUxJTkdfRU5BQkxFOw0KPiArDQo+IMKgCWlu
dGVsX2RlX3JtdyhkaXNwbGF5LA0KPiDCoAkJwqDCoMKgwqAgUFNSMl9NQU5fVFJLX0NUTChkaXNw
bGF5LCBpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwNCj4gwqAJCcKgwqDCoMKgIDAsDQo+
IEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFNRSk7DQo+IMKgDQo+
IC0JaW50ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID5wc3Iu
dHJhbnNjb2RlciksIDAsDQo+IC0JCcKgwqDCoMKgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5B
QkxFKTsNCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0N
Cj4gPnBzci50cmFuc2NvZGVyKSwgMCwgZHAyX2N0bF92YWwpOw0KPiDCoH0NCj4gwqANCj4gwqBz
dGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
DQo=

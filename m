Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D420A7F712
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 09:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E6610E604;
	Tue,  8 Apr 2025 07:51:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGGx8IUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0144810E615;
 Tue,  8 Apr 2025 07:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744098705; x=1775634705;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EMomW5bbYZ5XL6yFljcwsPb0/DOiEo5o69csb8kFZII=;
 b=EGGx8IUnfGDer1k0vIR2c4bYdJ4khorS9PVkTUO3W/AQIV+MbyRsb61R
 EW10XeSVUfCjZiITCq1mHMgCOySVaecIBUwh2uVO88dFqNMCIXkP1lJZm
 6cHexuhd5/Pkmw1gqiGDTUmXLPoNeHE4IW0N7vwS2d+CtSZ1CWVSENI7H
 TmlJwdyxaYR56AaBGHMQ0WDjRkLDuDNpBC4LOBJa4BxPChAboHGB6yYPI
 dGbbp/1z90Gb/u/ihDNZ136lLOTlwUuc4ocEh2+KWRMKOf8VSHuZwVKbA
 TNHlyvw6M8KsjGhPaz15iQ2Yi4Z3s8HpG5cUgoEvQ8Blr6aMFasxOiNVa Q==;
X-CSE-ConnectionGUID: mjiilKONSPGXBVGM72mgPA==
X-CSE-MsgGUID: 59RNsGuQQI6sZkgwNME7lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49312714"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="49312714"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:51:45 -0700
X-CSE-ConnectionGUID: pXuJXQj/RNiHwY/83yBpNA==
X-CSE-MsgGUID: 5MpMj4ClQwGmgCtwVZck/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="151380642"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:51:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 00:51:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 00:51:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 00:51:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hYc6EpTv30ImNiNF/ZJWRn29PN6XiEDXGVxVf9xV64FnkCI6wwKYUOlfZ5vNRgAmzuUD9JUK+Ow1NdlP9piAybaCRNhXnZfN8cXuFoFYhow6vQsXNkKKBU/GcX9vBGkTDS22OdnaNnAotEmjIWZ5Z1DfvTNfP6UG1q6bxZsNshn35eA7C5sVpPVGiGo+N1EAlSw7mWpXO1XEJXMncjsSyHnCmBqTxtmEfqnNXODi2pRZoVnN3PREdKGgmb5evc6LZLNO0dCpEqvEprmaO+avEZGcs2QiUV6AXpzpl7ht7dogVgmB+O9xKzPPbAEv+og19QWVJU5wrdsguR0z/pFBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMomW5bbYZ5XL6yFljcwsPb0/DOiEo5o69csb8kFZII=;
 b=kKDpvoyYxvr1EjRkmAy/6q5jL7qAMfxfj9cynpx35PJvEYmt1kuMVmPV2Rk1FzLEPmx1hLrfaiGB3V8GS1qEO3cdMLfBXuGJ3L0ivpIbEnt42k/u+ViVGPPjIXcPPxICc4UiW7xvEP1/WCKIQlpuOLXWqsUa/sZycIeIsJoUOMlJZMggtA5Utp6adAHO0E0v9/xwiQh+wdpzdN7frFWNCLvo/0aqHagdoBGPxUqieyJpAm/5wuoxDDb/BXOhYLa1/l8OcO0OrwcDPQEz3ZPaRU5yjXoarUtT0NWPZha1d1SEqzNrAo6KZSYiSCWG6f0Bqu/zyuXBMrXD6iZYt02lOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF1FF629472.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::818)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 07:51:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 07:51:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 3/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Topic: [PATCH v7 3/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Index: AQHbpH33L8ZmooUwrESzikOR27fuq7OZbQAA
Date: Tue, 8 Apr 2025 07:51:11 +0000
Message-ID: <1e1bd37383aa1837afc44f69c4aad332392d2048.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-4-animesh.manna@intel.com>
In-Reply-To: <20250403092825.484347-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF1FF629472:EE_
x-ms-office365-filtering-correlation-id: 21d075fa-9fb8-401c-f2fa-08dd76722190
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TWl0cHdoa2pzaWpPMCtRemN1WFRza0MxUG5LdVkrT1I2QWJ1dmpSdGZOOWRy?=
 =?utf-8?B?Z0VCWlU4aisvWHgxTFNaQTBiNU05OVo2RlQ3aER4b3lwNHRPTlk0VkNjNXQ5?=
 =?utf-8?B?UmZReXpJZXRuQU5BdWxkcDJUUFlCSllOSUJWeGR0QkxoVllYNTBFYVdRRm1h?=
 =?utf-8?B?N3I3NHJja0Z3ZzNmZWwzL2FMMVFNLzBJMmZ6cmVEVFViaEQ1enVWL0ZRU3JM?=
 =?utf-8?B?T0xUT0Z1VmIyMmV5ZnFDTmVaRzZGTmdQMTVCTml5SnByZFNDUVFCQkEwbEV0?=
 =?utf-8?B?dW1HL0ZwNEM2bGExb0dDVEMzeWE3ZTFNOUE4SGw3ZlZwOTlUUVdsQUlzQSt1?=
 =?utf-8?B?Z1ZGZEtjQ3hzaDA0bEc4d1RqTC9Sc21jRXNLMU5UeXZzSlp4NXlKNThOcWF6?=
 =?utf-8?B?N0dmRDVCa0VDaHg3NldXdVFZNmZpMFNvdVBjdXZiOVN5K3NUOUpPMjkzcFNv?=
 =?utf-8?B?OHA4YXR6VDJOTlFjMVFnVFpnVW9ZNnREWU5icnZ3YkFnaFg3QmljOFFkSjgy?=
 =?utf-8?B?T3BOb2Rab01aU3lDUFg4YTkyN3VDR1VuOHNYMldTOU9obW5YTmdzYXFCcDM1?=
 =?utf-8?B?VVNBUEJHbkdzS3pyRXpxTGpKTFBGVmpHZ0VaUURmazhGak9wSnNHYUo0YlZx?=
 =?utf-8?B?aWlhYkh3NGhNUTZCRUV4QVd0aVpnMkxydkVGWXNqdEM3QUo5WUNFa1ovMUxY?=
 =?utf-8?B?TlN1bE0xRUJBbGlPR3hiZ3MwY0VUUkR2Z1pDcW9hWGZHTUFFSEV6ZE9MNklX?=
 =?utf-8?B?aWZHNkhVRndZckg4ZDhtcENVNTAwelJNdEp1YlB5NkhXM2psWU12T2xZSUp6?=
 =?utf-8?B?NXluUVRiL2JvSG4rbUZXRldKNVI0N2tPdkovSkcrMVhqYUtGSUtXTktESG5C?=
 =?utf-8?B?MFFpMm5QR1VkaktjWWxjWGdraWEyQVlvaU44VUxuck9zSTRDdWF4QXl0NlR3?=
 =?utf-8?B?dURGUjB3SXplbWJmNzA0WnRudFNaeUpESVkzMTFVK3JXRXhraTllb1Fkc0hl?=
 =?utf-8?B?NFBWV0F6bnU2SDFNeW1SNE5hL2NMZnNkN3lvNHl0YlpBVWN6OHpCRjRiOFgz?=
 =?utf-8?B?SmZZQWdGSXo4VlRldWtwbGFWVFJ6WjdqdkZPUjBzRGFDTVIra21DWHdSa2Z4?=
 =?utf-8?B?TUFqUHY1R0QrbVkxWWxyYzRZTmlKOGlKTU9YMW0xc21YOFg0WFNMSmVHVytL?=
 =?utf-8?B?RjJYcXB6ZU4wVDM3Q2xZYVgwNEh4blQzZ3NlZmdEMDcxaERsMkc2aDJTYjR4?=
 =?utf-8?B?MzNwQ01SaTgraXNoYVFoMXNqdno5NmxXWkpKYVBmZVYxYjJuallwK3k0amZT?=
 =?utf-8?B?Nzc5Tk1RcXNRcjVyYnlmQmxvTEtKOWJnWnRYYXppRi80V201TGIwNkFVUnNR?=
 =?utf-8?B?Vmx3N1JTa3NmMllWZnJWaDgxaFhhMkMwcmFxY25yU25CT0lxRWphTmZDbVc3?=
 =?utf-8?B?cWlQQ21aTG95Tk9ZVXMzcmMvNlBCaUlncXU2VXNGZzY5QVlNcmtEM1RJMnM4?=
 =?utf-8?B?aUIvNy9HSEpsUk8vTTF3RFBjM25QdkorSmw2dzFJSHZ3R3BqaDIxSFYxeHpU?=
 =?utf-8?B?MGtiU1g0S0VDN2JzdmpoaFp3c0xRNktBSmlaend3VDl0WkE5ZGpIMmsvNEFG?=
 =?utf-8?B?TzRmSEErckdZSFh4eEpEcU53Qkpxb3pxYUNiTG1DVkhPUStaQ0VxWFFCaGVj?=
 =?utf-8?B?RXAza0wxZXVmc0ROVzAyWmhXclpHQ29nczhoOC9wZTV3Z3VmRzZlWkJuWU1v?=
 =?utf-8?B?S0Z5TkYxL3VXa2J5WkdCSkUwcm5pS3I0YnRGNGk5Qk9xK25lbU95Q3ZRTDRW?=
 =?utf-8?B?ci91TDAxM1ZXMWp3bEprNDF4d3pjNHFHTDl2RUo1NHoxNC9HeDdnZi9oTi9T?=
 =?utf-8?B?N3N6TTRwZ25YU3B5eHlUcWVQMTQ5OUV2UEIzS01XR2RjeEFsaTJNcStObnd6?=
 =?utf-8?B?ZzIyQ3Z4V1VzZEh3OFk0T2M4QisyK0RsOTd3bjJuTUVIOXlmTktrc1NhZVIv?=
 =?utf-8?Q?kUFTk5tBNkGoVlXXg0YZ5T1ueaojXo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dE90QlF6eTREeVc1aE1wT0RUOWdGc0tQVW1DWmpPaFNXNjRuRnRtS1RpUVVx?=
 =?utf-8?B?YkNFRXdMbFl1eVFiS3EyZTJ2UVQ0MGZxOVN2RERsSVdpOHludW9nM0F2TEFY?=
 =?utf-8?B?L3F1NS93OS92QURPTkVhalBoM2hzRktyYXZlQXNJWHhrMVZTc2ZwZGtmNFE5?=
 =?utf-8?B?Wm5EM25DN2dGRUFua2QzVGlEcG9COGFpTWlFMm12Ny8xUFdWZTRJektVZmY2?=
 =?utf-8?B?eUVsYUhBMmxacjFUTTBFOExCTFFLL2RUQkxxR1NMVll5bVlPVFEyYjU3Mnpy?=
 =?utf-8?B?bW1vaEpiTC9TSC8wWWZuS3REL3NoTkh4ckpBZHFsQy83Vm9Yd0NpcWJvSmp1?=
 =?utf-8?B?Sjl2bHkvU1FGR1dvUFg3dWIzQTZNR1lWT215K0NYUXZ3YjI4UTdpRDdYNzBk?=
 =?utf-8?B?UGRsaUdSYzMxeThrS09IUkNoODNzOTJkWnhNb240N3A2WUYxVGJqVFIyeGla?=
 =?utf-8?B?M2tvNUljVmdaSE1qa3M2WEl0Y2tmRVlMZUFDQjYwU1BlOW0zVVhiRGFMVmgv?=
 =?utf-8?B?bFd4OTNqZ1dhSXJ5RUU2My95Rm1xbmI4MkFPSzVKemJxNEFHOXk1L3NYSzY3?=
 =?utf-8?B?MFRualR1Y3BCWFo4QVNXSWpQSWZYcGthZlIwYnZ6UDRkWmZHODBwSDl5YXRT?=
 =?utf-8?B?VTZMcmxFclQ2WE80V1V4eExQSTBlU0hXaEN4R0QxcFZvWlI2V3JhTnVZTitw?=
 =?utf-8?B?NGZnRmdsOFFUbzMrVTFKdnlieVdKME8yR1Z5K3FaMzR6OW8rNU1BemE3cW9P?=
 =?utf-8?B?Zk5IYnBVSFA3c1NJc1JQbTJPNDdRU2dCTnJrS2lWdlQ2NUkrRDJrN0o3TXRJ?=
 =?utf-8?B?ZDFKSi9jSWx0MmQ4RFFybCtscWcxaXJuTUZBaWlCdkFhRXJ2VU43SjRUWjJx?=
 =?utf-8?B?ak9uQnhyaTQzK3RqOUIvQ3pmTURGakJBcXdZV1FKWUsyK3E1SDFoSVArV2pR?=
 =?utf-8?B?U3RCZ29JRE5wY2NmQlNQQjBjQVh6TkJQR2RwTy9jRnc5QUZxb1lxZ1RYSk9w?=
 =?utf-8?B?dGhKdXVrN1owU1JLdVQ1akpVc1ozbDBoM0JKNTZueStqQkNhQ0NESGhlUU8r?=
 =?utf-8?B?ZFhzUS9TQ2RLdmpSOU1MajZ3c3BwRk1QTitiRVB5czFhZzh5bE03RWM4WDRB?=
 =?utf-8?B?S2svSVBMT1k1M1lIMWh2eGZHMURjUkF5QmlYc2p3YXR1ck5BSGo5Z1ZCSXdC?=
 =?utf-8?B?V01pWUQ4aHZ0REh5OGpSQ1hDUVVoMXJOQkd1NGlhQ1dQOWFNQ1d5QVlnUXRl?=
 =?utf-8?B?U2RoM3llc0FTZVRPS3B2NGJ5SWxxYjhBalgxVUJzWHpYWnVRdDMxMW1yb1JV?=
 =?utf-8?B?L2xTU1NWUkZqclNUZ3EzQzVzaVlpa1Z6RDdhWllnZ0xkYi9INFBqV2tITCt6?=
 =?utf-8?B?NEJkdkFDSkZQK2dKNlFwTU9nNGwxcmE4YlNMeHpZYmFiSE5WcTFucVVrWEdK?=
 =?utf-8?B?LzhZSGxoeXpabVhzMjl1Ri9Fd2tUOWl2UCtFMnU4a2FkSk4rY1pDSUJnTzBL?=
 =?utf-8?B?SERiMkYxZVVjZUlPKzl6ZEpnb1VNYkVXVmV2ek5sVHFOWll2UWpDSWRoRzNa?=
 =?utf-8?B?QnhlYjY2QWl4WWkrODBHWGZyRFY3NWc3N2o2NnRmVVlSNlUxVFBoMDhZYWpT?=
 =?utf-8?B?QldFZE5qYWZKMitGTHp1NWhhWjcvczRYS3hQR3hSZ3V4SWlhUFVnTVh6WVZP?=
 =?utf-8?B?ODNmUFcreTlsdktaYmlQTWxKcWtRMG03M09iczVHUDZHZjAzVEx6Wjd5SDNu?=
 =?utf-8?B?R29wem8vUE5hdm9tM2xXd0ExYzlHOHoyeXdhRFB4YzFqbUlmQTd3VGdmVjYx?=
 =?utf-8?B?TWp3WTF2Q1B1SCtpc3pzZ3dwaEtHSmdaTGVadWNxMjRQckkrR3NWTWF0c3RL?=
 =?utf-8?B?NGlpYjk5emxXU3dqa3N4T24raURBK2NCdVFtVUVOSk9DWm95WkkwOStkQWJq?=
 =?utf-8?B?U1NXdjJzYmI0bEppRzhCenQ1N1lLNUlkQkViMkxGY3NJenVuaExEbWtQRW1E?=
 =?utf-8?B?MEVKM0xHaFhqRXJtY0dmV1FtVFFDVmsrTmMzanlZamV1clQxbndIZnpEUXNq?=
 =?utf-8?B?SDQrOTNwOTBXYnl2U09vQ0lLSHpCRzh4L2t5Zmk2dWZnb1BHLzArZFMwVGlx?=
 =?utf-8?B?cUJKSHFoL1ArbXJXbjRiQzhnMklKODYrcVd5eWJOWUZGL1hOblVOblQ1T1Y1?=
 =?utf-8?B?czFSUDQzSEFBTERvc09PNDNwc094MFp1ZTd6ZXhkY1VxUnc2Mi91Uyt6ZXdE?=
 =?utf-8?B?dnVWYTBMMGJ5d0xHR1BCQWp1S0t3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FAD02F86E81BA045881F75F61ED44111@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21d075fa-9fb8-401c-f2fa-08dd76722190
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 07:51:11.7564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GurJm4KObhZig9GAgkGg9OLLSJsZ1DCw4eVEdWGO8A7dgPRRWnh5QLo430A8NQzXNOP+Abc4mUSfCSlWgjdwp+Nf2ZSEF4yJjLjyH5gf+JQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
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

T24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBDdXJyZW50bHkgY2xlYXJpbmcgb2YgYWxwbSByZWdpc3RlcnMgaXMgZG9uZSB0aHJvdWdoIHBz
cl9kaXNhYmxlKCkNCj4gd2hpY2ggaXMgYWx3YXlzIG5vdCBjb3JyZWN0LCB3aXRob3V0IHBzciBh
bHNvIGFscG0gY2FuIGV4aXN0LiBTbw0KPiBkaXMtaW50ZWdyYXRlIGFscG1fZGlzYWJsZSgpIGZy
b20gcHNyX2Rpc2FibGUoKS4NCj4gDQo+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+IHYyOg0KPiAt
IFJlbW92ZSBoL3cgcmVnaXN0ZXIgcmVhZCBmcm9tIGFscG1fZGlzYWJsZSgpLiBbSmFuaV0NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmPCoMKgwqDCoMKgIHwgMTgNCj4gKysrKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmjCoMKgwqDCoMKgIHzCoCAxICsNCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jwqDCoMKgwqDCoMKgIHzCoCAyICsr
DQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8wqAg
MSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKg
wqDCoCB8IDExIC0tLS0tLS0tLS0tDQo+IMKgNSBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDUyOTNjYmQwMjk4OC4uNTA3MmY4N2Q5YzgwIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMzY3
LDYgKzM2Nyw3IEBAIHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCwNCj4gwqAJCQnCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gwqB7DQo+IMKgCWxubF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19z
dGF0ZSk7DQo+ICsJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy50cmFuc2NvZGVyID0gY3J0Y19z
dGF0ZS0NCj4gPmNwdV90cmFuc2NvZGVyOw0KPiDCoH0NCj4gwqANCj4gwqB2b2lkIGludGVsX2Fs
cG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
IEBAIC00NDIsMyArNDQzLDIwIEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2RlYnVnZnNfYWRkKHN0
cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gwqAJZGVidWdmc19jcmVhdGVf
ZmlsZSgiaTkxNV9lZHBfbG9iZl9pbmZvIiwgMDQ0NCwgcm9vdCwNCj4gwqAJCQnCoMKgwqAgY29u
bmVjdG9yLCAmaTkxNV9lZHBfbG9iZl9pbmZvX2ZvcHMpOw0KPiDCoH0NCj4gKw0KPiArdm9pZCBp
bnRlbF9hbHBtX2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHAp
Ow0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLQ0KPiA+YWxw
bV9wYXJhbWV0ZXJzLnRyYW5zY29kZXI7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxh
eSkgPCAyMCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIEFM
UE1fQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJwqDCoMKgwqAgQUxQTV9DVExf
QUxQTV9FTkFCTEUgfCBBTFBNX0NUTF9MT0JGX0VOQUJMRSB8DQo+ICsJCcKgwqDCoMKgIEFMUE1f
Q1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFLCAwKTsNCj4gKw0KPiArCWludGVsX2RlX3JtdyhkaXNw
bGF5LA0KPiArCQnCoMKgwqDCoCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJ
wqDCoMKgwqAgUE9SVF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+ICt9DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGluZGV4IDJm
ODYyYjA0NzZhOC4uOTFmNTFmYjI0Zjk4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uaA0KPiBAQCAtMjgsNCArMjgsNSBAQCB2b2lkIGludGVsX2FscG1f
cG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
IMKgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKTsNCj4gwqBib29sIGludGVsX2FscG1fYXV4X3dha2Vfc3VwcG9ydGVkKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfbGVzc193
YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK3ZvaWQgaW50ZWxf
YWxwbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiDCoCNlbmRpZg0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggNTYwNjhi
MmVmOTY0Li5lZWNjNzNjYmY3M2MgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiBAQCAtMzUsNiArMzUsNyBAQA0KPiDCoCNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiDCoCNpbmNsdWRlICJpY2xfZHNpLmgi
DQo+ICsjaW5jbHVkZSAiaW50ZWxfYWxwbS5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9hdWRpby5o
Ig0KPiDCoCNpbmNsdWRlICJpbnRlbF9hdWRpb19yZWdzLmgiDQo+IMKgI2luY2x1ZGUgImludGVs
X2JhY2tsaWdodC5oIg0KPiBAQCAtMzU1Myw2ICszNTU0LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZGRpX2Rpc2FibGVfZHAoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IMKg
CWludGVsX2RwLT5saW5rX3RyYWluZWQgPSBmYWxzZTsNCj4gwqANCj4gwqAJaW50ZWxfcHNyX2Rp
c2FibGUoaW50ZWxfZHAsIG9sZF9jcnRjX3N0YXRlKTsNCj4gKwlpbnRlbF9hbHBtX2Rpc2FibGUo
aW50ZWxfZHApOw0KPiDCoAlpbnRlbF9lZHBfYmFja2xpZ2h0X29mZihvbGRfY29ubl9zdGF0ZSk7
DQo+IMKgCS8qIERpc2FibGUgdGhlIGRlY29tcHJlc3Npb24gaW4gRFAgU2luayAqLw0KPiDCoAlp
bnRlbF9kcF9zaW5rX2Rpc2FibGVfZGVjb21wcmVzc2lvbihzdGF0ZSwNCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5k
ZXggMzY3YjUzYTllYWUyLi4wYjNkMjlkNDJlZTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xODA1LDYg
KzE4MDUsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0KPiDCoAlzdHJ1Y3Qgew0KPiDCoAkJdTggaW9f
d2FrZV9saW5lczsNCj4gwqAJCXU4IGZhc3Rfd2FrZV9saW5lczsNCj4gKwkJZW51bSB0cmFuc2Nv
ZGVyIHRyYW5zY29kZXI7DQo+IMKgDQo+IMKgCQkvKiBMTkwgYW5kIGJleW9uZCAqLw0KPiDCoAkJ
dTggY2hlY2tfZW50cnlfbGluZXM7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBpbmRleCA3YWQ0YTAxZTAzNzguLjFiZDJmY2QwZmE0YiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMTMwLDE3ICsy
MTMwLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+IMKgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0K
PiDCoAkJaW50ZWxfc25wc19waHlfdXBkYXRlX3Bzcl9wb3dlcl9zdGF0ZSgmZHBfdG9fZGlnX3Bv
cg0KPiB0KGludGVsX2RwKS0+YmFzZSwgZmFsc2UpOw0KPiDCoA0KPiAtCS8qIFBhbmVsIFJlcGxh
eSBvbiBlRFAgaXMgYWx3YXlzIHVzaW5nIEFMUE0gYXV4IGxlc3MuICovDQo+IC0JaWYgKGludGVs
X2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gaW50ZWxfZHBfaXNfZWRwKGludGVs
X2RwKSkgew0KPiAtCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4g
Y3B1X3RyYW5zY29kZXIpLA0KPiAtCQkJwqDCoMKgwqAgQUxQTV9DVExfQUxQTV9FTkFCTEUgfA0K
PiAtCQkJwqDCoMKgwqAgQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUsIDApOw0KPiAtDQo+
IC0JCWludGVsX2RlX3JtdyhkaXNwbGF5LA0KPiAtCQkJwqDCoMKgwqAgUE9SVF9BTFBNX0NUTChj
cHVfdHJhbnNjb2RlciksDQo+IC0JCQnCoMKgwqDCoCBQT1JUX0FMUE1fQ1RMX0FMUE1fQVVYX0xF
U1NfRU5BQkxFLCAwKTsNCj4gLQl9DQo+IC0NCj4gwqAJLyogRGlzYWJsZSBQU1Igb24gU2luayAq
Lw0KPiDCoAlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gwqAJ
CWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NGRywNCj4gMCk7
DQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PkiILM+GL2qmBwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:59:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B246835B9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:59:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QftBq11U;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AB810E19A;
	Mon, 15 Jun 2026 04:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB9E10E18F;
 Mon, 15 Jun 2026 04:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781499597; x=1813035597;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p3DAHTNFjZ3WCV8FoajElPPUlf1C1FeqVBMFCgJDQmc=;
 b=QftBq11UT9tOGS9y75msuC8xQshzjN2nQFHvYhfv0GvCa58EGQjT+SEv
 mk+PbF4S6HSBUmDU/WGmAT1r+VDQrNrsUYRI6vSp7iRuSdreC6II8lijl
 2w6s2I5d1k8XQHDmL/zV+IO3TmUQUg86NptJ/2UkfmgwwteZS+gADe9om
 9aiNvF+Z0UZVMvWYt6IDDnUqs7HwtV6+8NXcXrM4hNYNmQHD5EovLeMe4
 iO/91x3kuBCGXjVo269RzwwjHZP/6Ym2OeuBDryIwPI0KKKIVBrZ1qxL1
 FcjBXOZed4+LaBREmMCSyTeuDhQqBXJRtqtt2E/A8ZRVRmxJqgJw0+b6f w==;
X-CSE-ConnectionGUID: cHwmM9nXQ6exuR0gKmKZcg==
X-CSE-MsgGUID: NagWwWnTQVSXvjPr/02H3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82421647"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="82421647"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:59:56 -0700
X-CSE-ConnectionGUID: Qcioq/aeTXmW4Z6mz0cNJw==
X-CSE-MsgGUID: hrPBWw7dSguPVD03vQpkZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="241011570"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:59:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:59:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:59:55 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:59:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AAHGF5AEC99KUaGo+XTx+hjkLWZOZgl0dbz3Y5McafvjATuSNHt5nGzTG571kfsTLQh82wqr/d8cRD1MIibPfkmxWPjMoiFkkoXSbqkPpLRE3kR5LK8XZNCjn+VOCiYvM6nZYM4HonJYIzV1rUdjp0FM1oGv56RJSi8nOwbQXoN0flLT/3tkP5CIWKWG96RNHC2f5j2wq+Wrf7MHIdQzO9mihj4T3/z+0k5nbFEY/AUQRfHcMEiSOHdqM/p6g2OY35MV0+FBdv2mj93orfJMnFRZHxQWLhr0h4OvCRach5O0XyBznXvNqGUSxsCLiVFcVNpmOsqhH/yNE9AQaYSiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p3DAHTNFjZ3WCV8FoajElPPUlf1C1FeqVBMFCgJDQmc=;
 b=wV854GcVGBTbrKfa/iLNh0rVjRp9KON7ys8DXPgmvu1WSJa1ILAdgp5o4JzAIqEfXbRLYLmvEe+lNTe5pJch63C9Ncy3X3oY7gSC+8GJw5HTSJLLBaBvvReNpU1yVl9g6N0RnlqzAbhZLx3ZQpPVZwWigAWxANS2nrQbDgshwXU/bG8a9cNtvtMhvG7cEkjKkhsjDUCoHlCqcbpOOklNXGtNJbVDuVO8fqBE5yY611WmAlvnz1CbbXCn7IslTli6qdFzuHzf0R4Q760uRLHGSpimnX+0zYBesSHJBWnY1yMz6dd3slgXXl8xV0i5xwo19h0RWb5zjyg7JPc4kgGOdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DS7PR11MB6128.namprd11.prod.outlook.com
 (2603:10b6:8:9c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 04:59:50 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 04:59:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 5/8] drm/i915: override Snps's VS/PE when requested
Thread-Topic: [PATCH v7 5/8] drm/i915: override Snps's VS/PE when requested
Thread-Index: AQHc930ENW49sjMUyE2328Llh0rNCrY/E4dg
Date: Mon, 15 Jun 2026 04:59:50 +0000
Message-ID: <DS4PPFE901A304F558E4AAFD937F7AD21A4E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-6-michal.grzelak@intel.com>
In-Reply-To: <20260608192821.3414590-6-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 786162f1-d4de-45dd-5883-08deca9aee35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|3023799007|6133799003|4143699003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: hwxTmaLKzA4S2nR0FjyTqSmRIx9mqFl+4ZXhkSlRJ9NYRFVVs5le+WQ97NJoWH914FRUX0FFMwrmtGjOuNMuf8RFgQUkaJzcTax87V0qODc8g623qZTo3CDJlmaBI1rOQJd9C+4fs/m+DSe+hj3wcmV82vXZhICxSrVT97plQBdCWwuMavf5hUYynSRawY7JK1VP88hvSwjdXly/RR3U6D6rT13yx//4jhVw7/yjA/EvoRkX6vJCot1cu+W07rJeXjOTR9td251x8AIJD3ObzfGTQGizHW7eiHVkf1y/VcdaPPY5XrZGLtLs5IUmzr353wBmAA0ksO0R6+9SzP5MVfZTIOpfo4kVuDlaE1b9/RCXX4rSltlzycE+ZpdOtPaOhEQTtew7Ze33dXdwjK/EUm8A1ZZ0lK1u6XiVxgVTKMwdu25Dz692iR/4Zdl9pIaKvfgR96RA+eZh8ifRySH47REiquWYbPKxbg8Sns9CRgpivizLmakycPzTws2BU0AEgUCMTgGNTFwJcRUbR/RRp7KagGNDyZ1hoSyU9hZfNnGGKB9wCPge5kFuLh71rMfXABWMSIZoaoFpsjwchgPclj5A5xBJ+JajnuuR5G541xooGobpvkChtSkWn/DnXu/wcvjgmG9mfmom9mzIvjO8mo4mAEp4Slx0HuIfcoKA15NRvfcoxZ26eX/rHZfHNxM/f0zJK4wcjHydSsVYcR/mCAE41Ti5+YGqbFn5HbwIUWcs+pf2FDLKwlSDYrzewVco
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(3023799007)(6133799003)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjVEL1pRa2MwTXFRNEV0ZDVFVDJrcHNWTk9acGpFKzdEMVhIQXYybUErNjRG?=
 =?utf-8?B?KzNORllaZHRhQnYyckZHVjRmYkN3UFlNcjM3WlFqSytteW4ycmRqdGNqTnZJ?=
 =?utf-8?B?TkVFbVZUWjBKVGgydlhQeHg1VFBDSm5MTGtQdnNXQUtsZ3J4aUw4V2RCekgx?=
 =?utf-8?B?cnpYejNIejJmUXNBazA4ZVFLWCt4L0VqME5RdlFZRDh5cWlDT2tjRTFrcDN1?=
 =?utf-8?B?T1BmSG5HV2FPakNVRGVFRHpEdkV6R2dqby9MTzFlYlYxRU5hUVNmM0NTOXZu?=
 =?utf-8?B?VFplQ21vbm5ldm5Rb203M0JCMytDQ0xHNEJIVEY0K29xamRYaGJEdkdtNkZW?=
 =?utf-8?B?Mm9jMURJKzUxckVWcEhtZjd6RGdBSTlHMXlTTUE2Rjd5WjNzMkc2U1Q0QXJJ?=
 =?utf-8?B?MEtjRWlDY2hSbElGTXN1NVZsR1g0UEF0WFE2ZkQzMENLdGZIUjNkNUVvSUVE?=
 =?utf-8?B?N0pNUXRNelFZYWNzTTVsZGlNRTVQWVNkbG0vTHlnakRmU2t5WEl5MVZXcWZ0?=
 =?utf-8?B?MURHK3lsQldabnVCcDVJT3FkRUd4d2lTdGFqUTZBTjJocU12NWdDcVVlb3Q4?=
 =?utf-8?B?MHZ4ZC9QZUp0K3BTQ0Z0a1U1emFGc1ZzS1lKcUxBMm5RcklBTEpXMDkwaWpm?=
 =?utf-8?B?Wml0bG9NdGlYRnZGK2tkOVJaa1ZyaUJ3YmpOcytPWjVFUE8va2JaQ0VFUVYv?=
 =?utf-8?B?TmtyTXd2M0s1aDhONVpzZFA0NjFxQlozd0FXcmJPVFdhUWhBd0lDeTV5OGxL?=
 =?utf-8?B?YjlzaTdlbzZJbXpMRVdKRE9WcDhlelZHNDcxVmJPYnNqQnJKNUJzenpMVzda?=
 =?utf-8?B?dXlBWmZWRGxIWXFyNVVjb25YUlo5c0MxUlp2MjluOTEyd2xlNnpNeXRWaVBT?=
 =?utf-8?B?TFp1bytYRmpiWG03M09Zd2dXK00rRVlNNk1QYXhMZlIrL09xYmJ3dXEvM0xQ?=
 =?utf-8?B?cy9wS0JyMkZ6aFZuZElNSVM0ZEZmVHJSL3MremtQdjF2NGFoSGtnUEFKbUMr?=
 =?utf-8?B?b3V1QndxRUNFZVlVMG5ZVFhOWi9jSGQ0ZWk4Y1VTRUJ1OVM1dzBMNmRCOEpJ?=
 =?utf-8?B?cGdwUDMzWklzUk1kTXQ0aFI1NzF1a2xJVE5BejdLRHZ3aWdIY1VlK254cG13?=
 =?utf-8?B?YkJjeTd4SGdLaFE1SmZxOGpEMEhnd1ErdUM0Zzgwb3N6cVdYQ1kxaXhPbkVJ?=
 =?utf-8?B?WDhQc0dBZlR2TU1DbzVpUktPTFZabDgzVUlJZGhFbGhWdzJPOHhQY2pQZldX?=
 =?utf-8?B?WmZZUkhtaGNGb2ZIUW4vaG8zOUVCdDRUcWtRcDl4TmJhWG9WOEI2RDh4cUg4?=
 =?utf-8?B?TTVFdFl6cjlBL1lGWEhLTU92dlM3K0hvVDZwMXRvekVoZ0tWZHp5VDlGUXJp?=
 =?utf-8?B?UHZwMG1CeDE2SHpkWldqQk01Q2Q0RmhVdElUS290TUI0bm5UenZUM2Zldmw1?=
 =?utf-8?B?K3RQR0lDMUxGOE5FTkRpcHV5NVVWajRjeTJwbXJQaW82bm5qdGh6dGVlNEc4?=
 =?utf-8?B?M004c3dRR1drTGMxcWtWWG45UlA1TktndmdrVkpIbDdZU1llMGlRL3dGYmQ3?=
 =?utf-8?B?UXZwcmlWN3NXRFlreFpCUzg2ZTBteTF2eDBaTEx6Z1dKTTZrUTN0OS9ScVI1?=
 =?utf-8?B?ck0yVmhnTTlnT0MraFNHZmhmSXVKb2JuQi9RV1M3WmVQRUl5Z0lpQkIvekVk?=
 =?utf-8?B?aHR2Z1A2ODloSTUrNWxzc2tjVXpVRnAreGE0N3lZdlIvOEY4SWlIem5jVkhT?=
 =?utf-8?B?RHR0SVZhNkhCUld2UUlvWm16YnVCUVdoSloxWVU0TDEyVytHUmhKdlVhcGdw?=
 =?utf-8?B?bTVyamlVVDkyeEl0YWljZDZZNUExeGZBa0h6L0JEMFE2T0hHenJPUVRuK0d6?=
 =?utf-8?B?ZS93NHhKNmJGaXJ3cFhBOGRmbjl0UkIrc3Z4NDVHZHNKM1ZoZnlOMXNEOGR5?=
 =?utf-8?B?MFNYajB4cnpuaW5VeXlOcHFlSEUxUEVQbGhheVdlaTNVeGd2U0lYNzByVzVj?=
 =?utf-8?B?Nkd0VkdMSTVIK3VpZEF3NnJhZmljcExPeVBnYnpMN2VWektycTNHOVJoNVdG?=
 =?utf-8?B?cDAyVkVDWVVNQ09QMjY2UEFhNFZoWFgvcmNPUFBISXRydXlOUW9QSGRtVnA3?=
 =?utf-8?B?ZUtML1k2TFQ1RFBGUC84QkNuVlpKWmZ0Mjg3SWkxakM2WFJlMGtidEk1WEFt?=
 =?utf-8?B?UzhpWWZOL0RpTWdVQXhRUVd6SDhqYjZ6NXZoSUlFZW8vUm83SnVwTU8rRGZW?=
 =?utf-8?B?a2N2WUhnckZVbWt0bG8zdFVoY1lCR1Q5Z0VUeS81SG5udUNJNTU4a2IxOFZr?=
 =?utf-8?B?TGtySmlYK21MTGgvQjlXdi9oVENwUVBoRnhRdmwzbTJRdVNYM3dyUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OYPIykNRKthxqBK+TlR66dAtXfdF2vWkwlEvzCttQBtfGFZfKuHUwrz/QQ7IedlZUlhGNVqgPjzD6UHGWfDpDVR2KXDI+OedUI2mE47ymAN1EcWsg7zYkwWDkHabaOTE6r+lzXOf+x+DVKu9VOQ6ExO0FyLK4fkk6oBmuMGYfSzBloqaEEFGTPqQfYlkwr6gUC9T2NxAiSw3eKRRrhcmvTJSqJaxqZEQlYY2CkraCVqoLwHjUpmWFTmoLuf7wnzjs+537doIDnoFj7a7HZ+oMIY6rC2sYFCH+IcPP1L0GzUEyJM+LK+61YVMxXC9f+pzHM1j64TLxlcjDvNq08XpGg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 786162f1-d4de-45dd-5883-08deca9aee35
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:59:50.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: joviWmYgwkwLQA0nEsfnNDy3Ns2ykQEcnAC0513YkujplftV+GQCZjl/jkZvZyILOHL8VCevFhiwwyhKedUSNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05B246835B9

DQo+IFN1YmplY3Q6IFtQQVRDSCB2NyA1LzhdIGRybS9pOTE1OiBvdmVycmlkZSBTbnBzJ3MgVlMv
UEUgd2hlbiByZXF1ZXN0ZWQNCj4gDQo+IEFkZCBhY2Nlc3NvciBmdW5jdGlvbiBmb3IgU25wcyB0
byByZWFkIHJlcXVlc3RlZCB0YWJsZSBmcm9tIFZCVCAjNTcuDQo+IFBhcnNlIHRoZSByZXF1ZXN0
ZWQgdGFibGUgYW5kIHRyYW5zZm9ybSBkYXRhIGludG8gcG9ydCdzIGJ1ZmZlci4NCj4gDQo+IENo
b29zZSBhcHByb3ByaWF0ZSBhY2Nlc3NvciBmdW5jdGlvbiBpbiBpbnRlbF9kZGlfYnVmX3RyYW5z
X2dldCgpIGJhc2luZyBvbg0KDQoqIGJhc2VkIA0KDQo+IGRpc3BsYXkgdmVyc2lvbiBhbmQgUEhZ
IHR5cGUuDQo+IA0KPiBGb3IgQzIwLCB1c2UgNnRoIHRhYmxlIGlmIGVuY29kZXIgc3VwcG9ydHMg
RFAgMi4wIG9yIGhpZ2hlci4gT3RoZXJ3aXNlIHVzZSA1dGgNCj4gdGFibGUgZm9yIERQLg0KPiAN
Cj4gRm9yIEMyMCwgdGFibGVzIDEtNCBhcmUgbm90IHVzZWQgYXQgYWxsIGFuZCBhcmUgbW9zdCBs
aWtlbHkgdG8gYmUgemVyb2VkLiA1dGgNCj4gdGFibGUgaXMgdXNlZCBmb3IgYW55IG1vZGUgYmVs
b3cgRFAgMi4wIChleGNsdXNpdmUpLiA2dGggdGFibGUgaXMgdXNlZCBmb3IgYW55DQo+IG1vZGUg
YWJvdmUgRFAgMi4wIChpbmNsdXNpdmUpLg0KPiANCj4gRm9yIEMxMCwgdXNlIDJuZCB0YWJsZSBm
b3IgZXh0ZXJuYWwgRFAgaWYgZW5jb2RlciBzdXBwb3J0cyBhbnkgbW9kZSBiZXlvbmQNCj4gb3Ig
aW5jbHVkaW5nIEhCUjIuIFVzZSAxc3QgdGFibGUgaWYgZXh0ZXJuYWwgRFAgZW5jb2RlciBzdXBw
b3J0cyBhbnl0aGluZw0KPiBsb3dlciB0aGFuIEhCUjIuIEZvciBlRFAsIHVzZSA0dGggdGFibGUg
aWYgZW5jb2RlciBzdXBwb3J0cyBIQlIzLiBPdGhlcndpc2UNCj4gdXNlIDNyZCB0YWJsZSBmb3Ig
ZURQLg0KPiANCj4gRm9yIEMxMCwgMXN0IHRhYmxlIGlzIHVzZWQgZm9yIGV4dGVybmFsIERQIHdp
dGggbW9kZXMgYmVsb3cgSEJSMiAoZXhjbHVzaXZlKS4NCj4gMXN0IHRhYmxlIGlzIGFsc28gdXNl
ZCBhcyBhIGZhbGxiYWNrIGZvciBub24tRFBzLiAybmQgdGFibGUgaXMgdXNlZCBmb3IgZXh0ZXJu
YWwNCj4gRFAgd2l0aCBtb2RlcyBoaWdoZXIgdGhhbiBIQlIyIChpbmNsdXNpdmUpLg0KPiAzcmQg
dGFibGUgaXMgdXNlZCBmb3IgZURQIHdpdGggbW9kZXMgbG93ZXIgdGhhbiBIQlIzIChleGNsdXNp
dmUpLiA0dGggdGFibGUgaXMNCj4gdXNlZCBmb3IgZURQIHdpdGggbW9kZXMgaGlnaGVyIHRoYW4g
SEJSMyAoaW5jbHVzaXZlKS4NCj4gDQo+IEluZGljZXMgZm9yIG90aGVyIHRhYmxlcyBoYXZlIG5v
dCB5ZXQgYmVlbiBvYnNlcnZlZCB0byBiZSB1c2VkIGFzIG9mIG5vdy4NCj4gDQo+IFRoZXJlIGFy
ZSBubyBjaGFuZ2VzIHRvIGludGVsX2RkaV9kcF9sZXZlbCgpIHNpbmNlIHNlbGVjdGlvbiBvZiBj
b3JyZWN0IHJvdyBvZg0KPiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5IGlzIHNhbWUgYXMgd2hl
biBubyBvdmVycmlkZSByZXF1ZXN0IGhhcyBiZWVuDQo+IGRvbmUuDQo+IA0KPiB2Ni0+djcNCj4g
LSBoYW5kbGUgVlMvUEUtTydzIFZCVCBkZXRhaWxzIGluIGludGVsX2Jpb3NfKiBmdW5jdGlvbnMg
KEphbmkpDQo+IC0gcmVtb3ZlIHZzcGVvJ3MgY2FzdCB0byAodm9pZCAqKSAoSmFuaSkNCj4gLSBj
aGVjayBkZXZkYXRhLT52c3BlbyBpZiBWUy9QRS1PIHdhcyByZXF1ZXN0ZWQNCj4gLSBjYWxsIGVu
Y29kZXItPmdldF9idWZfdHJhbnMoKSBvbmNlIChKYW5pKQ0KPiAtIHJldHVybiBOVUxMIGZyb20g
aW50ZWxfYmlvc19nZXRfKiB3aGVuIHVzaW5nIGRlZmF1bHQgKEphbmkpDQo+IC0gdmFsaWRhdGUg
VlMvUEUtTyBpbiBpbnRlbF9iaW9zLmMgKEphbmkpDQo+IC0gaW5saW5lIG10bF97YzEwLGMyMH1f
Z2V0X3ZzcGVvX2J1Zl90cmFucygpDQo+IC0gcmVtb3ZlIHRlbXBvcmFyaWx5IExUDQo+IA0KPiB2
NC0+djUNCj4gLSBibGVuZCBpbmRleCBjb21wdXRhdGlvbiB3aXRoIHRhYmxlIHBhcnNpbmcNCj4g
LSByZW1vdmUgZW51bXMgZW50aXJlbHkNCj4gLSBjaGFuZ2UgZnVuY3MgcHJlZml4IGZyb20gc25w
c18gdG8gbXRsXyAoU3VyYWopDQo+IC0gYWRkIHNwYWNlcyBhcm91bmQgb3BlcmF0b3JzIChTdXJh
aikNCj4gLSByZW1vdmUgc3BhY2VzIGFmdGVyIHR5cGUgY2FzdGluZyAoU3VyYWopDQo+IC0gcmVt
b3ZlIElOVEVMX0RJU1BMQVlfU1RBVEVfV0FSTiAoU3VyYWopDQo+IA0KPiB2My0+djQNCj4gLSBz
dGljayB0byBzb2xlbHkgY2hhbmdpbmcgVkJUIGRhdGEgaW50byBjdXJyZW50IHN0cnVjdHVyZXMg
KEphbmkpDQo+IC0gbW92ZSBpdGVyYXRvciBkZWNsYXJhdGlvbiB0byBkZWNsYXJhdGlvbiBibG9j
ayAoU3VyYWopDQo+IA0KPiB2Mi0+djMNCj4gLSByZW1vdmUgdW5uZWNlc3NhcnkgYnJhY2VzIGZy
b20gaWYgYmxvY2sgKFN1cmFqKQ0KPiAtIHJldHVybiAtRUlOVkFMIGluc3RlYWQgb2YgLTEgKFN1
cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgICAgIHwgMTAwICsrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAgIHwgICA3ICsrDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAgMjEgKysrKw0KPiAgMyBmaWxlcyBj
aGFuZ2VkLCAxMjggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggM2Q4ODY0Mzc0Y2FjLi41OWZmYjViYzg4NDgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBA
IC0zODYxLDYgKzM4NjEsMTA2IEBAIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX3Ri
dChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhDQo+ICAJcmV0
dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJzaW9uID49IDIwOSAmJiBkZXZkYXRhLT5jaGls
ZC50YnQ7ICB9DQo+IA0KPiArc3RhdGljIGJvb2wNCj4gK3ZhbGlkYXRlX3ZzcGVvKGNvbnN0IHN0
cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwgYm9vbA0KPiAraGFzX2RwKSB7
DQoNCkFoaCBvaGtheSBzbyB5b3UgZGVhbCB3aXRoIHRoYXQgYWxsb2NhdGlvbiBwcm9ibGVtIHRo
aXMgd2F5LiBUaGlzIHNlZW1zIGdvb2QgdG9vLg0KDQoNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyAqdnNwZW87DQo+ICsNCj4gKwlpZiAoIWRldmRhdGEpDQo+ICsJCXJldHVybiBmYWxz
ZTsNCj4gKw0KPiArCS8qIGlmIHZzcGVvIGlzIGFsbG9jYXRlZCB0aGVuIFZTL1BFLU8gd2FzIHJl
cXVlc3RlZCAqLw0KPiArCXZzcGVvID0gZGV2ZGF0YS0+dnNwZW87DQo+ICsJaWYgKCF2c3BlbykN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJLyogaWYgY3J0Y19zdGF0ZSBoYXMgZURQIGl0
IGFsc28gaGFzIERQICovDQo+ICsJaWYgKCFoYXNfZHApDQo+ICsJCXJldHVybiBmYWxzZTsNCj4g
Kw0KPiArCXJldHVybiB0cnVlOw0KPiArfQ0KPiArDQo+ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRp
X2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9zX2dldF9jMjBfdnNwZW8oY29uc3Qgc3RydWN0IGlu
dGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiArCQkJIGJvb2wgaGFzX2RwLCBib29s
IGlzX3VoYnIpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXk7DQo+ICsJ
dW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqZW50cmllczsNCj4gKwlpbnQgbnVtX2Nv
bHVtbnMsIG51bV9yb3dzLCBsZXZlbCwgaWR4Ow0KPiArCXN0cnVjdCBpbnRlbF9kZGlfYnVmX3Ry
YW5zICp2c3BlbzsNCj4gKwljb25zdCB1MzIgKnRhYmxlczsNCj4gKwlzaXplX3Qgb2Zmc2V0ID0g
MDsNCj4gKw0KPiArCWlmICghdmFsaWRhdGVfdnNwZW8oZGV2ZGF0YSwgaGFzX2RwKSkNCj4gKwkJ
cmV0dXJuIE5VTEw7DQo+ICsNCj4gKwlkaXNwbGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gKwll
bnRyaWVzID0gKHZvaWQgKil2c3Blby0+ZW50cmllczsNCj4gKwl0YWJsZXMgPSBkaXNwbGF5LT52
YnQudnNwZW8udGFibGVzOw0KPiArCW51bV9jb2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51
bV9jb2x1bW5zOw0KPiArCW51bV9yb3dzID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzOw0K
PiArCWlkeCA9IGlzX3VoYnIgPyA1IDogNDsNCj4gKw0KPiArCW9mZnNldCArPSBpZHggKiBudW1f
cm93cyAqIG51bV9jb2x1bW5zOw0KPiArDQo+ICsJZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgbnVt
X3Jvd3M7IGxldmVsKyspIHsNCj4gKwkJdTMyIHZzd2luZyA9IHRhYmxlc1tvZmZzZXRdOw0KPiAr
CQl1MzIgcHJlX2N1cnNvciA9IHRhYmxlc1tvZmZzZXQgKyAxXTsNCj4gKwkJdTMyIHBvc3RfY3Vy
c29yID0gdGFibGVzW29mZnNldCArIDJdOw0KPiArDQo+ICsJCWVudHJpZXNbbGV2ZWxdLnNucHMu
dnN3aW5nID0gdnN3aW5nOw0KPiArCQllbnRyaWVzW2xldmVsXS5zbnBzLnByZV9jdXJzb3IgPSBw
cmVfY3Vyc29yOw0KPiArCQllbnRyaWVzW2xldmVsXS5zbnBzLnBvc3RfY3Vyc29yID0gcG9zdF9j
dXJzb3I7DQo+ICsNCj4gKwkJb2Zmc2V0ICs9IG51bV9jb2x1bW5zOw0KPiArCX0NCj4gKw0KPiAr
CXJldHVybiB2c3BlbzsNCj4gK30NCj4gKw0KPiArY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZf
dHJhbnMgKg0KPiAraW50ZWxfYmlvc19nZXRfYzEwX3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9i
aW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gKwkJCSBib29sIGhhc19kcCwgaW50IHBvcnRf
Y2xvY2ssIGJvb2wgaGFzX2VkcCkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
Ow0KPiArCXVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgKmVudHJpZXM7DQo+ICsJaW50
IG51bV9jb2x1bW5zLCBudW1fcm93cywgbGV2ZWwsIGlkeDsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGRp
X2J1Zl90cmFucyAqdnNwZW87DQo+ICsJY29uc3QgdTMyICp0YWJsZXM7DQo+ICsJc2l6ZV90IG9m
ZnNldCA9IDA7DQo+ICsNCj4gKwlpZiAoIXZhbGlkYXRlX3ZzcGVvKGRldmRhdGEsIGhhc19kcCkp
DQo+ICsJCXJldHVybiBOVUxMOw0KPiArDQo+ICsJZGlzcGxheSA9IGRldmRhdGEtPmRpc3BsYXk7
DQo+ICsJdnNwZW8gPSBkZXZkYXRhLT52c3BlbzsNCj4gKwllbnRyaWVzID0gKHZvaWQgKil2c3Bl
by0+ZW50cmllczsNCj4gKwl0YWJsZXMgPSBkaXNwbGF5LT52YnQudnNwZW8udGFibGVzOw0KPiAr
CW51bV9jb2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zOw0KPiArCW51bV9y
b3dzID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzOw0KPiArDQo+ICsJaWR4ID0gcG9ydF9j
bG9jayA+IDI3MDAwMCA/IDEgOiAwOw0KPiArCWlmIChoYXNfZWRwKQ0KPiArCQlpZHggPSBwb3J0
X2Nsb2NrID4gNTQwMDAwID8gMyA6IDI7DQo+ICsNCj4gKwlvZmZzZXQgKz0gaWR4ICogbnVtX3Jv
d3MgKiBudW1fY29sdW1uczsNCj4gKw0KPiArCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IG51bV9y
b3dzOyBsZXZlbCsrKSB7DQo+ICsJCXUzMiB2c3dpbmcgPSB0YWJsZXNbb2Zmc2V0XTsNCj4gKwkJ
dTMyIHByZV9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0ICsgMV07DQo+ICsJCXUzMiBwb3N0X2N1cnNv
ciA9IHRhYmxlc1tvZmZzZXQgKyAyXTsNCj4gKw0KPiArCQllbnRyaWVzW2xldmVsXS5zbnBzLnZz
d2luZyA9IHZzd2luZzsNCj4gKwkJZW50cmllc1tsZXZlbF0uc25wcy5wcmVfY3Vyc29yID0gcHJl
X2N1cnNvcjsNCj4gKwkJZW50cmllc1tsZXZlbF0uc25wcy5wb3N0X2N1cnNvciA9IHBvc3RfY3Vy
c29yOw0KPiArDQo+ICsJCW9mZnNldCArPSBudW1fY29sdW1uczsNCj4gKwl9DQo+ICsNCj4gKwly
ZXR1cm4gdnNwZW87DQo+ICt9DQo+ICsNCj4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX2lzX2Rl
ZGljYXRlZF9leHRlcm5hbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEg
KmRldmRhdGEpICB7DQo+ICAJcmV0dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJzaW9uID49
IDI2NCAmJiBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0K
PiBpbmRleCA3YTUwYTI3MmNkMjcuLjQ5YWNmOGM0MDVlMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTczLDYgKzczLDEzIEBAIGJvb2wg
aW50ZWxfYmlvc19nZXRfZHNjX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2Rl
ciwgIGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqDQo+IGludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhX2xvb2t1cChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBw
b3J0DQo+IHBvcnQpOw0KPiANCj4gK2NvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoN
Cj4gK2ludGVsX2Jpb3NfZ2V0X2MyMF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNv
ZGVyX2RhdGEgKmRldmRhdGEsDQo+ICsJCQkgYm9vbCBoYXNfZHAsIGJvb2wgaXNfdWhicik7DQo+
ICtjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9zX2dldF9j
MTBfdnNwZW8oY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0K
PiArCQkJIGJvb2wgaGFzX2RwLCBpbnQgcG9ydF9jbG9jaywgYm9vbCBoYXNfZWRwKTsNCj4gKw0K
PiAgYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfcmVxdWVzdHNfdnNwZW8oY29uc3Qgc3RydWN0DQo+
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKTsgIGJvb2wNCj4gaW50ZWxfYmlvc19l
bmNvZGVyX3N1cHBvcnRzX2R2aShjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEN
Cj4gKmRldmRhdGEpOyAgYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfaGRtaShjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpOyBkaWZmIC0tZ2l0
DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0K
PiBpbmRleCA0Y2QxZTRkNzZjN2EuLmI0MTIwYjljNDliMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gQEAgLTE4
NTcsNSArMTg1NywyNiBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucw0KPiAqaW50
ZWxfZGRpX2J1Zl90cmFuc19nZXQoc3RydWN0IGludGVsX2VuY29kZXIgKg0KPiAgCQkJCQkJCSAg
Y29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkJCQkJ
ICBpbnQgKm5fZW50cmllcykNCj4gIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2Jp
b3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhID0gZW5jb2Rlci0+ZGV2ZGF0YTsNCj4gKwljb25zdCBz
dHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqYnVmX3RyYW5zID0gTlVMTDsNCj4gKwlib29sIGhh
c19lZHAsIGhhc19kcCwgaXNfdWhicjsNCj4gKwlpbnQgcG9ydF9jbG9jazsNCj4gKw0KPiArCQkN
Cj4gKwlpc191aGJyID0gaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKTsNCj4gKwlwb3J0X2Ns
b2NrID0gY3J0Y19zdGF0ZS0+cG9ydF9jbG9jazsNCg0KV2UgZG9uJ3QgbmVlZCBhIHNlcGFyYXRl
IHBvcnRfY2xvY2sgdmFyaWFibGUgaXRzIGp1c3QgY2FsbGVkIGF0IG9uZSBwbGFjZSBqdXN0IGRp
cmVjdGx5IHVzZQ0KY3J0Y19zdGF0ZS0+cG9ydF9jbG9jay4NCg0KPiArDQo+ICsJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDE0KSB7DQoNClRoaXMgbmVlZHMgdG8gdXNlID49IDE0ICYmIDwg
MzUgc28gdGhhdCB0aGlzIGRvZXMgbm90IHNwaWxsIGludG8gTFQgUEhZIHRlcnJpdG9yeQ0KDQo+
ICsJCWlmIChpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShlbmNvZGVyKSkNCj4gKwkJCWJ1Zl90cmFu
cyA9IGludGVsX2Jpb3NfZ2V0X2MxMF92c3BlbyhkZXZkYXRhLA0KPiBoYXNfZHAsIHBvcnRfY2xv
Y2ssIGhhc19lZHApOw0KPiArCQllbHNlDQo+ICsJCQlidWZfdHJhbnMgPSBpbnRlbF9iaW9zX2dl
dF9jMjBfdnNwZW8oZGV2ZGF0YSwNCj4gaGFzX2RwLCBpc191aGJyKTsNCj4gKwl9DQo+ICsNCj4g
KwlpZiAoYnVmX3RyYW5zKQ0KPiArCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucyhidWZfdHJh
bnMsIG5fZW50cmllcyk7DQoNCkkgdGhpbmsgdGhpcyBjb2RlIGJsb2NrIGJlbG9uZ3MgaW5zaWRl
IHRoZSBhYm92ZSBpZiBibG9jayBndWFyZGVkIGJ5IERJU1BMQVlfVkVSIGNoZWNrDQoNClJlZ2Fy
ZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gKw0KPiAgCXJldHVybiBlbmNvZGVyLT5nZXRfYnVmX3Ry
YW5zKGVuY29kZXIsIGNydGNfc3RhdGUsIG5fZW50cmllcyk7ICB9DQo+IC0tDQo+IDIuNDUuMg0K
DQo=

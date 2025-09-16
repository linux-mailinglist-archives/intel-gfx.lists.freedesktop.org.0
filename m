Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF0FB591FE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 11:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDC610E75D;
	Tue, 16 Sep 2025 09:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFkF+r7x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2287210E75D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 09:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758014515; x=1789550515;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ilGugBweIMpgf05FNB7lGE4373m1NBrmxf22HbFkWNI=;
 b=LFkF+r7xrXzM93tkXp6sbYNwtXnH+xKyZ2p/dqRMza+0k5tQ4q8C9um0
 Hnxcd78DJ5ysV9CVus60n9uelhnOBJRRFA75GPfsKotBb1SlNgcWYnWjR
 SNzbJSNNNdOs8VxGHwZp0yLZ8jkP0tEj5iyQsO4keavyfbbxH+sJ5sKuP
 QB72yShLxAV85fMvQXlHMJrTxp0yZmpBDgQyQnUXnTaArHQn9bX34itOh
 PsaEhHp1oyzX++mvl+hTguFczqBgPSs1OiDqJuLrgl5oO0Zr9QVfrPkBR
 pxaUPrQGha/x2MhMFduZNnaKkaRv4/iomIHsTwgqGTPjb7dVsi8n1gXH9 w==;
X-CSE-ConnectionGUID: nym/pU9ISFqlIt7b9RbMUg==
X-CSE-MsgGUID: l/33kiXTRtu1fMginR6nDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="60157410"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="60157410"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:55 -0700
X-CSE-ConnectionGUID: awrbCRkQTLalXkjX7e8VEQ==
X-CSE-MsgGUID: O1gez2peTC6ATwfbCbfFCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174969311"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 02:21:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:21:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 02:21:54 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.52) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 02:21:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0uHwSrDDQAeOMMIPg8BREA0LPhm9hYYLrhRp4idT7Yy868cTjEIXzJxJ+DpLRjHrQ7m9Re6U7N3z4plXWru1pmqrjr73rwtgntb70oo0rLPaqoeHUirGeoPs8uqBc8gwIeutLLvJBvu7n3XegFE6m+h5yEBkNXW+5UlMAs2O/D2BIJzO9zMx3awgKqH1f6Km2eZe93c0GPNKomu3nXijeP1OR7/Q5nns+DE8L+8B3sMZxhc7HDmDQNrUHnuhceNh08EQ6ZBRmDu7UJG4U+PtoFx9fOmBIZZYatzTBLa/aBkYpRmCC29m+Tll+wnsAzoDTG79AgL22IXRs5CL26kQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ilGugBweIMpgf05FNB7lGE4373m1NBrmxf22HbFkWNI=;
 b=jy8I7msZ0zVA54KAGuQan4irJ8aR1RkS3g34RxCSBiosMwseVNE1naGaDpBhWiVDappAELidF/rhYzje/lH8P2GKufuprEKEu/E5tMzLb7z8N0HE+lyEsVETu6BiPF6pclpAoSxsni/i6hu/eE7C49J/CItbZihFWlmFAZuFC+PDiYxnosOISsmC+2HvkxiE2XLtNNP1V4ZGijtBdLLVl5JUsH6nfAGRNsWEuI4q27qW0rZ4h6z3bI7lpNfgOx7qVsiq8D97JQXgC+mIH0cBIQbZo02wtdYGcsdAMaRaIZj/APVWJ940OewEJPQy9BFcJU20JA5U4t/MdnFJp525YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 09:21:51 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 09:21:51 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: Re: [PATCH 3/6] drm/i915/wm: remove stale FIXME in
 skl_needs_memory_bw_wa()
Thread-Topic: [PATCH 3/6] drm/i915/wm: remove stale FIXME in
 skl_needs_memory_bw_wa()
Thread-Index: AQHcIJOGLGgleWDFe0G+CTsmAsAaAbSVlYGA
Date: Tue, 16 Sep 2025 09:21:51 +0000
Message-ID: <5fbc41142883ce22bf350f865c697583988dad1d.camel@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-4-luciano.coelho@intel.com>
In-Reply-To: <20250908073734.1180687-4-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW4PR11MB7056:EE_
x-ms-office365-filtering-correlation-id: f97bdf69-5ffe-4175-6d30-08ddf5027873
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b2xWYXZKUisvZ25NYUxSM0o4ZFcxUmpCRDRyODdQY3pyc1NSM1UvWE5wTG9a?=
 =?utf-8?B?TDV2cWVxTXNSZ3ZiVnhiZDg4aVpwVWYvOEZRMmxCeURPR2xCaWNNYnpUTjJW?=
 =?utf-8?B?ZTBMR3BldUk3SXROT3I1b3JqeWNEaWY4SmlPRmZyUW1SZUNuK2VYbm1FelVq?=
 =?utf-8?B?M3FTM3pHOEtZaGVEM0NEcUllTFMzcUk4VHR0eUdDVW1Mbm5jZDVtRnlCN3Fu?=
 =?utf-8?B?QWkvTkZETVJ6bkJzL0l2R1RGMnlOOFMzQThQaXBNQnVuNDlDZGZObFBSQ296?=
 =?utf-8?B?em5aOWdENjRDUVE3eFU3UTVyaWlYNml1L3NpQ1k5VExmVUtUYXNpWTd3TG54?=
 =?utf-8?B?b0ZZOWt1OU9rVExMYkZnY0diaGlBZWQvQXVyeFZSa25XMmtKdVQxYlJkbGZ3?=
 =?utf-8?B?bmVwajBXTGpNMng1TW5zWTdOY01USDNrK0hRMGYrVlNNZVZiZnNzZGRJTkR4?=
 =?utf-8?B?M1VXRHdEaW1KZnN0UUJVeVRrS0RDQ2FybEdVMyttR2VjRGdVQTB1eGpiQmQ5?=
 =?utf-8?B?dFQwVjViUW9iYWxXdjdWcjV2M25rc1JyNVJjUUs0T0s2RzZlYVJXWUhTQkJt?=
 =?utf-8?B?NmZma1NVS3VLN0xLcUZuMUZoVlNRQklrdFhZSHVMR3lSRm14by9mam9tZC9a?=
 =?utf-8?B?MWhFWmNRdW1pQmFCUlpTSnpNeHZ6TXV3dGYzRGxHRDVpTkpvR1h5NERvRGhC?=
 =?utf-8?B?T0JNb0Y4NHFHdG9hclRtZ3gxaWtrc3p5ZlZRVVY3VUdZMWcxQUE1cEQvaVdQ?=
 =?utf-8?B?YW54cno0Qk92OXd1RVdGZ2RMSktWeG9Sb2kzamN1VnA3amJiYnlyeHluQmVY?=
 =?utf-8?B?SGIwYnFmd1ZTa29HcG44Qk45eXFjSDJUQzRjazFsN0kyZDQyVVNkUk1JUTE4?=
 =?utf-8?B?cjFQZHpOZUlvRXpuTXNLRy80dkgvclBCRW5iaE5WWWQwVnB2bGtVM0RoMkcz?=
 =?utf-8?B?S29PUjBQbnRVVlh6VEF2aHdqQU40SW14K1BQb0ROMFgvdjIyTE55Z2RHOUhl?=
 =?utf-8?B?QUhxbWN6dGNza2hBY1VsLzlwRjBDcFcxcWIzeDU5cU5nVmxqTHpLWUpkTk92?=
 =?utf-8?B?UnhOSWVLb1Z0M0cxNGQzNGlVaU1hcmJVWUhBeWVyeXljVlJjRndlc1V4cWho?=
 =?utf-8?B?YVJHSWtGSHVpSFMvd1dKN2UwVm5JZDB3VzB3OTljMFI1cFNCUTJ5NDlWd3ZT?=
 =?utf-8?B?c0E5RkNFQlN4TlJHRlVnNnRxQ0x0aUZROG1Demppcko5K1lKZXFFQkdZaFJP?=
 =?utf-8?B?VWNwN20rcXBnTThLWFBTVW52Z2Nzc25mWWVBNjN6ak5IZ2VML01iZTAwOGxw?=
 =?utf-8?B?T3VKVHBVczU4Qi83bFlqQlBVRi9VTmM3RzllSUhpaXA3QmtyelUyTEhSWXFp?=
 =?utf-8?B?dTJYMS9wbG5NMHZIUkxzWnFteVloamRnNjhZUVllR1pFbzNZQTJERjNDYmtQ?=
 =?utf-8?B?c2tkYWZiTlBuaWVsMWFTNERhZUN5M29HOU9rSnU3TTZZejYvdnpWZWJJUkph?=
 =?utf-8?B?WnlXRDFTS0J6OGFtYk5rSlNsS2RrYmE2ZzBRdTRqVnJnT1BvTkd3NStYY05L?=
 =?utf-8?B?QWpYYVgyQy9FOE4yRUduR2lHcTcwbVNLQmpNRmlRR0IyZ0krM3kzN0dxdVBs?=
 =?utf-8?B?ZzBHeXVxRDRsamFKZExyVHIwdGtjTlliS1BkSHhFSUlPM29YYWNQVHh3REZk?=
 =?utf-8?B?b2hoLy9ncnBGMWpPeWQ5ckx1YXhzTStNSnUrckJjUzJ3OHVUN212MVJKbG14?=
 =?utf-8?B?d0wvdFRBKzZLbGI3QjdlQkJsK3FrV1J5OUJLVG1mMTJRUkt2OG9Hc2dIRVRK?=
 =?utf-8?B?TG9IbDE4WEN3OGpJazV6cm0rQllZclpkY2dtczR4bTlIZFV5QnFubzU4NWxl?=
 =?utf-8?B?NG5OM0lGZEUwQVlKRzU0Z1BYeFlqKytoL200OXJBTXV6T00ydVd6MkM1VDNX?=
 =?utf-8?B?UHdkZmVBeFliQ0R6NlppS2lNZTZWV2lUajJLNlBhejhjZEVPS09DSGg1UDd1?=
 =?utf-8?B?Z2Z3Yzl2OEZBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0ltTUl3YlRaL3VqU1hZMGxsVVlqM3FPaVBHTktDSGg1VXVOOWFRNTNWYXEv?=
 =?utf-8?B?eXl4N1AzbFVQRXJPK2hpeFRLTmpJbVBvR2FibSt5em8zZzVuYm5xQ1VSYTho?=
 =?utf-8?B?V25qcy96Y0Rsak5LU0Jrb083ME16YnBGclBwa1lMN2xRYkxYS1FQNE80R1NC?=
 =?utf-8?B?WmVlSmx6RlI3SFZQaFprOGFQS2JJWkxSMTJLQ1Z0WHRsVko1SjczUTQ1RXln?=
 =?utf-8?B?K0ZwdW80TGxBK2psMlIvUTQxVG9qRlhiUzlXLzc5RFJlKzRtY21BRlhGQ0RL?=
 =?utf-8?B?VlVMbm9aTlRSbUxqWHRSUml4Y0hDZFhJb2pNOHRRdFBRN1MyRHQwdmtxSlBq?=
 =?utf-8?B?NlRNRGZ0UXRZbmFrUXB5M2lWVjZ1VjVzL1hhZDZrZ0JXcEJEcWNvK3c4NWY1?=
 =?utf-8?B?cjhhMkkyN1Q1SGpNaTV1UGhDckJjZ0Z1S3J5R0hIOGpiK0U2aEhyOHZMTWNs?=
 =?utf-8?B?NUlGNE5aeDVFdFkrc1BvT2ppWUhjejJqa1g2djVmYWVYdnhkdCtvV1pWSk01?=
 =?utf-8?B?bjJmUkFaYU91NkdBT3IwWEdUcUx3TlJnelgrLzdmK1ZRc09KTk8weUczSjlR?=
 =?utf-8?B?eHlJYldvSFlKTmJNNmwrd1ljbllwOTBKeTFtNlN3MWNMVDhXR3dRQ3ViMG5y?=
 =?utf-8?B?TXBZT3RpN21LUmFiK29XSXpFUWFOLzlvQnExUGpjd0xZUjRldkpjekRjV1dV?=
 =?utf-8?B?RHJtdmloY2cyQ3Vja3hIN2NDOG0vWk84TEI4UkM2aStWdEZSMkt1UUdDeXNt?=
 =?utf-8?B?YXdQbG42M0gvbmhEZTNWVXlhQlBxZmttRVgrWFVMaVBYUkxQL1BxRzM2RFJN?=
 =?utf-8?B?dEg2b3Y4THo0SVlxeWRUZVBoNFpwZk5IZFdhdmdUSzVqN1V5OTdlUHF5ZWhn?=
 =?utf-8?B?aDVJMVZjTXRWNnNNZDVpTTNaVVYwVjlNMFltQTRsMCtCM2JiL2pYS2d5MFBq?=
 =?utf-8?B?RU5Ia1ZyYTkrT1BGWGF0bC91Rk5paFpFeHpCeG1hS0s3dW8wcHFwYWprMGVr?=
 =?utf-8?B?dy9nNCtsYlJ6a1RxWm83V25HalArTzl5WTlaTVBpK0l6emxBNzRPZVhUVUJw?=
 =?utf-8?B?Q3ZzVmw5M2hXNUpRejA3T1JDWWRSVGxKLy9mUGxndTFGeFFEbjFMWWVaQ0xF?=
 =?utf-8?B?L25IMi9HWHp4QnIwL1gxMWxZcnRvRnhlUnMydWI5dlo3RG9CSlNoYWxJUlRE?=
 =?utf-8?B?TFI4a0w4QjZRaEhnZjBFVURTNlpLMlQ2S2IzbDFqSXlWcnIwTi9pNzI0UVF2?=
 =?utf-8?B?SjNJQnV1RWY4Zkc4SU05N1NMZGNGcVdWeW9kc1pkelpHRnpTR3VmWnhXZjQ5?=
 =?utf-8?B?Q0N3ait4Ylcvbmd3dnFuc2lwWlZIVnlBK2txWmxZUW4relozR2JOZnVOZS9I?=
 =?utf-8?B?VTh4ZFhXRXRXYmtrU1poazhTQmFRMzR3bUw2SXR5cm5KMzZsZDUwOFFXMFVn?=
 =?utf-8?B?OFZkQnFaNmxFU1RtejV5K2hnUDdrdmtmOGpRV01qTUxYM3lIMDNIS3dJbmJa?=
 =?utf-8?B?eW9VeThsa3hSUHQ3bGt4RFVwZ2tadWZkcWh1OHFPYkNBY2JIZGFLVzFvOG9v?=
 =?utf-8?B?UzJIQ0RUZisyajZUYUFvTXZkazdxajFIMUpwRk5HVHN6Y2JIN3RRU3pxcS9N?=
 =?utf-8?B?RElvOFd5NW40VVhvUTkyUVZwTzI1OVA1M21jSktoVktnL0syZ084cDR4RTR0?=
 =?utf-8?B?RFh6WjZ3Z0gwWWoxcXNMK3pNeUhGYVFVZVhrVHcrTnl1SlpueGlRQm5KMGJG?=
 =?utf-8?B?dE9YNXllaWw3bEErK2l3VWwwaFEzdlFZVGlGZ3AwakhMcmJmUXQwZFBoeFBP?=
 =?utf-8?B?WmNOQlhjMWxIOERzdTE2OGR0NVRZMTJLMzh3Z1d4T3h1MGp1c2lwZGx5K2kz?=
 =?utf-8?B?Q2k5ckFYYjNqMHNtRlY4bHAyZnBaMzBrVXE1NkNKb09KUWNrUHY4Ky9Pc3lT?=
 =?utf-8?B?Y2x3UUNqREV1RE4zYUV1dnBUNE85aFBQVlRpTWxUMEdBUTRWbWg4WDkrSmR6?=
 =?utf-8?B?NzNrU0t5ZFBIZ09CTWxaSzFHbnZwZ3NzZ0pDbllPS0pBYmU4empjNGtzV3h6?=
 =?utf-8?B?TWxoVndhWGFaVzJnUFloVVVXNWpiNDVzaU4yWTBSVlRHRjIxejZZUEFKSGtl?=
 =?utf-8?B?S20yVm9sM3ZvaDA1bHZBSC9UNGJ3RCs2VmFLL2UyNzNCMGwxN0NtTnB0Rlc3?=
 =?utf-8?Q?jJhaPHhO1SrFNIZa5NTL3vI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <70AAB026A4C5034A9747D84BCD8C167C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f97bdf69-5ffe-4175-6d30-08ddf5027873
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 09:21:51.5483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mjj1I4ItylFMLB4toJKEC7T5LnKZfbFWrWlqZELvJZ7BMRQM6LhD03CYWrO5jAM/JXyxybtqa0LjkRLiIzO2we9OC7IL9oDbasyl3rQuVfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7056
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

T24gTW9uLCAyMDI1LTA5LTA4IGF0IDEwOjM1ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
VGhpcyBGSVhNRSBoYXMgYmVlbiB0aGVyZSBmb3JldmVyIGFuZCBhcHBhcmVudGx5IHRoZSBfcHJv
cGVyIGNvZGVfIGhhcw0KPiBuZXZlciBiZWVuIGFkZGVkLCBhbmQsIHNpbmNlIGl0J3MgYSB2ZXJ5
IG9sZCBwbGF0Zm9ybSBhbHJlZGF5LCBtb3N0DQo+IGxpa2VseSBuZXZlciB3aWxsLsKgIEl0IGhh
c24ndCBiZWVuIGEgcHJvYmxlbSB0byBrZWVwIHRoZSB3b3JrYXJvdW5kDQo+IGZvciBhbGwgY2Fz
ZXMsIHNvIGxldCdzIGRyb3AgdGhlIEZJWE1FIHRhZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEx1
Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgNCArKy0tDQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2Vk
LWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4N
Cg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0K
PiBpbmRleCAzYjQwOTQ0MmRiMzcuLjBjZTM0MjBhOTE5ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTgzLDggKzgzLDggQEAg
dTggaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5KQ0KPiDCoH0NCj4gwqANCj4gwqAvKg0KPiAtICogRklYTUU6IFdlIHN0aWxsIGRvbid0
IGhhdmUgdGhlIHByb3BlciBjb2RlIGRldGVjdCBpZiB3ZSBuZWVkIHRvIGFwcGx5IHRoZSBXQSwN
Cj4gLSAqIHNvIGFzc3VtZSB3ZSdsbCBhbHdheXMgbmVlZCBpdCBpbiBvcmRlciB0byBhdm9pZCB1
bmRlcnJ1bnMuDQo+ICsgKiBXZSBkb24ndCBoYXZlIHRoZSBwcm9wZXIgY29kZSBkZXRlY3QgaWYg
d2UgbmVlZCB0byBhcHBseSB0aGUgV0EsIHNvDQo+ICsgKiBhc3N1bWUgd2UnbGwgYWx3YXlzIG5l
ZWQgaXQgaW4gb3JkZXIgdG8gYXZvaWQgdW5kZXJydW5zLg0KPiDCoCAqLw0KPiDCoHN0YXRpYyBi
b29sIHNrbF9uZWVkc19tZW1vcnlfYndfd2Eoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkp
DQo+IMKgew0KDQo=

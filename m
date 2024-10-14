Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBBE99C5D8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 11:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508BB10E401;
	Mon, 14 Oct 2024 09:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nW6wpVAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB6A10E400;
 Mon, 14 Oct 2024 09:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728898545; x=1760434545;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BGDaNHyMYFclNR/qq4PQ1r9MKRAJqAmbH/i+uLdwrNY=;
 b=nW6wpVAndxW9dKU7AFzyUCLuRJNIqhSotMOfd6KLBx6pzX9mD1wPlU/r
 ENTPNkUZ+MS26tM2cizYHBrWtBJCYnTIkcgD1QEn1XM0XBSe+lrqoKHgI
 /kIbvISh6GUzjyj6nzvHGd6BMPfjR2Qu5Jg4Viexz3bVk2vN1HQNnA1bY
 ntnlJnh7jNScWpwAuCaw2o5d3dt5SFU7lD8KBDsytwSfinERgwuC2dWa1
 meAfDGMMx2FfPskhM7oB+JHBXTJcXhPYI5ETt31BtigCQuKg0j35NOoeD
 Ale2KtYczmXAP3krVdcHP4++guodiz/43UMxDke+3CezZPAZkA7PHaZd1 g==;
X-CSE-ConnectionGUID: l9t8VrkwT+2riTuN90Vyvg==
X-CSE-MsgGUID: xZcWkDuRQl65Sg/Z/i8Tbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45710707"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45710707"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:35:44 -0700
X-CSE-ConnectionGUID: Hab915KxTpiyS4ErXi8Bwg==
X-CSE-MsgGUID: IgbllCxOSxKcOGh7MoFMnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100854977"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 02:35:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 02:35:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 02:35:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 02:35:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X1YYWsR7zke3NBM/JZbwOS0nFj5bhAN9tGI+EDQ3sOlfmBB8sTPLT766oGl9Outp6nhvH0N2HW5NGIqjkP4gyPfVnV2jLAlW1PIrJBNpLpbWjygBhu3q+yJKctrQxoDYAvrvKVz4865syA3/ioU48Yu9PCysHGatXMRV1sBndLsT5BaQ0fBlWlRbKXAJldhAdFmLPAlyPD4FnQKJwBqdQmFXBqvsAqFpPrYEOBo942P/6opVYlpJ6RB2syJuIOtTTgl/yDuojAMMFV5wUjd6fGKayZVRUTuCvYa5BSD/u+OpgSV9Aq3AUP1a0PiMzVftSUzfu3NKVgN2Il2zdp6P6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGDaNHyMYFclNR/qq4PQ1r9MKRAJqAmbH/i+uLdwrNY=;
 b=JmNVdJSczfpsNd8TvrNWOfVqRUwzEN/EcjPYGcz1ysKoMuzAuz5RpY0CTUURTN2a6yxwqoyM/IBffKRLIaF2uVIj2bDRxcWGsVYfrvk9GfFfuFEn8QDwZ1QD1Un19MPER8ZXurpUdBTuz/63XuvJdbEBEDAn6hhZiOiH0MImEt1XvOT9FCNAQqx8HtFREwMlj4vDw0bXVD4mHEmItLgLkoFU8BC96txaF8zXfyyljoNf+0I3W3lrKyNqA4+zDXsBnZXMG9qunlm31KCMmkZvFj5WtVYHPp7gqmXvukEmU7V+Ebk04N8ZjvpY02LiE042pBw5YA5bi4XVGZLhzpNBow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 09:35:34 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 09:35:34 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Topic: [PATCH i-g-t] xe: Add test to check pci memory barrier capability
Thread-Index: AQHbGjECOJWxtmbwRkyv3pP0YvixrrJ+ObcAgAfKmoA=
Date: Mon, 14 Oct 2024 09:35:34 +0000
Message-ID: <SJ1PR11MB62045C5F318230CC95640CF181442@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20241009095608.663743-1-tejas.upadhyay@intel.com>
 <20241009103608.uw7fbirmms2dfv62@kamilkon-desk.igk.intel.com>
In-Reply-To: <20241009103608.uw7fbirmms2dfv62@kamilkon-desk.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|SA1PR11MB5897:EE_
x-ms-office365-filtering-correlation-id: 9b13b0a6-01ef-4243-571d-08dcec338d7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SW5xSFVna01UVlo1NDd5ZUt1T3NTcDdXbnhGZ3VlQVpuT1hydWJPZnpkVk9Y?=
 =?utf-8?B?c3NSNkpNREZqbTllbGRYKzZJQm5qR0NQeVJQN09PTmYvNGhNZHIySXdsOFlW?=
 =?utf-8?B?dk9TVHdhaEduaVloOTRsQUluSDlQaUhWQWwzendkWmlUN0xhQUJNK29wWmkv?=
 =?utf-8?B?d1U2bFBwVjdndVljTFVoRDNvdk5kdnVBRUt0d1VXa0FBa1R6WktBSTdjb1VM?=
 =?utf-8?B?UmtkYzRIWTVlWHF0WFZQVXVqMXY5MXZIYVZKZ09KWFZaL3FLYXRIajFKVE9H?=
 =?utf-8?B?MjVPQzFhRWczcEQrVnRkcFg1VjZub2FFVTRlZlZWeDdQSGFvTjFhNEdBVTNv?=
 =?utf-8?B?dFoxV012c0tTQU92d0pLTE5rSTNIRU5lY1QrRXBkSDR4Q1JsTVFVZk5USlBv?=
 =?utf-8?B?QWxxbmIxRlVuZWdUUFVyQW43UURJamtGdVBhZE9mRFdTOWNkdjA3a2p3ek5M?=
 =?utf-8?B?QjhFN2FRWWkrdU5kQnoxN0R0SEVOK1ZkQzI3QVV0T1A2TmlLQ3pJbkVPWkJD?=
 =?utf-8?B?dlJiYlBtQzYxc2ExWnI4aG41Q0ZpZjFVMWdSMjBqVHpHeWUvR2tCNU5nTkls?=
 =?utf-8?B?cWs1cEVKWDdnZGZWT2t4Q3VEV2FFU0tpK29SczNUaFUwNWZFNXFjdEg3cW5G?=
 =?utf-8?B?US9kL2hYOFpLZ0s1NFpYRlNCbXJiUjlBakg5ck5kWjl6MzdvVENKa3JjTENp?=
 =?utf-8?B?UmlIRHN3WGw3TUlQUVVrVjI4TmVQbDdmYWZzQzdUWWQxM2dEMitRYTRZejgy?=
 =?utf-8?B?cG9XNVR2emptRWxFMnJ0eHVqNC9aeWZzOTRCNEZnNnRRdndrc1ZoZGFmaGcw?=
 =?utf-8?B?dThwZXNoaGZJZzNvdUl3K2RSUlFsVDFaWWtTNEtxY0E3cnRFdjMvRkxub2U5?=
 =?utf-8?B?am5qQWRkdmxoZlVxWUtkalZVSEpCTENHYXM1MDdXR0pWZDgxY0FtT3Q1NHFN?=
 =?utf-8?B?QzdScXFuYnAwVHJwcjlQdDBLUmdhRnFjeUlMZGk3MUNMa2ZibnFvZkI2Tm9N?=
 =?utf-8?B?eWRYUmQ4Q1RjTjlWOTJvNWdCbmRETVRmQmV5cEd6MzZDK1dna0M3Ty85VmR0?=
 =?utf-8?B?ampsdTdvK2xWYUNUTTg2TWk4TEZhOWdSQzNTbzVUWjdQak1aVi9LcGRmZkNO?=
 =?utf-8?B?VmtpUW9ZSDN4NmQ1T080bkJFUlV0dzkwejZoS2ppMmkvOEpPZDBwOTVYeE50?=
 =?utf-8?B?eUdNZ3praHlUcWtIT1dUbGd5ams3ZVVGbHIvcTJ0OFAzcGtxMjN5MnRIaTFx?=
 =?utf-8?B?dTNaaFpTa1NjUTRHZjRXNGl2NUV0MXl6cWVWOHhEcEpLV0dVeVc3S0JlV0Vn?=
 =?utf-8?B?ZS9yTk5xSmxqazIzeERGaTltaFg4M2dnTkNmbXdWUHk3QjE2VVg4WG8yT0Z6?=
 =?utf-8?B?czNWSTVpZEtPa0k2Z3lUOUVZdGQwUExwdFVSQnM4TnFQMHhpUEFWOEFvZWlW?=
 =?utf-8?B?eHBMWURuNXhBYXM0ajgvVXRSSGlaYURkVXZMOVF4cUhERTNBKzRIZzBwQU1I?=
 =?utf-8?B?UmFJVytEKzJlTkJScjNzUFNudlgrWlo0ZEZFczlvdndURFdKUElMQmJ6bmFt?=
 =?utf-8?B?OFE3Q05TcmJmMDNIdytrVVMrUExEeEl3N0ZCKzdsSmtVNlRqbmJVTzEzdUFE?=
 =?utf-8?B?NHQwZW1FTWJUQzBUWmhTdjFLeEZCUjlmUWphazN0L2lPQ1NReVZFYVo3Wjk4?=
 =?utf-8?B?TnV0NGxuMy9LcDdZYWliVGhGYVd3MU5NdUNoNEl1ODRDODAxTmVRREQ0WHZO?=
 =?utf-8?B?VHVUZ2ludVg4cFMvaFB5aEVHdzFIV0V3K2dXSnhYQXk4MmZDZ3N2eGRmc0Jv?=
 =?utf-8?B?Wnh1QVgvTVphdXNMd0VzUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1g3K2FTRElEcTlLSUphR1Y2TEEzZGE5WXZMYUZJUFlqdXlJeDZMTHA5Sm9r?=
 =?utf-8?B?Vzc2NlI5alB4ZHFFNUJ4bGpUVDlXRS9aVTVXY09JcEt6bVF3MVVyMzV4SVg2?=
 =?utf-8?B?TnNsQlQ3MHVDKy9uOVg3TmFpUW1UOFVYN1NXVDVTS1d1d1ZhckFPUDFFckMr?=
 =?utf-8?B?eVhEWEJ1N0NQbjIzY1hybjZZN2drSWJsMzRoVlhKNE9JbXJUZ0ROdzRCdzdy?=
 =?utf-8?B?M0h6YWZVaXBIVXdHaCt4VDFONEVTdFpFS2NmeVdkdkxUbjhxcWY3THZ2Ykli?=
 =?utf-8?B?aXpicHFXOG1JUGwvZnM2RE5QZjlWWDRaYVhKaHh4ODhRRzY5ZmxoNlhmUnhJ?=
 =?utf-8?B?ZGwwNFhPV2tGVmJrMnl5OW91ZURyb3FhQnpXOVdlcWZBZmQwdkd1dWNlWUls?=
 =?utf-8?B?TkVCU3NwdTVRYVIyamVTdUZjWmRJdE50YkRsM2hmbjcwbFo2OVgrUlR4aHhC?=
 =?utf-8?B?eThDRWUya2tuaWJTR21USm9ic1gwVGdLUmNURExwejJBamVrcFZjRlJVV0lv?=
 =?utf-8?B?NVh5SkZRREg2OVZMMXdYTkFhazVrTEJtamdTZWFsUEdHY2RpKzQ0Rmp5TTFB?=
 =?utf-8?B?Q21Yenh6bk1ST1ozOHdiM1hLTm5IYzhOUncvdENMS2hLeHZ6RkZSWGJWdnhs?=
 =?utf-8?B?REx5YktlVTczOU5QL0tKQzVKRisxVFhvd0VMNlhYQTJoUFNJYVJjUXh0R09l?=
 =?utf-8?B?d01pSDVRSC9mWGhnSWtHQi9JYVUzSEFCRWhvSWJIZGFUZ3lMUWRNSlh2Tm9k?=
 =?utf-8?B?Q1gvYVRicE9UM3h0bG1GQkxlelBzQ29FNHcyTS9rbXRoeitEb3g1Z1drcXFm?=
 =?utf-8?B?ZytUOFJ1QXJxQkxkd09nUTAzN2drMWV4OWNraDdjaG9qNHowU3Bobkswd0h0?=
 =?utf-8?B?TTM4eVA4VkJzeDNLbnBYemx1WUtvYmFqMzhPdDBpMk43VnYvMEpqWXN2cWsw?=
 =?utf-8?B?dEtvMXQ0TUtob0dmV09MU2VrSHkxQzRjSCtnOWRiOEsvZ1liZmNXUERKTHJL?=
 =?utf-8?B?ekNaWGNVQ1I1TW1Fci9QWWVtNHY1bXViZE9La1UwK3BCZDBqR0dKbjRwNldF?=
 =?utf-8?B?L1czcktObVRWcml6Smd6QzdJRDlWRUczNDl5eDg2VjlSTkdxN3h6bVl4dGZw?=
 =?utf-8?B?MHIzaitWY0NMNDAzZUFZNVlNRkcwYVZqVy9TRVdaRjdSVjdRa3kxVC80b2Iv?=
 =?utf-8?B?YUtLVUFvOTAydU5jVktxNGI4cHNDZkt2ZWNSQkhyYWdHcnhwaFEzVnBBd0xm?=
 =?utf-8?B?bGFrYVZzUTFTdGpNZEh4bnNkOFljd3hNZVhXZitya2V5NEVkQ2JkUnZLU25u?=
 =?utf-8?B?L0xvR0hZR1ZkMit2cG5XRDdkVG81ZjBSVmhCcVJJaGtMV2t1SDk2clA5VjN3?=
 =?utf-8?B?UFhBaHZIZ210c3FzS0RFUXY3Y3ZCNVllcmpRZkwxWnU3bWk2cU1HWTBtZnpp?=
 =?utf-8?B?cWYwdmUrRnVxVWo1ODNBV3hkMERXMWE5SnN2U20zVjdJWm52TTN0WjN4cXFs?=
 =?utf-8?B?RzJSOVFoSllKaEhBN2RqWWVzcEE1OFBSS0p1T3hSckNUSWtFem5IOFhOUVZZ?=
 =?utf-8?B?bkZhU0RYY3lOTlgvWVVtWkY1K3lVRk1RMEtncnFYbU9GenloZi9jZWJwU25L?=
 =?utf-8?B?RUc5T1QyYldudk9qMDV0MG8zMllSWWhvQnBhZzQzTG5hb1NRWWpOdXErMFM5?=
 =?utf-8?B?TlM4WkpWMmdXekNuajlSQ0h0Nk9WV3M2N2pObm43ZUVhNDEyLzJPUEk4K2dU?=
 =?utf-8?B?Y1dqWlE0QkV1dUdFYlNteWozYkw5dUoydUVpVjU1Nms0UjZtS0F1eDQvTUtJ?=
 =?utf-8?B?K0FvR016VTczTTZLc2NjeThmcUdOUDQwdnJOS2xOVlRWTENGRXZ5YmVjeUw2?=
 =?utf-8?B?NVVJd0k2alBTUDZPVmxEbkpzK1ZpRXN4TzFIYWdKSjBqWmlnYzdDdmdxejlB?=
 =?utf-8?B?bWphclFIYi8zbDN1ZklTRCt6UUw4VCt1QmpIRzdPRVRmams1aVdBb2dMZGda?=
 =?utf-8?B?cnQrdThUV05CVGQvKzJKemtoQnFFOGgvTWtHSnVMdTFrQ0FDcVlvcGJ6WVh6?=
 =?utf-8?B?cmp4am9qbDEySEIxUkswU3FjSDBjYXZVYzlCTDdQWkVQK0RabW5VNG9TTlBM?=
 =?utf-8?Q?65sulgliiKi3g7LaKOt+6JDIg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b13b0a6-01ef-4243-571d-08dcec338d7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 09:35:34.0453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3oMl1iMtPlGrqpkPUmfcoWtPXxdcJ3kc9ZMRp1qxnmD4HEoztrVmD78eYk7DWKpx58togWGbsYNWly+PA5EWv9i2EDZQI/D+pq/UzVHV0I4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FtaWwgS29uaWVjem55
IDxrYW1pbC5rb25pZWN6bnlAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9j
dG9iZXIgOSwgMjAyNCA0OjA2IFBNDQo+IFRvOiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogVXBhZGh5YXksIFRlamFzIDx0ZWphcy51cGFkaHlheUBpbnRlbC5jb20+OyBpbnRl
bC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGkt
Zy10XSB4ZTogQWRkIHRlc3QgdG8gY2hlY2sgcGNpIG1lbW9yeSBiYXJyaWVyIGNhcGFiaWxpdHkN
Cj4gDQo+IEhpIFRlamFzLA0KPiBPbiAyMDI0LTEwLTA5IGF0IDE1OjI2OjA4ICswNTMwLCBUZWph
cyBVcGFkaHlheSB3cm90ZToNCj4gPiBXZSB3YW50IHRvIG1ha2Ugc3VyZSB0aGF0IGRpcmVjdCBt
bWFwIG1hcHBpbmcgb2YgcGh5c2ljYWwgcGFnZSBhdA0KPiA+IGRvb3JiZWxsIHNwYWNlIGFuZCB3
aG9sZSBwYWdlIGlzIGFjY2Vzc2libGUgaW4gb3JkZXIgdG8gdXNlIHBjaSBtZW1vcnkNCj4gPiBi
YXJyaWVyIGVmZmVjdCBlZmZlY3RpdmVseS4NCj4gPg0KPiA+IFRoaXMgaXMgYmFzaWMgcGNpIG1l
bW9yeSBiYXJyaWVyIHRlc3QgdG8gc2hvd2Nhc2UgeGUgZHJpdmVyIHN1cHBvcnQNCj4gPiBmb3Ig
ZmVhdHVyZS4gSW4gZm9sbG93IHVwIHBhdGNoZXMgd2Ugd2lsbCBoYXZlIG1vcmUgb2YgY29ybmVy
IGFuZA0KPiA+IG5lZ2F0aXZlIHRlc3RzIGFkZGVkIGxhdGVyLg0KPiA+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogVGVqYXMgVXBhZGh5YXkgPHRlamFzLnVwYWRoeWF5QGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgaW5jbHVkZS9kcm0tdWFwaS94ZV9kcm0uaCAgICAgICB8ICAzICsrDQo+IA0KPiBQbGVh
c2Ugc2VuZCB1cGRhdGVzIHRvIGRybS11YXBpIHdpdGggYSBzZXBhcmF0ZSBwYXRjaC4NCg0KU3Vy
ZSwgd2lsbCBkbyB0aGF0Lg0KDQpUZWphcw0KPiANCj4gUmVnYXJkcywNCj4gS2FtaWwNCj4gDQo+
ID4gIHRlc3RzL2ludGVsL3hlX3BjaV9tZW1iYXJyaWVyLmMgfCA3Nw0KPiArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysNCj4gPiAgdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgICAg
ICB8ICAxICsNCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA4MSBpbnNlcnRpb25zKCspDQo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jDQo+ID4NCj4g
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0tdWFwaS94ZV9kcm0uaCBiL2luY2x1ZGUvZHJtLXVh
cGkveGVfZHJtLmgNCj4gPiBpbmRleCBmMGE0NTBkYjkuLjg2NmRjODA2MCAxMDA2NDQNCj4gPiAt
LS0gYS9pbmNsdWRlL2RybS11YXBpL3hlX2RybS5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0tdWFw
aS94ZV9kcm0uaA0KPiA+IEBAIC04MjMsNiArODIzLDkgQEAgc3RydWN0IGRybV94ZV9nZW1fbW1h
cF9vZmZzZXQgew0KPiA+ICAJLyoqIEBvZmZzZXQ6IFRoZSBmYWtlIG9mZnNldCB0byB1c2UgZm9y
IHN1YnNlcXVlbnQgbW1hcCBjYWxsICovDQo+ID4gIAlfX3U2NCBvZmZzZXQ7DQo+ID4NCj4gPiAr
CS8qIFNwZWNpZmljIE1NQVAgb2Zmc2V0IGZvciBQQ0kgbWVtb3J5IGJhcnJpZXIgKi8gI2RlZmlu
ZQ0KPiA+ICtEUk1fWEVfUENJX0JBUlJJRVJfTU1BUF9PRkZTRVQgKDB4NTAgPDwgUEFHRV9TSElG
VCkNCj4gPiArDQo+ID4gIAkvKiogQHJlc2VydmVkOiBSZXNlcnZlZCAqLw0KPiA+ICAJX191NjQg
cmVzZXJ2ZWRbMl07DQo+ID4gIH07DQo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2ludGVsL3hlX3Bj
aV9tZW1iYXJyaWVyLmMNCj4gPiBiL3Rlc3RzL2ludGVsL3hlX3BjaV9tZW1iYXJyaWVyLmMgbmV3
IGZpbGUgbW9kZSAxMDA2NDQgaW5kZXgNCj4gPiAwMDAwMDAwMDAuLmEyOGEwMWQ0Yg0KPiA+IC0t
LSAvZGV2L251bGwNCj4gPiArKysgYi90ZXN0cy9pbnRlbC94ZV9wY2lfbWVtYmFycmllci5jDQo+
ID4gQEAgLTAsMCArMSw3NyBAQA0KPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
DQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodChjKSAyMDI0IEludGVsIENvcnBvcmF0aW9uLiBB
bGwgcmlnaHRzIHJlc2VydmVkLg0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlICJ4ZV9k
cm0uaCINCj4gPiArI2luY2x1ZGUgImlndC5oIg0KPiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIFRF
U1Q6IFRlc3QgaWYgdGhlIGRyaXZlciBpcyBjYXBhYmxlIG9mIHB1dHRpbmcgcGNpIG1lbW9yeSBi
YXJyaWVyDQo+ID4gK3VzaW5nIG1tYXANCj4gPiArICogQ2F0ZWdvcnk6IENvcmUNCj4gPiArICog
TWVnYSBmZWF0dXJlOiBHZW5lcmFsIENvcmUgZmVhdHVyZXMNCj4gPiArICogU3ViLWNhdGVnb3J5
OiBNZW1vcnkgbWFuYWdlbWVudCB0ZXN0cw0KPiA+ICsgKiBGdW5jdGlvbmFsaXR5OiBtbWFwIHdp
dGggcHJlLWRlZmluZWQgb2Zmc2V0ICAqLw0KPiA+ICsNCj4gPiArSUdUX1RFU1RfREVTQ1JJUFRJ
T04oIkJhc2ljIE1NQVAgdGVzdHMgcGNpIG1lbW9yeSBiYXJyaWVyIGVmZmVjdCB3aXRoDQo+ID4g
K3NwZWNpYWwgb2Zmc2V0Iik7ICNkZWZpbmUgUEFHRV9TSElGVCAxMiAjZGVmaW5lIFBBR0VfU0la
RSA0MDk2DQo+ID4gKw0KPiA+ICsvKioNCj4gPiArICogU1VCVEVTVDogcGNpLW1lbWJhcnJpZXIt
YmFzaWMNCj4gPiArICogRGVzY3JpcHRpb246IGNyZWF0ZSBwY2kgbWVtb3J5IGJhcnJpZXIgd2l0
aCB3cml0ZSBvbiBkZWZpbmVkIG1tYXANCj4gb2Zmc2V0Lg0KPiA+ICsgKiBUZXN0IGNhdGVnb3J5
OiBmdW5jdGlvbmFsaXR5IHRlc3QNCj4gPiArICoNCj4gPiArICovDQo+ID4gKw0KPiA+ICtzdGF0
aWMgdm9pZCBwY2lfbWVtYmFycmllcihpbnQgeGUpDQo+ID4gK3sNCj4gPiArCXVpbnQ2NF90IGZs
YWdzID0gTUFQX1NIQVJFRDsNCj4gPiArCXVpbnQ2NF90IG9mZnNldCA9IERSTV9YRV9QQ0lfQkFS
UklFUl9NTUFQX09GRlNFVDsNCj4gPiArCXVuc2lnbmVkIGludCBwcm90ID0gUFJPVF9XUklURTsN
Cj4gPiArCXVpbnQzMl90ICpwdHI7DQo+ID4gKwl1aW50NjRfdCBzaXplID0gUEFHRV9TSVpFOw0K
PiA+ICsJc3RydWN0IHRpbWVzcGVjIHR2Ow0KPiA+ICsNCj4gPiArCXB0ciA9IG1tYXAoTlVMTCwg
c2l6ZSwgcHJvdCwgZmxhZ3MsIHhlLCBvZmZzZXQpOw0KPiA+ICsJaWd0X2Fzc2VydChwdHIgIT0g
TUFQX0ZBSUxFRCk7DQo+ID4gKw0KPiA+ICsJLyogQ2hlY2sgd2hvbGUgcGFnZSBmb3IgYW55IGVy
cm9ycywgYWxzbyBjaGVjayBhcw0KPiA+ICsJICogd2Ugc2hvdWxkIG5vdCByZWFkIHdyaXR0ZW4g
dmFsdWVzIGJhY2sNCj4gPiArCSAqLw0KPiA+ICsJZm9yIChpbnQgaSA9IDA7IGkgPCBzaXplIC8g
c2l6ZW9mKCpwdHIpOyBpKyspIHsNCj4gPiArCQkvKiBJdCBpcyBleHBlY3RlZCB1bmNvbmZpZ3Vy
ZWQgZG9vcmJlbGwgc3BhY2UNCj4gPiArCQkgKiB3aWxsIHJldHVybiByZWFkIHZhbHVlIDB4ZGVh
ZGJlZWYNCj4gPiArCQkgKi8NCj4gPiArCQlpZ3RfYXNzZXJ0X2VxX3UzMihSRUFEX09OQ0UocHRy
W2ldKSwgMHhkZWFkYmVlZik7DQo+ID4gKw0KPiA+ICsJCWlndF9nZXR0aW1lKCZ0dik7DQo+ID4g
KwkJcHRyW2ldID0gaTsNCj4gPiArCQlpZiAoUkVBRF9PTkNFKHB0cltpXSkgPT0gaSkgew0KPiA+
ICsJCQl3aGlsZSAoUkVBRF9PTkNFKHB0cltpXSkgPT0gaSkNCj4gPiArCQkJCTsNCj4gPiArCQkJ
aWd0X2luZm8oImZkOiVkIHZhbHVlIHJldGFpbmVkIGZvciAlIlBSSWQ2NCJucw0KPiBwb3M6JWRc
biIsDQo+ID4gKwkJCQkgeGUsIGlndF9uc2VjX2VsYXBzZWQoJnR2KSwgaSk7DQo+ID4gKwkJfQ0K
PiA+ICsJCWlndF9hc3NlcnRfbmVxKFJFQURfT05DRShwdHJbaV0pLCBpKTsNCj4gPiArCX0NCj4g
PiArDQo+ID4gKwltdW5tYXAocHRyLCBzaXplKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAraWd0X21h
aW4NCj4gPiArew0KPiA+ICsJaW50IHhlOw0KPiA+ICsNCj4gPiArCWlndF9maXh0dXJlIHsNCj4g
PiArCQl4ZSA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJfWEUpOw0KPiA+ICsJfQ0KPiA+ICsNCj4g
PiArCWlndF9zdWJ0ZXN0X2YoInBjaS1tZW1iYXJyaWVyLWJhc2ljIikNCj4gPiArCQlwY2lfbWVt
YmFycmllcih4ZSk7DQo+ID4gKw0KPiA+ICsJaWd0X2ZpeHR1cmUgew0KPiA+ICsJCWNsb3NlKHhl
KTsNCj4gPiArCX0NCj4gPiArfQ0KPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBi
L3Rlc3RzL21lc29uLmJ1aWxkIGluZGV4DQo+ID4gZTVkODg1MmYzLi4zMTBlZjBlMGQgMTAwNjQ0
DQo+ID4gLS0tIGEvdGVzdHMvbWVzb24uYnVpbGQNCj4gPiArKysgYi90ZXN0cy9tZXNvbi5idWls
ZA0KPiA+IEBAIC0zMDQsNiArMzA0LDcgQEAgaW50ZWxfeGVfcHJvZ3MgPSBbDQo+ID4gIAkneGVf
bm9leGVjX3BpbmdfcG9uZycsDQo+ID4gIAkneGVfb2EnLA0KPiA+ICAJJ3hlX3BhdCcsDQo+ID4g
KyAgICAgICAgJ3hlX3BjaV9tZW1iYXJyaWVyJywNCj4gPiAgCSd4ZV9wZWVyMnBlZXInLA0KPiA+
ICAJJ3hlX3BtJywNCj4gPiAgCSd4ZV9wbV9yZXNpZGVuY3knLA0KPiA+IC0tDQo+ID4gMi4zNC4x
DQo+ID4NCg==

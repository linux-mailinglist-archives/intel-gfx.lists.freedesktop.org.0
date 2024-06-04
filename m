Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFC58FAC23
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 09:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F7B10E21F;
	Tue,  4 Jun 2024 07:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rvo9YK09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED8810E21F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 07:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717486481; x=1749022481;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+GZeLssKZU5KCiHv+mqIO3mGPXUqdrT8Yg1YZqMEcv4=;
 b=Rvo9YK090c+1vXn9E6nE49eF918ba3/AyzHxwhKCLFtkB46ZdWnYqC6n
 dh9fFk/cjH7cL3wM+ax+h0er+e954xT2FmBdSMikLIVstc4dG7I7UutGo
 a8YlhIQEl1vV/oRol2S2JkyeIboXecA1pP/AKZB0NHSijyqv6770A9BVt
 9CYdGTh9h4fVb3b4HuUYsCwhcj2N9Hjv+pA5fm/EnU9EXhiLhJW53eTiH
 u0kApl9yK9FgR4gVCjpOiuwO4PSrC5rXOcr/+q8XfUyYXvIUHkcdUh1xx
 nVb9yIVX8GJMSa9a6H05dt2jXIByyTdfFORV9SfJ90O6heog0KSYJzOLC g==;
X-CSE-ConnectionGUID: Wa9yr4m+ToqQZ+qvRsmvAQ==
X-CSE-MsgGUID: kPMoosKcSh2U0YwFGvxbdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="14138420"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="14138420"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 00:34:41 -0700
X-CSE-ConnectionGUID: THd69GlaQ5aJNTtYykbeCg==
X-CSE-MsgGUID: Y1KocJm8RiCHeLGQTI9hVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="42234719"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 00:34:41 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 00:34:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 00:34:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 00:34:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJe75oW2ZSNbV2Dq+V+1t8tOBQ2+7giRtBpw2cSF820OwwcmvL/uElfk5ItUNkcI1u2j7y4ev0K2+NJbTBIqjL2/XHyUPRkjax5Ebb2v2bmXq25mi7+zrHHvUOUA52wDPERVS7bkRAelUwO6AUHRlUZQACuqUbDWklmsBvsXGiIrT7+Lr+zzn8D6PdXkWasE4cGBzc51hE9pzDXe1BEcvtSla75lGt2BeJ8F9TyW6UUoJGZ7DC6AJPylEVJ+UiE26uf+VpTtCOM5aXhvbckd9yE8y1Q0afkHZ06VYlyJwRA+IBI/56OyZbPhRTWH3vy0A7Ls8pvS7ja9cna5pQc+DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+GZeLssKZU5KCiHv+mqIO3mGPXUqdrT8Yg1YZqMEcv4=;
 b=h59EbWjOMLYMdJObMXkEnt8/0wAkzEAwfZ4Elkk9d5a5LGx1g2j7HK9it0wWhFCHb9FdPbLFPM0OhwP6vHRWzAsIG2F/TsktuQNu3DXbewn86qH3AhiR1UQDncrFnDZdAJj5dHB7gxNtVXysHi2L6Wb+bQvisk2/6aGL/aMjJeapigYGyAXKB8WWVFrM//UCXIARmkRBE+4A5Fm/4oBuMmZMevW6vkZzlJ4GoP2+89xXRCG5VNkkSexEeOEvy9oQagyUV/Mvk04fTKsvnMlqit+ONzo+B7LIaXdDioPBI9quARK1knU5uCUY1ceu+wI3PSDmpQmOXX6ycYdMBhi6jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.25; Tue, 4 Jun 2024 07:34:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 07:34:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915: Fix assert on pending async-put power domain
 work when it requeues itself
Thread-Topic: [PATCH] drm/i915: Fix assert on pending async-put power domain
 work when it requeues itself
Thread-Index: AQHasn+yxLx9/r0SJUeCikP6cZMCm7G3PkeA
Date: Tue, 4 Jun 2024 07:34:32 +0000
Message-ID: <c0abc6e5fcf41450a4b3d92ceec6247c9308ab34.camel@intel.com>
References: <20240530105312.1016485-1-imre.deak@intel.com>
In-Reply-To: <20240530105312.1016485-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6304:EE_
x-ms-office365-filtering-correlation-id: 6fbec84f-196d-418b-9aa7-08dc8468c6b0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WlUxTVBvcUFrdE5SUlVETUs3dzlDNzBuUFp1b01wUk1ibXljbCtVWmYrTlNs?=
 =?utf-8?B?MHZKRDlnKzBZU3ViRWFESEY2dXRlSGFKVmFKNk9RLzlGNE9tYTFZSW5CVHRL?=
 =?utf-8?B?aFlBYUVFcWFCWEFlN2VEYnRHWUM4dGhMVWNrMm1oMHBiNnBlWnEyR21oMjg4?=
 =?utf-8?B?UFA1VzlaOVQ0VFBzWFh5UU1qRmE0cXZScFRkSmpna2NTMVMvdWdzS2gwbC9E?=
 =?utf-8?B?ZmVPQmFONVN1K05adWpkdzRIN3NRbGJ5MnVBT0NRWWJ2cjJvYzVkNEdBRzJ2?=
 =?utf-8?B?S3VMT2ZjaG5xcVFud0JZbU5XT012T1g1K0w0di9ZU3Rwc21KZVJVYWhSNWJW?=
 =?utf-8?B?S1NObzVDL09sN0NaaTNlc0Q4blJwZlF3NzN4T1JiL2dPRDFvd3Zvc3YxUHND?=
 =?utf-8?B?eHNXOWYrcDhTRExaaVlCdUE4L2hmT2k4RlA3VndQYlpGUzAvVjNDWU53dTY2?=
 =?utf-8?B?MHFnelozM3p0aFZZY1dBbUtHUStZZnV0eUs0WjBwUmVSSklFS3EzNDB1SjdO?=
 =?utf-8?B?L29pamVnT0ZVaWxqL28yQXVIbVpvSk95NHcwM25oY29pcHdBQnVvTEhzckNM?=
 =?utf-8?B?NmhBMXV5OFFQcHJnVVJ4Nzc2NjMyaWdlTThha1RxWmxaYW5GdVZaWGNvRksx?=
 =?utf-8?B?U3pDTjJ3R0dpbFBwQ1EzQmVkSWkvUjdMbWt5ekNTeEFVR0JjSzhHNmEwclRu?=
 =?utf-8?B?ZXArVDZKMnVMRzVkZUovNm9KTDJXeVUvNzAwbGdRSWIwTXppem14clBOTnQ2?=
 =?utf-8?B?U3FRWFZMbGFlWE1WM3UreGdMakxTajFpb0FBMktObGxDUjhKSGxrdVJqSTM3?=
 =?utf-8?B?NzJwdGZMbExLRGtPVy9jdTIvd3Q1c2puSitSYWhsaHptWGlwa2tKSzBVN1RX?=
 =?utf-8?B?SmtKV3RNcHQxeFo1OHY5MEVCaFY2c3l0NkdMbG5Eb3dhSm5JdGR0czJCbEVh?=
 =?utf-8?B?eDF1ckR2dTFsT1RlK0RwWDdjcEtQWjFMTjgvdGdzL24rYjk4Q0V5MzREaU9u?=
 =?utf-8?B?RklER3J5aGZESnBUVnFBMk1aYVVQZHdZNGR5ZXRsdUxDMVlBL3NQQmUyTmVI?=
 =?utf-8?B?Q0JUVU9zR09hTERPVGQ1WkJSeUhGcml3d2c5OXJjc3ZYSXVVSGFjU3YzOCto?=
 =?utf-8?B?R2NNWVIrekx4aStML3FDdGp2ZXpsMDREbG1mdG5LNTFBU2c2N0lCZWgrdFd5?=
 =?utf-8?B?cFJEZjRESUNRaW5NTFA3emJGWXM5SlZCcmQvNnQ0YVNYdlI1REYvaFZ5QmNa?=
 =?utf-8?B?NVJUa1BxWjZPckh4ZmtIM05KYnpwMFRQY2JmU3JuV05OVWRqUXVBKzRtNjRT?=
 =?utf-8?B?bUpaeW4zaW8vZUJDUGx3bTZHb2NwdjRZVE05bjk0YVBzTVMvMUc2S1Q4RFNO?=
 =?utf-8?B?by8xck8reTZjSGpjZ2orbEhpYUZkTXNkVm1xdWRGM3VMOWZVRm90dy9MOVR5?=
 =?utf-8?B?SHJ0WVBZeWcrU0lFYjczSGU5M2lUOEdCeFphWTA1NDQwOUdVaFpoUHI1TXNN?=
 =?utf-8?B?blcrME9YUjBzeWVJbm42WitGNmo5OFF1dzZoczhSWVoxT05xQTNnb0VqcnZN?=
 =?utf-8?B?eW00YjVnVVpUVHZzUFNWUURMSVdGRks4TlAzaW1LZ3NYSnVOaGI4K0xOMlNY?=
 =?utf-8?B?cG91M29NZDZMZU9RaEFQSEo0MXNrYXRJWkZXaDdwWFpKWlkzS3BmOTgzT2RK?=
 =?utf-8?B?QWFhcmF6cWNObzN5OE1nRjZ3dlNzZ3I4emxGRW9kZUtrSVoxVlhMYzdRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0U1a05mblNhMlJDbWJsNitDcnJhcVFFSW5yWFhBVG5INm1ySXk2MEdXL0Jq?=
 =?utf-8?B?TWs3ZnBHYThwWFJyL21KVmFnVlZ2Vm1GcjNKZUhLeGVHNjFEeWF4MlJ5R1Ex?=
 =?utf-8?B?YmtKajRtek9EOWlVcGMzUCtaU3FSSHUvaFA0ZTN0RjdWc1JVWHNFS0w2TUlx?=
 =?utf-8?B?cUdTK1Rmbm94SS82Q3kyTXRnWUtwdS9BTHNQeWR0Njc5UGFaT0hDSGRyaGo4?=
 =?utf-8?B?bmdXS0Z3ZENZT3lDbm5pajh6YmxGbEV1SGdqbTFPZ1VoS1lWdFFUckM1QllP?=
 =?utf-8?B?QmFCNzZYL09uU0tYQmRCdmNkcWJReFhMMTJ4akd2SS8wSnFPR2tLemdJU1R2?=
 =?utf-8?B?UDV3UW1ETDdDbXhYWGszeVpFcXFxMUFWZmZuRmJiOW83V2Q1TSs5S3M3Q3VT?=
 =?utf-8?B?TGNwcDkwck5wcXRoZmZYek10cHpRRjJFV1IyZjd2ZGsxZldlbC9NNVhKZ2hE?=
 =?utf-8?B?ZFIwd1ZIcUV6QVFUL0x6RnVmdVlLL2pVOVhyUWx6UUgzRWhZZUg4Q0Nvck1B?=
 =?utf-8?B?aTR5VEVjcmhoOGY0c1MxUlNSRjlhRjAzUkJxS3p3bzkvOW0veWZEY1FqUjJV?=
 =?utf-8?B?eUgxckZ3TVVoRVl1cC90akhaaTlidnJNSmdaUmZSRUpIQXgydGdma3FJL3JD?=
 =?utf-8?B?Lzdxaks5SlMrZExoMWVLNGp0dmdnOHJFRW5kY2MvRDFwcFFLNDJ5TVEvYW1C?=
 =?utf-8?B?VmJTeWlqY1NXWTBxdktoYmxvbjNIREJpQVh4UGxDbnVNTXNrTnFDZEtmbnNF?=
 =?utf-8?B?SlJaM3hRRmM0Zld6NlFwbm8rQ0dONWNvR1dSM05mMjBJc3FQaVlWcTlGNHdF?=
 =?utf-8?B?SE5McHo1ZFpxc0FUSGI1SWJBL2JTK0JQeGtLcTIrejFGM0lnYUpyL1JPbzZv?=
 =?utf-8?B?UGRvdVQrSTAvQUZ2NjlxRVllMUhyaW4wWmxGcHRGdU1ZOSszYkpQTUZ6THBu?=
 =?utf-8?B?blBuVlFzSjVJY3UrYTMvazBRcmpMUm5IbUkyZmw3VzRGV1lHcXhqRzlaR2x0?=
 =?utf-8?B?NjVhdUN5S05qZk5wUlRLd1Jjb0tMN0paR3hnWW1uTGV1bmZGZUJnTXJqL0Ny?=
 =?utf-8?B?bk92WWlQNENCcXZLelhmLzNNalJEUnRncFpSVHZram1neThuYVE5UjRXMDhu?=
 =?utf-8?B?ZFVXSGxGcUorTlB0clVMSncvRk40U1ZZL3hnQXR4K1pkVGovc0UvWEVWOXZE?=
 =?utf-8?B?dTV1YkNxWVVSM014MmsyTHpCRWJ2dVlHSWhyWERPblJudFdBMjc0U25jaWlh?=
 =?utf-8?B?Z2NRZ1dkbzBucHMzYzd1SDIzN05GR1J0QU9CbnY5SnRFYUo1OVExUm42cTlL?=
 =?utf-8?B?UmFTY2hxQ2NtUVo0Z0t1YzJYUHF0ZWRZYlp2dC9zbm1BOFZBbytBc0c2SS9J?=
 =?utf-8?B?VnlXcjVRNTg5eWU1WUtKeVY1VkpuaW1CSEdqbEgwY1huUWFlRmpEcHJJYXIv?=
 =?utf-8?B?NFRyMkpPODVsbThIYkUxUVUzSkhjV1hnMTlWc2VJM2pwN3dhK0lnaTF5ZHcz?=
 =?utf-8?B?N0VhamdqTEpSbDBFZURIK2pSRlc1Qk9wYlJBMmdLN01vOFNPanZJZzdQc1Fw?=
 =?utf-8?B?VHN2Q2ZsQ3Q3TzJlOHVFUGJSODcySFU4bzkwdW15Tnp3K0pycndJNzVUWE50?=
 =?utf-8?B?UnFydGk3djBYV0hjK2hiUE1XKzY2RXUrUWZIdlQ0anUrbE0vS0Q5Rk1IR2dh?=
 =?utf-8?B?NWRvcHphT3NzWTlNcnNtNHlObm55MW1qT2pIVVZSdGVJYXJaYU5PdHAwUzVn?=
 =?utf-8?B?OGhYNEZnb0NmQk9CVzh1U0xaTGdjZXE0S3lWRm9zdmNnajl2Vy9LRml3cXha?=
 =?utf-8?B?bHJmckd0amt3OWZVT0tGaHlzUTc2N1h5ZnRWa1M3MCswZUlEeUVNVFZqYW1Z?=
 =?utf-8?B?cmJFYTFzK2RBYXdTL1cxRVZRVURLa2tsOVhpcUs5SUF5SWVmeVR1Wlp5dWtz?=
 =?utf-8?B?ZEVvOHBHMXp5WktHMFFxMHFFMkxneVJYUWJCblFURWo1OWZZR1BVMklkemZ4?=
 =?utf-8?B?eWl4TzMwQzJudWphdGRiRlZXNTZLK0kyK3ZRUWZPWlA1aG11c1lweFZpYjlL?=
 =?utf-8?B?bDhuYVNFN0JCZDRVajFBQkE4bDE3STZnMzRucVlsWDM5ejZReklkZlJJZXZj?=
 =?utf-8?B?TVhkWE84L1ZrZFNWZEtvdzc4N2VNcWR2MlVIbU9DbDk2UG45M2ZsVzdPL0dr?=
 =?utf-8?B?TUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3939B4DBA4EF834791CEF7FD60A96F53@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fbec84f-196d-418b-9aa7-08dc8468c6b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 07:34:32.4387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8B+1wDlGPth5HGPkjRTNC/cGJ4lcjxfYh0lXTAFFGWLAI90+AkaZSh+KZSVoi7W3E3jKYWbMi+P8gDEqEjxDsjEd7nG/bTcpFybBtoIPWeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
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

T24gVGh1LCAyMDI0LTA1LTMwIGF0IDEzOjUzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gQ29t
bWl0IGRkODM5YWE4NTdlYiAoImRybS9pOTE1OiBGaXggaW5jb3JyZWN0IGFzc2VydCBhYm91dCBw
ZW5kaW5nCj4gcG93ZXIgZG9tYWluIGFzeW5jLXB1dCB3b3JrIikKPiAKPiBmaXhlZCB0aGUgYXNz
ZXJ0IGFib3V0IGEgcGVuZGluZyB3b3JrIGRyb3BwaW5nIGEgZGlzcGxheSBwb3dlcgo+IHJlZmVy
ZW5jZQo+IGFzeW5jaHJvbm91c2x5LCBsZWFkaW5nIHRvIHRoZQo+IAo+IGRybV9XQVJOX09OKCFx
dWV1ZV9kZWxheWVkX3dvcmsoJnBvd2VyX2RvbWFpbnMtPmFzeW5jX3B1dF93b3JrKSk7Cj4gCj4g
d2FybiBuZXh0IHRpbWUgYXJvdW5kIGEgcG93ZXIgcmVmZXJlbmNlIHdhcyBwdXQgYXN5bmNocm9u
b3VzbHksIGR1ZQo+IHRvIGEKPiBzdGFsZSBpbnN0YW5jZSBvZiB0aGUgd29yayBzdGlsbCBiZWlu
ZyBwZW5kaW5nLiBIb3dldmVyIHRoZSBmaXgKPiBkaWRuJ3QKPiBjb25zaWRlciB0aGUgY2FzZSB3
aGVyZSBtdWx0aXBsZSBwb3dlciByZWZlcmVuY2Ugd2FzIGFjcXVpcmVkIGFuZAo+IHB1dCwKPiBy
ZXF1aXJpbmcgdGhlIHdvcmsgdG8gcmVxdWV1ZSBpdHNlbGYuIEV4dGVuZCB0aGUgZml4IGZvciB0
aGlzIGNhc2UgYXMKPiB3ZWxsIGNhbmNlbGluZyB0aGUgcGVuZGluZyBpbnN0YW5jZSBvZiB0aGUg
d29yayBiZWZvcmUgaXQgcmVxdWV1ZXMKPiBpdHNlbGYuCgpSZXZpZXdlZC1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cgo+IAo+IENsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMDkxNQo+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAtLS0KPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTIgKysr
KysrLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKPiBpbmRleCAzNGI2ZDg0M2JjOWVmLi44YzQ5YWMwNTNkZmIwIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKPiBAQCAtNjc1LDYgKzY3NSwxMiBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3lu
Y193b3JrKHN0cnVjdAo+IHdvcmtfc3RydWN0ICp3b3JrKQo+IMKgwqDCoMKgwqDCoMKgwqByZWxl
YXNlX2FzeW5jX3B1dF9kb21haW5zKHBvd2VyX2RvbWFpbnMsCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZwb3dlcl9k
b21haW5zLQo+ID5hc3luY19wdXRfZG9tYWluc1swXSk7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqAv
Kgo+ICvCoMKgwqDCoMKgwqDCoCAqIENhbmNlbCB0aGUgd29yayB0aGF0IGdvdCBxdWV1ZWQgYWZ0
ZXIgdGhpcyBvbmUgZ290Cj4gZGVxdWV1ZWQsCj4gK8KgwqDCoMKgwqDCoMKgICogc2luY2UgaGVy
ZSB3ZSByZWxlYXNlZCB0aGUgY29ycmVzcG9uZGluZyBhc3luYy1wdXQKPiByZWZlcmVuY2UuCj4g
K8KgwqDCoMKgwqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgY2FuY2VsX2FzeW5jX3B1dF93b3Jr
KHBvd2VyX2RvbWFpbnMsIGZhbHNlKTsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFJlcXVldWUg
dGhlIHdvcmsgaWYgbW9yZSBkb21haW5zIHdlcmUgYXN5bmMgcHV0IG1lYW53aGlsZS4KPiAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWJpdG1hcF9lbXB0eShwb3dlcl9kb21haW5zLT5hc3luY19w
dXRfZG9tYWluc1sxXS5iaXRzLAo+IFBPV0VSX0RPTUFJTl9OVU0pKSB7Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBiaXRtYXBfY29weShwb3dlcl9kb21haW5zLT5hc3luY19wdXRf
ZG9tYWluc1swXS5iaXRzLAo+IEBAIC02ODYsMTIgKzY5Miw2IEBAIGludGVsX2Rpc3BsYXlfcG93
ZXJfcHV0X2FzeW5jX3dvcmsoc3RydWN0Cj4gd29ya19zdHJ1Y3QgKndvcmspCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+IGZldGNoX2FuZF96ZXJvKCZuZXdfd29ya193YWtlcmVm
KSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2VyX2RvbWFpbnMtCj4gPmFz
eW5jX3B1dF9uZXh0X2RlbGF5KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBv
d2VyX2RvbWFpbnMtPmFzeW5jX3B1dF9uZXh0X2RlbGF5ID0gMDsKPiAtwqDCoMKgwqDCoMKgwqB9
IGVsc2Ugewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBDYW5jZWwgdGhlIHdvcmsgdGhhdCBnb3QgcXVldWVkIGFm
dGVyIHRoaXMgb25lIGdvdAo+IGRlcXVldWVkLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiBzaW5jZSBoZXJlIHdlIHJlbGVhc2VkIHRoZSBjb3JyZXNwb25kaW5nIGFzeW5jLXB1
dAo+IHJlZmVyZW5jZS4KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhbmNlbF9hc3luY19wdXRfd29yayhwb3dlcl9k
b21haW5zLCBmYWxzZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IMKgb3V0X3ZlcmlmeToK
Cg==

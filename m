Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CD9B55011
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9E910EC50;
	Fri, 12 Sep 2025 13:53:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XqyZjSCm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2EE10EC50
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685203; x=1789221203;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZGyURVLiIiPvAdfoGWVAYUWeYRK1o7NfwMEBUm/dk90=;
 b=XqyZjSCmpq/uBDCpQgGIwJbXK7S8rf8vFHjQZ2pQvp3eHpDTXis74ROs
 S0wcAgjwfcPdCf1SlTn0QVMwtI1l5wpC3L6SM5jeYjKfAGRnkdl0s0h/+
 aRp+dNdC0IDyVeXogtwamyuKbk1zhTMZw9DNlB/NuAO+0GYUqn9/IVErK
 ppoyXqp5voKuFf2MwN3BSmgCb3zg/pcALJ9BCc4RbdcoZADg3jr4lDNF1
 CK5Y3RgOxz/1HM6IQCyyDG4XL8xfpYMXDatHDMdRFdYwpj5XG/A/9fu4T
 4wh0Zq/kYVV+K2lC2Q5l7diyLlGe5bqo4n55a6fCz9b6/pxmjd6bx9eMY g==;
X-CSE-ConnectionGUID: w4tRDYHiSoyiiHJarOOBCw==
X-CSE-MsgGUID: YyUkbkRlSUi3CQCxidkWHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="60139307"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="60139307"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:53:22 -0700
X-CSE-ConnectionGUID: 5tkwfuZgRzSfIKm+/LmJBg==
X-CSE-MsgGUID: 3TX9CwndQJGZhjSv51cMKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="204749694"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:53:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:53:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:53:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.83)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MIMmmZcI5ClzyxLzgrr79hq9XEOjbD5jeysPAjnhgoUR6Gad/N7gRlUzco59ZBgYNlPwxXU8UAYmTepnxSeXPP78lT6KZ2Y86qbm653epOzuQpzh1YiPE6aJKkWBA15n4Ft0wCZgb34YRUjX4eO/mwHgjgfUzPMfXWyrSSFmdKR9EVISRudo8/AAi7V8dp7PXFXpezR4QttFYAoaK0+4q0097ggd4By/t5MjVzuB6jjpYsuJmM16mFj8T3eNCJvoQ2InQJ+L5BpplIlMVB5ch5MsQvB27FA3t3YwlDzfRdKeCOdawhIATIR9kSficPWsrConbguzVjiNDSnMloPIQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGyURVLiIiPvAdfoGWVAYUWeYRK1o7NfwMEBUm/dk90=;
 b=YFkm8F0MRlwVm4G56kKaGYR5Osdm2VLVtq6mlypXNJlYBy8d/54TXvjlWFRLoS3rhALm+b5FJaX4KGtffox6TPMRP3p7g9Jed+x/5urpIVyTMfeouIbHonjk533lZfKv50CbLuXM8MQ3DV75fkOn2EI61kRGwABv/CqSABzpQqaeOn6RMwLPQoL3Bgzhv0VQetjpfW1mwJOtbzWHvi8GkD84XDPTij6zsAkzSr1z/IcZU3pnQKeQxFQ5Pz9QD1BMtDNKDeiav5ZjLL0IAYpVgiwWvxK42+i97Q4yJ5+HihE3DJB2QHDNTBxn16vt4Y1xhx/gEmrLqxYaLTk3fCRDoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 12 Sep
 2025 13:53:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:53:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2 4/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Thread-Topic: [PATCH v2 4/6] drm/i915/pm: Do pci_restore_state() in switcheroo
 resume hook
Thread-Index: AQHbkr+8XMrHALB1Ckui4bbmYSaVSbSQs66A
Date: Fri, 12 Sep 2025 13:53:19 +0000
Message-ID: <a79af195263c3abc69862e7042836e15aa980be9.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: 4940a2c1-ace0-40ec-6752-08ddf203baf2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eGYzNVZMUzBZOWN6cXVzVHkrZjNJb0lZRkk4ck9MMDI5eW5OWVZ2Ry9vaC9I?=
 =?utf-8?B?NnFKZmNWMElRc3Q3d0lDZTBaZmxrUGFCeUNMN2JGaTA3bE9TWnlMeENzaGVE?=
 =?utf-8?B?NzhmRXpBRm5LNDU4eDBMaFM5UjBVVS9iMDBpMFQxOEdvOU0vZ29vSEhySXRu?=
 =?utf-8?B?clRFQmVxREZkWnlkVHJvTTZ0RUd0RnJNZGpIS055RCtRR3I0TVZTbVBtZWdJ?=
 =?utf-8?B?cFA1T25iTEkyWGFnRC9tUVJ1K3pqZFVuSmthdm9KTE8zSW9EOWZLcVlCUS9N?=
 =?utf-8?B?UzhiSE5qWkpvUHJPeTZlS1ZFRitKVGc1dnFYajNrK2xtalhDSkhHZ09MbERY?=
 =?utf-8?B?VVJkeU5MUnB2dEVIV1ZRdmc0Nkp6eWdvSmhDMXlNWXptbnZkZVhrZnZ3ajdX?=
 =?utf-8?B?TVVSTDQwcDY0Z2RiZFYvRCtZcTc4T1lFTW1rUEw1dlhQZm40QjF3VDQzckdM?=
 =?utf-8?B?c3MvV21qUmZvbmp2RjlpR0x0dUFTWlJVQlFUdGRuRDB4VkhEc25ueldLZHBs?=
 =?utf-8?B?N28zU21HTjNPVlBvU2R6bnMzb21kckR3a2wvbUJuVDhPdFd2dWtJNW5zOG50?=
 =?utf-8?B?Uk5BbmFLL3ZIN0s2cHowVTJPdmVscW8wcUYzMHlkQi9IRUlWakhwT2ZXTlhR?=
 =?utf-8?B?K25lc3RLVWFBSWFSa2NsNHVnWm4xMVhUOVZVQVVld0R5My9FRlJEWm5OTXIr?=
 =?utf-8?B?VTgrd085dW11akQvTnNHb2lrby95U2VRL2NsYkNrWHJFaDhScmtDOGpEdGZU?=
 =?utf-8?B?K0F6NVZsODVBNGJtZ3Jwd3pSMVRwdGtvbXM1YWtzOXNXRERzZXJjRkk4U3l4?=
 =?utf-8?B?RFc3endnQzQxTUlxYlRXR2xYc2hjK3F1ajRlOWs5akNiWkZZM2szeU5GYzU1?=
 =?utf-8?B?Y3lYMmZyK1haTXQ0ZjlqMEE5bS9KVkpIa2o2TXZIMHIwelN3U1BLeFdVejVN?=
 =?utf-8?B?cDZWMFR1VWFNM3djaFI4Q0VZMEw3MThqZE5CMy9ocVNBbEREcE5NaHEwZGZ4?=
 =?utf-8?B?SXp1WTNrdmhYWEUra3ZTbkZ2R0w5L2tkaW50MXl3VGh3Wkltcm1UMzNNMDZK?=
 =?utf-8?B?YTFRbDBUYXdhRVNvNDdBOXVBd0Q3OVNabUt1U3FFd21Id3ZEN2lVbkNRbjlv?=
 =?utf-8?B?YkVMQTNialRPbHgxTzNqbG56U2g0YlMvNlU2THBqY0VnNTJPR0VrZnp4VUhV?=
 =?utf-8?B?aHJybDFRckNxL1pGR2JNRXdoc0J2M0hMZjhxeTBXL29VNUdkNkY4cDgrQUov?=
 =?utf-8?B?MWZsaWF0dHZiRUhIVXNhVmFyRGlDWE5KdUNvc3VXejlnZkpRaVA1a1M1L2dY?=
 =?utf-8?B?WGEvYm9rcG8zYlMzWXk1M0xLdUtlc00yTzAva3N6WVJxTWZWRlYvdEJiMXZy?=
 =?utf-8?B?ZXZNSlVwbzYyTGFmRlNnQkdvdFJ1U1o4WmtCbUZQOGVURWF5aEVCSzJUZTZJ?=
 =?utf-8?B?M0lGdzAySUN4V2FJVU1scC9OSTdyKy9OdHJYM0tlSkdheEdBa3liRWR3STVK?=
 =?utf-8?B?Tk0yMFgxcE81WU5oNkYwSDZwUXNrNzMzK3Y5MER2SGFSWEtDUVNZUlVXNWpB?=
 =?utf-8?B?UFdlbUhPZVVoSlQ2THJxbGswWlpYUTlOM2pwdWhqelduOHhYaXhkM2RxeXJl?=
 =?utf-8?B?UU5ZMmZlUVgzOFJGYVo3UEd3OXhrR29paHhsTlI5UGJlNUFOakxOUW5YVitX?=
 =?utf-8?B?RXFBSTFFTlhYelcxN3FWczNxeGxhUmJDUkdJd2dqS3pRNDVkZERWOUJ4eTIx?=
 =?utf-8?B?cXFMS1B1ZWZIMTVmSGZBb2RUbENZeGtJcSt5ZloxYUttQnF5K0s1cmFaeTlz?=
 =?utf-8?B?aXZHWjBkdDJRZnZRWEg1amdrRUYvYmxSakR3WHFSeVZhSjBHZWJGNW1kdkl2?=
 =?utf-8?B?MENFMUx0eGovMXMzVWZZMFp2TFNFeFVYNEs4MkRiNysvdERNRkIyU083aEFh?=
 =?utf-8?B?dWIvZm9PVEdaNHVSUkNLTGFpYmVoOFdHdStOc2tVZlNCYUl3dVRkSVVXZzls?=
 =?utf-8?Q?1x/AWlXasBv6NxwYzjks4yGRMWsCWY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlFSajhHeEFVV0JqUkM5dkxhbTdqcmhBamdXWWV6dkZ0UGZmVk1NZGdCUEZU?=
 =?utf-8?B?ejF0VXk3c2V4RHNDVjNmanVnT2pOV3NUb0wxU0p2TjY1N29pMFVoejZNN292?=
 =?utf-8?B?RkpFWDJiNHQwSFRVRENjVCt1c1U5SlVXaENaUjlFTFRmSEIzMmF6cENTOG9a?=
 =?utf-8?B?eWVIVmh2cnE1cFhxbnRSY3dCWk42eGpBa2JGZXo3ZkFYVEVvVytPTlJueGd4?=
 =?utf-8?B?M053eTJNMjc5eHNVaTR0ei94OWxqTUZSb2k4ZVNPb29pVEtWSmF4Z1E2WUtV?=
 =?utf-8?B?VldLT2luTWZmU0VCL3FaQjBuWkhkdEpPSmNneFhiZWJkcGJIekk1ekwxN001?=
 =?utf-8?B?YnhvVEpQNytLVitmUmdKUUpOdTBNY0lmdloyZ1htNUhGdDZKbEhheDVJZzRn?=
 =?utf-8?B?QkhWMDZhVlNaNmRsSWpYYXoyWW1KaHdUNnhRdXV6S0oyUUdBSVc0R3JrVzFm?=
 =?utf-8?B?VlVnRklFZkhUWUZRTjdtVHdmN3hXbjZLVU1McDM4bEVkNG1jSlpJSzVxTzBU?=
 =?utf-8?B?MmZqVENzT1Z0K3RDQVo3cENsWkdSeUdpMHkwWVc5cGdMcGhkeDlOa2NKb0Rk?=
 =?utf-8?B?d1FTdkgzd2pxclhIWU5uQlpHeERFajduWUxsTXg0SEU5dEgyR2MxcVdicEdD?=
 =?utf-8?B?NjhWYTByT055N2EvNkVDbW00RVZkQWltcUE3Q21vL3R4L0FHRFM5SGNjRlBY?=
 =?utf-8?B?WWhic3RlYUZmaWF6cHBwYVNabHcwbDBLa2VLVEFiYjBnVDR1SDF6bVA0Mk9u?=
 =?utf-8?B?TGdmcEgvdmgveDBxODBYUFZ2YjdwaEFOUWQwNjJCejJkY0w5VGJRT3lzWm5D?=
 =?utf-8?B?VzVlejVKMnI0cC8vVVQ3V3pKbFRiRFowam1NdGppWDNjMEFYTUVwbXVNTnJt?=
 =?utf-8?B?a0wzWGhIRUdnK2ptVlhEU0drSWN1MjhsSkpiaSs0ZDE3ZHNuV3NCNTlVVUs1?=
 =?utf-8?B?UTdwcUxyMVRDdERXdVc4eTQ0TDc5RVNZNWI0UFI1a0tWamZiV01rN1B2Uy8r?=
 =?utf-8?B?S0F3OUxJRUZCbmdPdWNqdjkrN3BpUm5zaXY4MWg5YWdiVHlZZHFtNVcvY0Zj?=
 =?utf-8?B?TEZjRndnTU91djdJSlh0SG1mSkJPVlZGQk95SDR2UVVFTHZ5OWNWSlF5TWlU?=
 =?utf-8?B?UUhBRHd5M3k1Vm5FbnZUTmNaVnlHdlhNak5aTER0blRsVTNTUXlwNkk5QVNG?=
 =?utf-8?B?dHExOE1TdzB4VGIyUHd2Z3UrdVh6c2ZydU5QTXJkc2J1QldCYnRhWE1ORm95?=
 =?utf-8?B?SXhqK3hXREFhU2VrS3NkYTczSzdtQ1NMVi9jbENQY29SbEl4NXAwVHg0RW9F?=
 =?utf-8?B?Rng2cG82WXNXSzlCZk9ZZ0k5Zm5mRlM1N2hPZzBOTmtoRHlJMXRaa01oT0hm?=
 =?utf-8?B?aEVMTGsyODhRbTQzaFI4NldHTHphOTJLQ2RnNDZlK0o4YkZTL2VaV0Z1d3NB?=
 =?utf-8?B?dGdFS0tlVmhJZU11bWJFWWJuYVo3SDZweEYxVjd4R2Vlakw0cjYrTkpmanFM?=
 =?utf-8?B?bU5sVjBpQWtQMlhldG9vRGdqQUIvaiszdU04SVZrckVEOHczWVYvZk1tS25M?=
 =?utf-8?B?S2R5WGNreW13N2QvQmVTdHdONVR1Y3M1eHBPc3daK2NLSW5GNkVsc1RjQ1RV?=
 =?utf-8?B?VnNGbS9QbmxiSmt3VXpaRDY4d1UydjJ3ZW1yYlZhQ2NnYjNrNGQ2UDJlWkNP?=
 =?utf-8?B?UXhZbnZuU2JJcUdJN3VrbzdXdlNyR0NvNHFzU1hNVWY3cGFUTWlVWjJmMmlR?=
 =?utf-8?B?YUVaZHZkWVUrZkdyLzRqci9kYXRQZnNDeUNZSGpRV0NRZXVEM2hzTGlGck9M?=
 =?utf-8?B?b043NEY3OHNLck5hTFp1WUVWZTFqd29iMVEzT24wM0pmc1dPMjJieWd1V2I5?=
 =?utf-8?B?YkE3V2o3cE4wQ2VpN2lBUkxIRjA2WnREdzAwK3FrejJ0QTBwR0sycGMraDdO?=
 =?utf-8?B?Sm95ZWhDRkVWT0dTbWJkMVBsSHBmblhVMWFScDdrQjBoOCtVZlJiZ2gvaFda?=
 =?utf-8?B?VHBpY000L2xyK1dBL0U1SHoyRHdTbjd0YUNaOSs3RzdJTXM1RkdnTjJMWC9T?=
 =?utf-8?B?R2ZqUzZRTFdKTGpwd2JpdVJKcU5PbmtrRUhraFJSb1M3OFJWWkVlb0RqNGlk?=
 =?utf-8?B?MmdIdTNCNHpTc3pOcGUyTGRUUlBtZ2xYaFU5bFZNdG5NSktOcTlFa09FYlk1?=
 =?utf-8?B?QmFycG8yVDNYYWk4Nk5yKytwZlBmL3BaNzdmTDFCbU1SNkZEWEtRMTZ5cDRw?=
 =?utf-8?B?N2VBVERzZ2xrNE83WnVOWHZVK2NRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4547F3620A90394E9839C14D76EE1A60@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4940a2c1-ace0-40ec-6752-08ddf203baf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:53:19.1594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /Uk3r8iEeH/s3D4CfpZ7K4ga1WoIFYj+ZgaQ3/OyCbw/6g8v/N5AwrsPcFx5Ky0BcFq3UXpTZTErV7dP/mievumkxeCJ1YHVouWkiLpSwcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
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

T24gVHVlLCAyMDI1LTAzLTExIGF0IDIxOjU2ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU2luY2UgdGhpcyBzd2l0Y2hlcm9vIGdhcmJhZ2UgYnlwYXNzZXMgYWxsIHRoZSBjb3Jl
IHBtIHdlDQo+IGhhdmUgdG8gbWFudWFsbHkgbWFuYWdlIHRoZSBwY2kgc3RhdGUuIFRvIHRoYXQg
ZW5kIGFkZCB0aGUNCj4gbWlzc2luZyBwY2lfcmVzdG9yZV9zdGF0ZSgpIHRvIHRoZSBzd2l0Y2hl
cm9vIHJlc3VtZSBob29rLg0KPiBXZSBhbHJlYWR5IGhhdmUgdGhlIHBjaV9zYXZlX3N0YXRlKCkg
Y291bnRlcnBhcnQgb24gdGhlDQo+IHN1c3BlbmQgc2lkZS4NCj4gDQo+IEFyZ3VhYmx5IG5vbmUg
b2YgdGhpcyBjb2RlIHNob3VsZCBleGlzdCBpbiB0aGUgZHJpdmVyDQo+IGluIHRoZSBmaXJzdCBw
bGFjZSwgYW5kIGluc3RlYWQgdGhlIGVudGlyZSBzd2l0Y2hlcm9vDQo+IG1lY2hhbmlzbSBzaG91
bGQgYmUgcmV3cml0dGVuIGFuZCBwcm9wZXJseSBpbnRlZ3JhdGVkIGludG8NCj4gY29yZSBwbSBj
b2RlLi4uDQo+IA0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMg
fCAyICsrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IGluZGV4IDk5NTIwNWUyNGViZi4uYTE5OWUyMWM3
YmI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTEzNDAsNiAr
MTM0MCw4IEBAIGludCBpOTE1X2RyaXZlcl9yZXN1bWVfc3dpdGNoZXJvbyhzdHJ1Y3QNCj4gZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqAJaWYgKHJldCkNCj4gwqAJCXJldHVybiByZXQ7DQo+
IMKgDQo+ICsJcGNpX3Jlc3RvcmVfc3RhdGUocGRldik7DQo+ICsNCj4gwqAJcmV0ID0gaTkxNV9k
cm1fcmVzdW1lX2Vhcmx5KCZpOTE1LT5kcm0pOw0KPiDCoAlpZiAocmV0KQ0KPiDCoAkJcmV0dXJu
IHJldDsNCg0K

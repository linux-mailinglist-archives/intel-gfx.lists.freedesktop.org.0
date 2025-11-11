Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1382DC4B749
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1260710E119;
	Tue, 11 Nov 2025 04:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WP8o9Y0K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB74C10E004;
 Tue, 11 Nov 2025 04:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762835057; x=1794371057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X/sStMOhLb1Fc8hJgIZXr+TjpNwEBTZQcbaST54RoYU=;
 b=WP8o9Y0K45wwAdq4xYprcpcUfYouc8v4I3J4HemUEXVLTp3FzSzycyGk
 dtd0+TRasEyZdAf/lBOBEephgoMUCZavwJlaUas3v9NM0jbuL68BgQe1E
 zxgfnAA2/TlCGIKeZYcyuQ14G7Va4VJoNs0lHieHSS7ZgTEmFKJF8nIj8
 17J8QP+l2/sX2+qiT0O26CnFjALySgMeKRvlSh+QGQfKLSUeLsC399KVU
 6hyVlOATKwUuOVwDaaaLwOopNRKK9C/LUIehFO0gMGBgmNgIwCnQ7hMGa
 4MIxqtym5VIn+J4mj9oHeSOnsYbQvWp+MGsGp6WaehzbrxA7QXkfiOZ5f Q==;
X-CSE-ConnectionGUID: 07XAeZ7tTgqGKAOXayXm0A==
X-CSE-MsgGUID: 1Eml4mvVSa6AuxDNxT10XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68743757"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="68743757"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:24:17 -0800
X-CSE-ConnectionGUID: LnbYXytLQpKtvfMOMVf/Uw==
X-CSE-MsgGUID: RcbPI/UnRPqiwavW+VsJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="189109145"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:24:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:24:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:24:15 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:24:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D8bWOuJZeL521SnDx9lm43kiozIY+B/rUPnwysVBaT6gOhD+GBG9dIg4GVsUY9mkFxLUP3y2Es5cbQ8nmEnfx3cqutzripUaKc8fSM9izTEoV44GVMd5zXmifociCzvJ6lo/TQGRLqTl0dZ8E3K/XkCJvGWmBiNsO9HzDuFIRsjeE4dXFHhWrKciZtYFd3R+Qk8XNXO1bOEu51N7G5NmFRxeDSnOIvqezRYv/pmzc9daudJRmU7iXO03j4UJdQOPJugj6AVcZgBe2MIM8Q4v0Ibu5p0qGizZuIp+n+KFHkEFUeNURI6obUUODEOx3XebhiC+hZft0RBVFAT7HTwFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/sStMOhLb1Fc8hJgIZXr+TjpNwEBTZQcbaST54RoYU=;
 b=vo+r+s+KlNpwbmCfXWGfPBEvCR6qL2F1fNN8woeJ1/BxLmL8uLBP1zKCqcPjfGlCJSO+HTa6+/u7KLQCe8KF7UOy8eCWPcRhLZeyj+dwoN7RZ/Z7XSHIY95YVuc9WGxGQAw8VzBnf8abdjc63X33dK9rsHk2Pit+zPv9ECpTZO9PhISM4q7g551Am9U2yDbyagMcFqVkcwYpfH3A2Onq4YLf7L7zRa37NRdf48om7kx9vfmEy8BsY4F9kkGtL/g4PbBuMFxeZ5dGy3LdJ9VzrzrkfdrYSgdgcmwykLo4LVyRWjNWGUXw9K7HqcbSthga+C4iw3yZbyP1SHgu8i+lxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DS4PPF0442004E1.namprd11.prod.outlook.com (2603:10b6:f:fc02::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:24:13 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:24:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 04/16] drm/i915/de: Introduce intel_de_wait_us()
Thread-Topic: [PATCH 04/16] drm/i915/de: Introduce intel_de_wait_us()
Thread-Index: AQHcUmdzi/fzhbutGkGPFhFhKqEo3rTs4SMw
Date: Tue, 11 Nov 2025 04:24:13 +0000
Message-ID: <IA3PR11MB8937ED56262A0FD767ABFE87E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DS4PPF0442004E1:EE_
x-ms-office365-filtering-correlation-id: 6621d184-0ad8-4a7d-c2b5-08de20da2b7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?c0dHeFZaajlnUktYZG0za05tRHRYQ0R3VjZMT2xBL2J2TWN6Q01yL2lCWkd6?=
 =?utf-8?B?NXhYUGt6eTcwa3ZNN0RiWkQ0TThEZWdZTWN2Y2podXdRMThyS0pJTXpSUk5w?=
 =?utf-8?B?eFlEaHJFNHczVGRyQUI1dWRtcEVFMG9HbzdpMHM2R2FZb0JSVW9rTXRHWktR?=
 =?utf-8?B?RjlIcDROQ3dQSTJTTlFnU0pmU2lHZ3FSNkxaQmt3Qldob1BsaVRpOEFlajl4?=
 =?utf-8?B?S2JndWJ6alkvT0RZb3hOUHJKaXBRV3ljUW1jQS9ac2hIYytqL2c2SHIzS0t1?=
 =?utf-8?B?ZWhLUk9hNUs5OHI5K2pDNnFTWVNZKzUrZzhBWDhkcFZQNll1TS94S082bUEw?=
 =?utf-8?B?d0F6ZjhOYVlGbjhXU3pyYnhmY2l4UnpDUXJaM3BBT2ZUUVlNZ1d0VHBoU3lK?=
 =?utf-8?B?cGxFRXpjYVlrRUIvazVKN2dDT1dvMjZsWStYTENnR3JLcytDM0daM0FYWmlP?=
 =?utf-8?B?K0JlV012Q0xzVUV6ZVlRY0tCRHdQSmwwOEI1SVAvUmxMZWxrWTJobkJ3SllF?=
 =?utf-8?B?REpwWFZWYklBNmRVeWRMdUsvcnFLZVhDSDRJZWFpNFd2Q2tsUE0vckZML2JX?=
 =?utf-8?B?bkpOU0RvMkdFYndWWWZaMytHeFRHRTRyYnZZVG13VG90RzNsQ1Y3QjhRb1dB?=
 =?utf-8?B?U2ZMMDhaVEZ6SURLTkRCMS8vaXczSitNRW9CaEs1YmxJNnlEZ2xETE9WZFNI?=
 =?utf-8?B?VndTUHpHY3RRTzdqcFZ2N3NaOGFYSGlVM0VVbFByVHdrdnpXN1VVZzI1Z3o2?=
 =?utf-8?B?cG8veHZ3M01YQWMyUVhjcUpWQXI1KzE1L2JicTNyMUJ1TDIwcDRCVFFPOVVs?=
 =?utf-8?B?VTN3NndOandGaUJ2Q2NtOHBtS0FyZ29QaE41emJKbWhKQk85aXVsUkhtcDVH?=
 =?utf-8?B?aCtoVDR5NUZ2MUlaNEYrVkNlRzE4Vms2THR3ZDgrZzBIUUgwdUxjaDcwOTZo?=
 =?utf-8?B?Zzd1WThtK1E2a0Q3QjBSamZsSkVUWE1DWHZyWlVnbStqUUFWT0tuTExnR3pB?=
 =?utf-8?B?UDR4MGc1MjVNdWszc0lyK3k3aGFnZXpzSE81TWsvTW5ibnBsYk8vb0tJYzE3?=
 =?utf-8?B?ZUxmTmtUSWFIVFJoOGR3OW1NY3lJMHJ0NzdoK1QvZzZ3MG9hN1FqUDFuWDZN?=
 =?utf-8?B?K2w1bDJSZWhDVEx4amNLMmZ4L2EyZFdudHBZNGJrOGMvUTlaL2tNeDdhQUpi?=
 =?utf-8?B?T21QM0lXQ3ZQODExa3J0aitXNHJlUm90dytRSFlwOXJzN0VEUUhhR2JaTGRW?=
 =?utf-8?B?SFo1aXVOd0NrM3hPNnRqSlF4RDRKWVlIR0N2WVlYMG5PdU5vTjZDYXhkZFVi?=
 =?utf-8?B?cm1yd1JxbmlPbEt5dm5WbWg0eklGYUN2bklRUjgrV1ZjaEVjUStPS0pOWkgw?=
 =?utf-8?B?L050UVF1TWQ5Ym91QWNYQXU5Q01ocXR4bzNhYzFqcmNhczVINlEwc3BoOEEy?=
 =?utf-8?B?Wk9zNTFVUTREeEdYOW0zUTZncnJYVWdocU85YThzV1hYL3FTRHZOWTNJYi9L?=
 =?utf-8?B?dWpSTDlqall0ZG8zOHpNeExGNGRQK0l5Vm51aWpIbGFQRnRuaWVKNFA0bE9T?=
 =?utf-8?B?UXV1bUNBYzM3MXJycEU4d2k2aEJSQ1d4Z3M0NFNRMXVuZXBoZEp2UzVhc2Jo?=
 =?utf-8?B?TklkWVN2T0xjY2VqdS8xU1pweG14R3dCNWZaMXdlY1p5TEZXOE1TWlFRNHRx?=
 =?utf-8?B?UEVKOEJqa3BIRFRLVmlJYkxHZzZYUWNWQnpjNXpONHRVa0R6M3hoR0gzQTMr?=
 =?utf-8?B?RFlYd2pFM0xuMzlBUzZ6QWRSaDdLOHkxK0tNV3Y1dmlHaVhPSzNYN1hRZ0hu?=
 =?utf-8?B?N3FsRVRVcmEvWkJGa2VvdkwvT3F3SWFJRlZvcHR5bmdXUHJUeXRGbDZjcU55?=
 =?utf-8?B?bnlLYnVjMXc0NVlpRXNOZDJMV2MvSHA1amRGcjNTUTUzYnNFTGR2Y29lK3VN?=
 =?utf-8?B?eTNpNGcyQzI5MWtsamtPekpYTVhIVDRRNnkrR3RsODlNMG9FZWxSWTNBRDds?=
 =?utf-8?B?cDFHblVCcHhNR0JTQVB4WWJiNmVLU2dxVFVGZ1BodldVS29rUjAvVzMrWkZo?=
 =?utf-8?Q?hyBw+y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVZLUWtoTjhHY05xRTNnRjVic2ljc1NjRkxBb0Jtc3h1QnoyZkJXTWR0N1lz?=
 =?utf-8?B?MDJpNUxWRU10bXFDWEdtZmltczVoenp4Q09IdTZzSHNtZHpibUc4S3FjT1lJ?=
 =?utf-8?B?cVp2MklINkhiZXZZdkYvVTRXUjNsOGUwUlRPSWkraktMVno0VVlrZEEzdkp1?=
 =?utf-8?B?SW1BWEVWMVA1NTYvcTFpMXBOREFnRmZWVmNUeWV5eVhuSHliNXNwN1JhU3lv?=
 =?utf-8?B?WnRqNTJGaCtPdTRXdC9rVTJBMW5wRkl5aFpoVmZsQ0dXTnZPWDRIdHlBK21x?=
 =?utf-8?B?TU9sU0dmYi9RWWUzRmxkUnQ4dEN5VjRTcndoUWJDNHk2TC95YTJqeGFBUmpU?=
 =?utf-8?B?a3N1M0ZIVGlFSHVxVG9TNVZiSHVyM3dwSTBGS3B2dFBXRjdyc3dFZG5GMFBG?=
 =?utf-8?B?R0VLNlEvZUU3Z0ZzZ0F3WThLeHhjR0hUZFFZRnF4MDV0Rm5Pb0ROaUUyU2VJ?=
 =?utf-8?B?YmErYUdpZEFGQTFhMmphMEQ3Zks2ZEFoUEpJUzVScCtkbDdJdE9MT3NCMmJW?=
 =?utf-8?B?TmZNaVQ1SjFOOGQvWmozU1hqQlcrVHJFZTM3VDVxVjFRa05RcG0zQ3ZVYU1k?=
 =?utf-8?B?Q1pNWmQ4QTBaNFUzSkxJVXJJNGZoTE9wQ2VldVErL09XUWF3ejJ5ZUx1YjNK?=
 =?utf-8?B?NWhaWjZpTDB3MmNDOE1jSWpwMkdEVlJCQ1dqMERZTklmMW5SVCtucGRxV3JJ?=
 =?utf-8?B?K0pCeXFZOU5DWXluOFZ2VWtkeEowYXFra1o4TDlZRjdqd3FWeWcvOE9MTm9Z?=
 =?utf-8?B?MitIMnIyYjJkZmxYbTM5ZU9IbzlpV2dROGhvb1BjaC9BVnpUaXhCaS9Nd0lk?=
 =?utf-8?B?ZVNLVzZkVUgyaTVkWENLdDZWendaV2kxSVRrWnpQbHZXeU5JdjZtQ2s0Uk1J?=
 =?utf-8?B?YW5pd0V5MmtESEFpaU5YNERoQU9jSVQ2SXZKRlVJVENHR2tOZHRUWDVxWW9D?=
 =?utf-8?B?RXF3ekRIZjVnYVB5LzJtQWJQRk5xbWMyanUwYXd6N01sbmtibW5kQTlFOFli?=
 =?utf-8?B?b3RzbmRKUW9TM2JNZWEzUjZ3bkFudGQ3OUw4cUxMclJhaGpKNTV0RVRnZk9n?=
 =?utf-8?B?aVBKeW4rRXhBMHBJL1ZtRTFaOEY5OCtod2hoUDZXdlVtazdPQWsydElOYlFU?=
 =?utf-8?B?RC9JWFJpNHhWV3NtMzFaWW4yUmJ5OVZ2aHhIaDFvVWJEZDdqTkpNQUZmMzhZ?=
 =?utf-8?B?eTBwTGhZU2tJZlZEMlBobWx3Q2p2enBTemtaUkp4dmZGS2tPNVJlTFZlZ0pm?=
 =?utf-8?B?WTRyaDF5bTlvaWtFTllURUdpd3dGbTBlQk5jUnp6dlErWFJWZFkrVG9BcHlL?=
 =?utf-8?B?cmgzOEptQzhZbXlGeS90VEc3NFpjbEVPaHBJT2tpNGlCd2djazNHM2NGaDRh?=
 =?utf-8?B?d3ZQTlY2V2cybGg2TXdxSTB5ZzhhSWZjZ3VWdWsyVllXb1RSRVE3RUdib2th?=
 =?utf-8?B?RnNuTnRvd0dXaklsREJ2NzE0VFdKM3EvR1RobDhwdmVHWTFEZmM2TGhCOGQv?=
 =?utf-8?B?Yzh3SDlWK29RZjNIWFhuenBqMFVNR2hRL0VpOGFNRUg2dGhsN3hhYTlBZ3Qy?=
 =?utf-8?B?TTgyWmFTRUtLQm9JV1VOSDdhWDVWaUFnbjcwMEZWblNGL3MvRUNVNTZYMWp2?=
 =?utf-8?B?VVFrSzVYQlI2VUJBeU5EeXFjTkorb2VZRG9IbThKckNmWWY3Mk9IbDAzTVoy?=
 =?utf-8?B?TXVqMTFhRzkvaUtPMnZFa21ldTYxcHlTaUJWNjd6UjRPTmVXK25wOE4zcGdw?=
 =?utf-8?B?S1dScitoNjFwOCtMRkU1dE90YlM4dzFKOURMbDgxbE1NcUVmYytKYzl1UC9D?=
 =?utf-8?B?WTdGSGZLZWpNZTl6Z3pTcUg3b1NlWERXRGpvTXk3dWRnQVhMZlJJMlFuMDNr?=
 =?utf-8?B?SnBSdGMybThlTnU3S3l1czRTMTJLbEVrNmxhUURsV3pmOVJoeVY4UkhHOWxH?=
 =?utf-8?B?TEZHNlNzNVFFK3JWbkp4dWlDd2UyZVZhemlkOEpVZVorRDZyZlVSZGFaSXMr?=
 =?utf-8?B?ZDRoUXZrZFRlaCtHNlFyeTBsL0F5L2V1RStVS1ZWSURVMExXVVlPc2dwc3hC?=
 =?utf-8?B?cGhxdEEvZlp0bjhFMTdJMU9JY24wcytlOWY3OWNoM2lsMUlwdVpXT2wwTElI?=
 =?utf-8?Q?mVTMPkliOAqedTvfIq7I8Q41c?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6621d184-0ad8-4a7d-c2b5-08de20da2b7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:24:13.7787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NUxb3SBYaZUM3zPgrur4JwfW65eXJG62x7/krwu2Ei7zn5ySlQXYCakJU+mnvhq1uqbo8bTARgznnV9iq+cWiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0442004E1
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

PiBTdWJqZWN0OiBbUEFUQ0ggMDQvMTZdIGRybS9pOTE1L2RlOiBJbnRyb2R1Y2UgaW50ZWxfZGVf
d2FpdF91cygpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiANCj4gSW50cm9kdWNlIGludGVsX2RlX3dhaXRfdXMoKSBhcyB0aGUg
bWljcm9zZWNvbmQgYmFzZWQgY291bnRlcnBhcnQgdG8gdGhlDQo+IG1pbGxpc2Vjb25kIGJhc2Vk
IGludGVsX2RlX3dhaXRfbXMoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0sDQpSZXZpZXdlZC1ieTog
U3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggfCAxNyArKysrKysrKysrKysrKysr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gaW5kZXggZDQ0OTE4MGQxZDIyLi40M2E0
MTYwZjc2MGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgN
Cj4gQEAgLTExNCw2ICsxMTQsMjMgQEAgX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3Rlcl9hdG9t
aWNfbm93bChzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCQkJIHZhbHVl
LCBmYXN0X3RpbWVvdXRfdXMsIDAsIE5VTEwpOyAgfQ0KPiANCj4gK3N0YXRpYyBpbmxpbmUgaW50
DQo+ICtpbnRlbF9kZV93YWl0X3VzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpOTE1
X3JlZ190IHJlZywNCj4gKwkJIHUzMiBtYXNrLCB1MzIgdmFsdWUsIHVuc2lnbmVkIGludCB0aW1l
b3V0X3VzLA0KPiArCQkgdTMyICpvdXRfdmFsdWUpDQo+ICt7DQo+ICsJaW50IHJldDsNCj4gKw0K
PiArCWludGVsX2RtY193bF9nZXQoZGlzcGxheSwgcmVnKTsNCj4gKw0KPiArCXJldCA9IF9faW50
ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoX190b191bmNvcmUoZGlzcGxheSksIHJlZywgbWFzaywNCj4g
KwkJCQkJdmFsdWUsIHRpbWVvdXRfdXMsIDAsIG91dF92YWx1ZSk7DQo+ICsNCj4gKwlpbnRlbF9k
bWNfd2xfcHV0KGRpc3BsYXksIHJlZyk7DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiArfQ0KPiAr
DQo+ICBzdGF0aWMgaW5saW5lIGludA0KPiAgaW50ZWxfZGVfd2FpdF9tcyhzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSwgaTkxNV9yZWdfdCByZWcsDQo+ICAJCSB1MzIgbWFzaywgdTMyIHZh
bHVlLCB1bnNpZ25lZCBpbnQgdGltZW91dF9tcywNCj4gLS0NCj4gMi40OS4xDQoNCg==

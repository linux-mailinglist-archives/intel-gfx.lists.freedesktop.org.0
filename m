Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C7945297
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 20:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04F010E91A;
	Thu,  1 Aug 2024 18:12:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9Vbpab/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2E510E03E;
 Thu,  1 Aug 2024 18:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722535937; x=1754071937;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=hreouVBuR0iN1Rtqv+XjXu8KGHQOczOCippVPOkutgs=;
 b=k9Vbpab/TNTbPMjlgmX8NAEsI8/nCpOg8Ij2FTJUJ4kPYTrjm3+z/HsT
 WkpjVWeqYH/xv2DNWD5RfoACI3lSokjFjPV7mLxc6M/gwzs880GzRYPJI
 yffgf1MY9BUlK06fuk9AwASDDsUZZXjSuIhAsXC/57ZZpdeNyU79f5pcD
 FmBv6PLLPPZ6ur8W+FCeSIfTsW72Il5aWEjxIGF2T3hnHbGDCxovKb5+4
 RSHleqB5Z7KNZainHovBKi2STDl34aMCQvHGLg/j3TVqTCBlwy8diUPXf
 7dm+W/qolvQ+OoqkhuhnbJWyXxcvheAWlbQrGhiI/HhXM+THjeIAoq+Dz w==;
X-CSE-ConnectionGUID: qVAz+l5PQAiooVEDvozlLg==
X-CSE-MsgGUID: qWXIzDXlSi2LJBrh2scW9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="24393162"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="24393162"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 11:11:35 -0700
X-CSE-ConnectionGUID: JNvta9NhQ6abOf+e23EtVQ==
X-CSE-MsgGUID: Od99EbZAREuwnXGAC6Gqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="86067750"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 11:11:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:11:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:11:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 11:11:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 11:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PVJoXC6dZsNQL/ulzV1l4Kmrip3Ac6iEuG1hIeqcOuBC8YYFx2LrZ7TRgwALmxH/lLLaBFuac/vPK2/xEFW9my2biTG5ETDhAI9stDc9mfiXqVLucyC8uvi+142UAxBgLsA8X1dwVywu8kauXAzQtgTA+XI29WuevTF/wLEcl5o4G4TTQWn8/aSkZGukddRHieFyD5jpJY8weVhj2N3cxrDRseIjE/cEo86kn5keICxl9gmJXgJUnl1fAheioCgtbxciOpkujCL8ucoBgvrDCOIR6AsdDYkgpYmldK0F+aaKsuT4T0e61ZMULU7T8cWp9rJCqYGz4mOisVjCz/RroA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+WMr1g8zxwN9ShmlC9Dk11GA9To3dTSEfQPysj67yg=;
 b=q9dH7WftnrzZcHc54+aZ4clGjmS24hJYbObSELTICil/SQNiQ4nWTijX3s+1yrhSSqOW9V4kEJwsmKIGer9N7DjzanrNTHxZwqdVPDg6iF/RKWhXJ0ZfFa77wi/VQhHHV39QQxeN3Awliqpk3Kkk5tSU/GWYzciFobEWqrXPXjLe+cL07ZoyKEveHp1Qf4ZmpAKpIr24Ku+swf6dv50b5qnq923MKrvw+pAkVnsLv7ajouq9OiirGal1TbqzRucm16bTIsuTU3xZwMXYE94MIIq8pGGEAYNg3/AM3f3jyoo/XLtnFPkLx/Oe2NOz28Vk3GSFXIEgU7+keYLjntY+pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 18:11:31 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 18:11:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6c8fbc2b891094603666cfb59f2884dee6089bd9.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <6c8fbc2b891094603666cfb59f2884dee6089bd9.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 10/10] drm/xe/display: remove unused compat kdev_to_i915()
 and pdev_to_i915()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 15:11:26 -0300
Message-ID: <172253588669.5121.7615661496463731790@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR16CA0052.namprd16.prod.outlook.com
 (2603:10b6:907:1::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB5800:EE_
X-MS-Office365-Filtering-Correlation-Id: d9532235-1751-4aac-1af8-08dcb2555eff
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WldmaHRZUFJwRFh0aG9GTXRVQkRuT1k5L2xTd29jWmJVWXI3djdhRXBHd05J?=
 =?utf-8?B?aXZsRmpENWpkWFFGNFNHZ242bGRZeE43eWZrdFRqbEtrSXB4bzNFeHBsRjQv?=
 =?utf-8?B?ZURyTTQrcitLK1J0dkFOY2RPU2tYc09Md2I3dUNKYzdlcjdqVFh6N09PUFFs?=
 =?utf-8?B?dDFmRTNBZUZqWmZsemYzRnJCZjNOb1lKbXR0Zkk5djhPQ0xIbVpDOHkwUmlp?=
 =?utf-8?B?NG9OWkYySG9nTzh4MHpkcmgxVmJoZmpjeElXMFFqVExQSEM5R0V5SzFMZ2x1?=
 =?utf-8?B?dXFnenE1d2JySXVDT2pUZ3lOYk5OR1J2NWptckttOVl4VmVoWkdRZHNDQlpn?=
 =?utf-8?B?Z1FMdThibld6bC9ST054T01kZkgxUXBzc3dCNU9Pd0s5UlJMQy90WFdPcW5F?=
 =?utf-8?B?WkhwbVBJeEthM3pER2FVUUl0MWI5VXA0U2pja09EY3lYSTF0NVFwUTNjRkh3?=
 =?utf-8?B?UWFqem9ya1Z5RmgwZysrakVBeGpFQlVLOFBMUHNXN005ZnN2Ym5yYllVWlBL?=
 =?utf-8?B?MHRrdlNVclhWZzIwc0tLTFQ1eEFETTZSMG9WWmRzcTBKK0d3dWdZdk54Vnhm?=
 =?utf-8?B?ZVZKdUpvS1gyQi9XSkpscDNQQVQ4MFdnUXQwNmN3b0dSWU5vRWJPczJKMXFr?=
 =?utf-8?B?WnlaUktoMURYOFptRDFXNkgrZnQ0d0p0ZExIb1JUdEIvTFhZdGZraGJyRFA0?=
 =?utf-8?B?T3pnV3JRSm9YaStUNUNWTHlFSUIvMEw0eVBVUFl2OFc4YlVwMUhaTzNpTThk?=
 =?utf-8?B?b282KzRXYXBYcUxzeTRlWXBoZkM1N1M1RkJneG5mM3cvSllXYm5nN3I3b0VX?=
 =?utf-8?B?UnBXQ1hvMFN3Y1NhYjhRQy81a0g0SHNSa2ZQRm5TdjhrQm5pdDRRcTAxUENp?=
 =?utf-8?B?YWhnRWt1VklHZHQwNzlkMm9VU1EyR3FXeENYcjdFSTJEcCtGeVltM1pUdkFr?=
 =?utf-8?B?bU1GclgwM0REb0phSExFemhqYzEyYmpROUpDWmFPbXNIMlVmRUhYWkk0dFRi?=
 =?utf-8?B?T0U4RjNrL3A1anc3U3RncGRaaXBHVHJyVUk2Ym0yRFd0UEhvcWJhUjNUaFZM?=
 =?utf-8?B?VmF1RVJuTWFIZlpRU20va0crSzFVeUlxQ1VZODAzc2ExWElUTmZnTm5laC84?=
 =?utf-8?B?UEF6SlZITisvdUR5elB6OFFGa0ljUmF1WXNrYkxvK3dVZkJxQVNOWEk5czZp?=
 =?utf-8?B?QTFQaGhlcDBZWE16NHJkTUVvWWF5TnJaVU1YT2ozK09IZWkxZkFOcFo2NE8w?=
 =?utf-8?B?SVM5VWxYY29STXRWd0tCQVpjUVRQc1QreWQ3TVhNMk5lci8rMy9hUXVydzhV?=
 =?utf-8?B?MlZQcXRMeS9aR0c5Mmw2VklEWUNrVm1PbFNYK2M4ancrVkVJT2w0QmlZekR1?=
 =?utf-8?B?d3RFakdVeWIrTEdYd05MUzlOVEtQMHFmS3g0SG1neEFybDltTURSWHNwd013?=
 =?utf-8?B?bHBFeDlkUmorNG14cFBNV2ZjL2hQaDBmMzVuVTF1MWhXOVUrQUZ5TWtCdzN4?=
 =?utf-8?B?WHpPQ3hOTFg0QUpmRmxyZytZK3QxQm9BWmhvMVFpRzY5cW1zTkN3OGpWYXpU?=
 =?utf-8?B?TGt5cVJDSkJvcGZQcVVpQzZKVmhYMjMxZ3ptTTAzVHZtWUZ5QkM3amx6VEpu?=
 =?utf-8?B?blg0M2tDL2lqSW5vbHdzcHl6TzVLNXphMGRLMnZCUTY0citpVWFWSEhjU29B?=
 =?utf-8?B?K3c2cklVMUZQeENNcXgwWHNWWU1vbmhseDl5eVpvcERQL0dCWEVuZHA5T1Uz?=
 =?utf-8?B?OXZtUFRkWDl4UURlb2Z0UzVCeVVVdlFoRWZ0RWZtMVR4RjhUTkpZdFpQVFNy?=
 =?utf-8?B?blZzMkJxNDhMUldUdUxhZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3ZnbXRYMks3SWFkdVpOUWJieGVVSXFHcloveDduSUEzMnFLTnNtQ00vVFVn?=
 =?utf-8?B?VmJQNk1rczRTZTZvUzJ0VzRlL1lQaDBpVFNnMjA3WkVkT1NaUjFiVGVnQ0dp?=
 =?utf-8?B?KzN0eDNsSmU5ZnZueGY2L0VUdi9Bc1NIbmtHREF5ajZtY2FZYmVVVUpsV01B?=
 =?utf-8?B?V2VzVFJNaXFIelJjVTl3ZUVUYVQ5amw1d3VHcVFjZHFHMW4rNW9nTTBISGlY?=
 =?utf-8?B?N1JuWXZmZWtFKzhyTEdZSXFTbG0wcE10aXdBTDJrQTdsQXp0cEd4NlBlRnMz?=
 =?utf-8?B?MnVhN2dlRnkzOE5xcldQeGtiME0rYnJiaXE3Qi9ib1ZndnJZZzZHeEYvcEJC?=
 =?utf-8?B?b3JWb0JwdW1GSlIvNldyOWdCY0t0dFJFN296blMvWDVBdDJzUlRuZkRzbG1o?=
 =?utf-8?B?dk9sNTFlTXJMTS9sV3dvU25WQkI5K3QxcmhhSXYwajQ0NzQ2c3NNUHBybkNo?=
 =?utf-8?B?WDd6ZmdzaUdRdDFFR3RIQ0pFY05wU2VIaTB0Z2p4YUZmS3NIK0R5TzcvYUxr?=
 =?utf-8?B?SlRJUjNUM0NzMmFhNnR3YVBWd2hqRFlVbmlSSGR1bWFwc2NyN2pBL25wM3Fy?=
 =?utf-8?B?TDBETEFCTnVZMHFYTkRUamwrVXNjOEkxNFlJbStZcUhLQ1RUZVAwenpoNjZB?=
 =?utf-8?B?NGM4c0dOWC95Z2JJRE9HQXU2ZDZHdkxXWnU1QndqUmJ5VVRFNm12WXMrMFBX?=
 =?utf-8?B?blBmT0grbHhVWWRSN1Evbm5wbDZaMERmMWJMcGV5Qkd6bVdZUWRuY1VPbVJB?=
 =?utf-8?B?Wk1Ja1NDK3ZQalE3MkErcUhkUVVCcUxZNUNSMUJYTGt1aGNNUHBHQ3BRTUdi?=
 =?utf-8?B?RGl5TSs0RDB0VkYvN1Q2S1pRMGU0bld4V25XbnZiOXN2QVNvc0svMXprVHUv?=
 =?utf-8?B?M0Q1NmpPdTNXQXpJUmFRN3M1ZVp4OU5hT3g1NlJGK0Y0S0JpdFR5UFR4UXVu?=
 =?utf-8?B?dDFmcXN6VGd3YjZOaFB3SzM0Nm05d0RENmc3M085Qllack83amZ5WXBIRFl5?=
 =?utf-8?B?T29jdSt0d3RiNXBrSkdBbGxyTnVCYUpjajVxRXJMRWt2TlhBRkhJcmsrM2hJ?=
 =?utf-8?B?REI4bzNBVXhSN1NwellqVng4NVIwelp5UWtJYkRkc2NsWjR5TG9uREsrWXBl?=
 =?utf-8?B?RUVORTRXOHh0V0dMK0I3R0dxR01RM2dPRzNMOVpwcVlPejV2Ynl4RUN3MGJq?=
 =?utf-8?B?QlZpTVBIQXpjMlVkVUJqdFNCTERwOWJZekMvK0IyaTNYVDM0bkpkSldwVHlz?=
 =?utf-8?B?STdOcnN0Ymd4U2NUejdDenpFb3hkeE1wd211ZFNXMWhBSDhYUnhzOHJCWW1M?=
 =?utf-8?B?bUt6TW9MNTZwQVNCYXMvVFYrR09iaXkyUnBDQjRxZ005YlY5aTNYejZ4RW5J?=
 =?utf-8?B?dVpPZ25HanRoeHpSUGJCUit3SjJ1UEhQNjJ0a2FIT2NncFZNcDZNTGVOMERY?=
 =?utf-8?B?UHIzWktsVCs3ZWpNRjdQZFFjazZSNkJzOXY2blpYRzJBSkdFeG0vbHNScU5z?=
 =?utf-8?B?Y3RXQXNZUFc3dzBkRWc4cmI2Z29iRzZQVkdkTkl6eStrTm9qdElVVnIvbEN1?=
 =?utf-8?B?cE9mMDVUNmZaeUJNWGdvdGg0QUVaWGNBRWJWY0VneDFac3BQN1hnMTlsQ00y?=
 =?utf-8?B?UzVBZERpd2JzYitpTEFkcEU0ZXV5b2czLytRMVRlcU0xYjhGVys4YzFOOGZs?=
 =?utf-8?B?eWdtRWx0M29QRjcxL0pQUUlFelVUYUdGVlErcytwS2FtdUwrdnUzcFdLcW9a?=
 =?utf-8?B?eng3akJvL0VWTVNNWURvMXVMb29HRzBQS1YxUU5hSGJBc1FFdTc1L3d6MTZ4?=
 =?utf-8?B?Y21HRE1jR21QaEl4d2VTMWFsNWdrNUhDMVNzRUE3bEhQSHBRcEJ3U3JhNVg0?=
 =?utf-8?B?RXVKMWVYQXlJUzgrVzNWTHJPQnUzNk1QV2ZtZnJ6NjNqUWR5Q3RlemFmbUND?=
 =?utf-8?B?MmdkeTh4SzN1WjQvamR3SWZnQnV2RUFWS3pueWtZQTlWMC8wZlRXd1J3TUJU?=
 =?utf-8?B?VWo2UUV5c1Q5TWx0RHZETmRLckpBY3R3MHlLUVB4alJjVll4RncxcUN6eCtQ?=
 =?utf-8?B?ZHlhblVnUk9DTkNzQ0ZOdU4zZ1BRZ3lmWEtDYXRzS0l6ZXQwSGlWMmNJbzdH?=
 =?utf-8?B?WUJkaDNacHAxaWJwU1l1TXpnSk9zZVlPdnI2ek1MQkFNVk1OQ01wblQ0SE54?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9532235-1751-4aac-1af8-08dcb2555eff
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 18:11:31.6241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vWTNOCeHhd/sVX0mz8U1KDOfXV+2K4iNgzQYIcm25L1SVik3bOsvg8pL17nQD/2Bgu2g82pqCkO53fxivzeSdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
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

Quoting Jani Nikula (2024-07-29 11:30:11-03:00)
>The display code no longer uses kdev_to_i915() or pdev_to_i915()
>helpers. Remove them.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 8 --------
> 1 file changed, 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/g=
pu/drm/xe/compat-i915-headers/i915_drv.h
>index 766fba88a3c8..e1d6ce829a0b 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -21,13 +21,6 @@ static inline struct drm_i915_private *to_i915(const st=
ruct drm_device *dev)
>         return container_of(dev, struct drm_i915_private, drm);
> }
>=20
>-static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>-{
>-        struct drm_device *drm =3D dev_get_drvdata(kdev);
>-
>-        return drm ? to_i915(drm) : NULL;
>-}
>-
> #define IS_PLATFORM(xe, x) ((xe)->info.platform =3D=3D x)
> #define INTEL_INFO(dev_priv)        (&((dev_priv)->info))
> #define IS_I830(dev_priv)        (dev_priv && 0)
>@@ -117,7 +110,6 @@ struct i915_sched_attr {
> };
> #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } whi=
le (0)
>=20
>-#define pdev_to_i915 pdev_to_xe_device
> #define RUNTIME_INFO(xe)                (&(xe)->info.i915_runtime)
>=20
> #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
>--=20
>2.39.2
>

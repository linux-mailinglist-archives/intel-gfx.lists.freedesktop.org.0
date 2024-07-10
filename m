Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266D492CD1C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C3E10E02E;
	Wed, 10 Jul 2024 08:36:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/NB23Bk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D55310E0E2;
 Wed, 10 Jul 2024 08:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720600567; x=1752136567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dTUfYnowgNHKqdQE6LNq0EdSf2Om/sFwuUvyJXr/js0=;
 b=X/NB23BkL6PlDNn2K5VFlD7Xsy52peUeGKMUCBvcqf4XeSG3IqUs8W+Y
 H8KUSAeO6NTddXripRN8rt6Anpl7HfCB5OwNjZKhTrhQIoYEwMOVDE6p4
 VDHiKoDkjjYtNedRJuTSw/pfZgTndsf5Eh4guPN2IHxKnZ9xV3rlrXoBm
 43XEMO8en5qlJbfHHKYuo+2eqvkRjVD+wwz9OjEUljj5xcUp+pY8UJ7Kq
 WsMtHuXnWghT1mkFCjLGFQ1N5Ztaivtt3p+zzh9nC9n6FXbiMmSMQYi09
 4ZgPEn8s9Zxjq2pne6PC5y7a4wKd+PEMjVXk0KaRpMCpob+xkP+UbmbAA Q==;
X-CSE-ConnectionGUID: 2GITZUQxRGe5+v8CrAmm/A==
X-CSE-MsgGUID: R/J5DxvJRO63g2sPgFXuvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17534244"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="17534244"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:36:07 -0700
X-CSE-ConnectionGUID: /cy6eLDwRmGBzeYLDOSsgQ==
X-CSE-MsgGUID: JfUlmgzuQg+VemRFc2rrEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="48805521"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:36:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:36:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:36:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:36:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bYjoFqNW6T5HqtuDmMCGifSV/9aYxLPq47Zj/u9lv4awGqHIHAx2hcoWX3FeKy/hoZyedvVrioqXjwMnLxSMowUDcmUzpCjDTMReiZtuxkNFzzaNf1d6bBv4dCj5qrT/OfheRY3QJRAmZwlU3flQfrX3Md3+Jae8mboUy+fUHmTbfFhmpqFwJhI5qkY9vaNXe7CopHasR2kn9FawWjGRlMDwoJQQtmbBZ7vX6ldjNqRh8joFgzTcGhwSv/VyQSNAwm7Fxwc0jjbaTjROEk9pcP0DV1adu83hWWOmmJYXVq4lgCAUWcYewISEgeFWkyCwSQD++5S8Jrq2M9+rRAP5BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTUfYnowgNHKqdQE6LNq0EdSf2Om/sFwuUvyJXr/js0=;
 b=ah19+zPwTZgKpDSuDtAWGQ6QfKvy9GfeW06RAHI5HBaCQBn6+J+owOuQyxRg0qprOHekCnVCOo58lDsSU1AN3rGKC9FfoCmTLs650+s1L3JcGmHJSOfHoqHNeIXbpLH7lfwl5u45TBMHC9iyh7SK1c+2J6INcoEd9jIjOjD/Xt/ZNnAGpOwduCVkc5V0YFuXi6RXIehfgF2l3g7vsKKYoRDvtAy9/y3w8VFBXHMmK49eiEH6kqAX3XMRc8EXFoUq9ulnwecArWh64e0RZWPSVDa1PkLAwhHroFLFWX5QorSb3u0hgpht2Tz+ev9nUL46+WAkbGcBQmlH4xIwjAmi2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.35; Wed, 10 Jul 2024 08:36:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:36:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 14/20] drm/i915/fbc: Introduce
 intel_fbc_preferred_cfb_size()
Thread-Topic: [PATCH 14/20] drm/i915/fbc: Introduce
 intel_fbc_preferred_cfb_size()
Thread-Index: AQHazusm4j5BBA4dO0q0OzESm1TXzLHvqfoQ
Date: Wed, 10 Jul 2024 08:36:03 +0000
Message-ID: <DM4PR11MB636008F2C49BA83A522CDEDAF4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5052:EE_
x-ms-office365-filtering-correlation-id: 683ec2d1-be4d-40b5-8b8f-08dca0bb5582
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?anQ5djFaQmxWdXdhYXU2bXBySngyUG0vSUZoZkpCRTBYUEkwWTNTWjlYTFVT?=
 =?utf-8?B?UXlieWFxMWpIUU9NRUdtazUybWdTbWEya2xqTDJMNTl2VHB4R2FjVmNJR2Uv?=
 =?utf-8?B?Nk5TY0lCZlpxRk9FZ1pQZ05Xc09hd3NiTnRLWlVtdEN0RkF5VUk3RVRsQTFp?=
 =?utf-8?B?aVo4SVpVZWl5WHFKRzJYeUJ4NHJnR0lZcmJ5WnU3MG1NelhlZjB3L3c0cFlt?=
 =?utf-8?B?SzRaMTlrTWs5WFY2T2lxS1Bsb1BnYThSSDhndWVPTlhoTVdNOUlPdVR6ZDZK?=
 =?utf-8?B?b01kN2ExN1V2M0VGRTRoZExVd3FsdzZuenVDc2tTVWJZNnVraFFsMklsTXcx?=
 =?utf-8?B?OGw2QXJiQmhybnBWZGJsQTRMcnhXamN0NExRUXF2RlZacHZtbWNrV1Bjcmh4?=
 =?utf-8?B?amFldnYwN0lrZUhBWFFIVVlrOEdLckhrK21CWHZSUlFPcEFnV3E1WlpWeEsr?=
 =?utf-8?B?eDJrd2RPY3RLRzNhY1VZWmVjaXB1VEpBUVk0UjEvRmlKVTZkZWhGQWlaaFVj?=
 =?utf-8?B?U01nVWlraDkvSkVEOHBJZWxnMWlaRmJpcnJ6UVA0U1BRd1V2VWtsbEc0WFVa?=
 =?utf-8?B?eEowWkY2SE81MEM5ZnBQN2UrR2QxNHlFNjl0Tk02TERGT1dSRWhtZHBpSnR2?=
 =?utf-8?B?WnNWT1lkU3NNVnBFZU8rUENiWGd4N1pMVGpRdXQ1OERpK1RaUk0ydDErejVB?=
 =?utf-8?B?SFF3eGdtWmoxdHJsWUlYVnNIR0NmeHp3ejEwbC9VVkd6RWVTMk1nZEJpU1JQ?=
 =?utf-8?B?ZEUySldpeVN1alRQRkhnTjUzMXl0cU9uei8xcm5Ka3B3Ny9kcWxVVEkrOFZu?=
 =?utf-8?B?Ykh4Tzd4bVNHM05UUnhLMko0WUNUd0xZQXRpSVBqM3liRkMwN21PVjFUWVJU?=
 =?utf-8?B?ZkZFekliQnI0Rkh6YnJoYzQ5eXdoK2ZUMWJvRGZuWUcrZ1BWWTFTRFpQOGVs?=
 =?utf-8?B?aU9paVdGZGFrMHlhcFN0L3RpZDRtbVh1bS9ieklKL2l6cUZ5SmJmNTRrbnhH?=
 =?utf-8?B?K2JrNytSRDRVVHROWHdETllSZjUvMEszVTFIc3M1eGdHVWErTkplRjl6cmVO?=
 =?utf-8?B?Q3JReDI4bGxXOG02TEZTWXVKNzZYdW5SRE5BRDdtc3JWSklTaHdQRHpQTnFo?=
 =?utf-8?B?dFJzeEFORmcwd1crK05qL0x4ZHRHK1IvQ0VMUTB4ZUpTeXVweDJRLzJzT0d0?=
 =?utf-8?B?TGhBbFloMG5lenV6M0R0OGZvbklpVWZONjZOWE9WTCtpTlJnRzZxYjN5Tk5j?=
 =?utf-8?B?MVRwUnhvaVExMWJXTlBPcTBzTHhtc2FtMk90M0RiVStiVVVvNUVYWlM1eWgz?=
 =?utf-8?B?WHI1NUxqc1FNeEFYZU50TXZTTFk4V1N5UC9ZVHZXVFEzSHJzWW54Y1dNWnVH?=
 =?utf-8?B?NU9EKzVRbGRBVlZRaDM0bGlNWmErcGkzMkR3VERUOTU5QXBwMWtMdFc2em5h?=
 =?utf-8?B?M3hVMXRFRHpxRFUySDFGTE52SHhiYzZUNkdxS1pWcEt0OEZwWVcyUHhUeGZU?=
 =?utf-8?B?MzN0N0Ntc2ZYY0t6TllGK3AzZmYySzZMSVNHT1NqamZacWZEd1JDN0hXNmxl?=
 =?utf-8?B?UzNhTllDTUNYaG96M2drTDk2SVh6SjJIbHJFUTY1NUZvVjZRa3NrMmZBTWtU?=
 =?utf-8?B?akd3MkhEN3N5UkNsMDFDZklRcEJsK0ZMbWVMUmo2SFpYTHJteFFLVHc4Mnoy?=
 =?utf-8?B?WVRmTzJpZUdNSDVpOFl1bVZzckloYVBpWTZhNGNCUGhMS2d3dHVNRFhJQUNz?=
 =?utf-8?B?N1JaTTN5dXBjTmhHWW05elE4M3pGM0Y3anI0UHp3Z3ArRmY0UlJVL2pRUVpK?=
 =?utf-8?B?bWZnQkhwZ2hZdmZvRmltYjFrMDQ3bnNoOU5EcEFRaHdJTzVSQ1RnUUJPZ1Ey?=
 =?utf-8?B?SnFvRmRNSjlJQmlZYVNuNFpyckFQalVqM0t5L2lRMnFjRHc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajkzZjcxckpUb255VFQwR3hERTJUcGlYRzVpMjFwNUhuRTR1MmwxcFdtVUZV?=
 =?utf-8?B?ZVVsdU9Jd0hKekcyYVZ6VmNjdGdOdUdTVVRhRWw0VjdyU3ZiY1ZLNVNhdmhq?=
 =?utf-8?B?WjU3clRLNTBZaFE3ZUgrSzhBZFZGazlnU1JMVk81ZDUzVXZvYmN4VXUrSEY5?=
 =?utf-8?B?endlSlE1N1ExN0tCaWtsZmdRcDVWb2lJZXEzbjlDRHJySU1Cd3BacjJQZjB5?=
 =?utf-8?B?VXNDOGJpa0dINittb1pxT080Q1FBaUNHZmNnaFMwUWR4MHdaa05OSzFUdDRR?=
 =?utf-8?B?Ykl1QXZnY0tHTTJnMU9SS1VUdXRWM2U3Sko0U3hSV0p3Y0JlNmRJNU1Iczh3?=
 =?utf-8?B?MCtzTm9YOE4zUGpHSTVrZkpFb1d1V21qVE10SWxhRngrdWY1dWgycXJpSGRu?=
 =?utf-8?B?aG04WG9iOExKdXRXZnRIbnROV3liSW5CVFUzT2xXV1lnNnMyQXdEMTU5R0di?=
 =?utf-8?B?ajY1SDBaeDBqOG15cjBycmdHaU1tSnJSbldmMk1VaURaK2pveGREUFdjdkdY?=
 =?utf-8?B?YVorb2lFOFJYc3lWcHlQOHlXbW85MnJkellxOW1ka05pZXFLTTNPb1o0RXU2?=
 =?utf-8?B?dlNqeHM3NnlPVms1MHp1bnZCTWdscDRzUTVBcWlYeGJtajlCVHdSQWQvTXRt?=
 =?utf-8?B?TjlWdHJzOTFaYVVBYmlpd2I4WmJEc09RRDhyRmp3aS9YcmR6c1gvZUNuVnFs?=
 =?utf-8?B?c1RQTUJGdWJXVy85OXg0N2w1bXJOcVk2alU4Q3drVkhnb3o3dCtuUmEweHJV?=
 =?utf-8?B?bG84aldXMzNTSTgwM2tXMXZCNjFUNE9DaFBiOG5SZzY4Z1JCMFUyejF4SzBU?=
 =?utf-8?B?bDYrQndKSnYwaXFoTGY5Nldka005WFNydXI1STNianNWb2Z5dnphVHhqZHds?=
 =?utf-8?B?b0wzS21NcjlmWGMvZnNVWEJXYXNKeitjSDE2aDIrZTJMc2hCamhYSmNkQWRx?=
 =?utf-8?B?QktXTG0wYjNsS3cwdFVuaE1FamZsN1AwZDFsNG9Ld0JVWTYyaS9ZOGRYZlRv?=
 =?utf-8?B?NnJGOEtDejhlQjgxMC83ZFJXSHNJcW5vdzl1WEJyaVZpeFZ0b2hQeEM1VzBw?=
 =?utf-8?B?SlF2UXV1TGZHOUxvN1VnWnMzL1oyK3dTU3NuSTl2Z1grMzVnNnQ5UXpITVlI?=
 =?utf-8?B?dEs3RUdDYWRadlRtVUdmNUd2cXNTaG9XZzBBeE5aRE5XYmRra1J3L2ZsMllL?=
 =?utf-8?B?YUxreVBOaEc0ZnprSGI1VksvV0dzRmFNSmNvR2prUTRNMEt5T1VHdHRqYnIr?=
 =?utf-8?B?OFBocDhQakNxd2pIaHpKR2JKcFFmeFZLNk9laWREQVdTejNTYTlVRE1vbjF1?=
 =?utf-8?B?SC8xeFNxR3pZNnFqQUlUdHpBeS96MUtCU0c5NHVSTVdFT01kazVXeFNUSzZy?=
 =?utf-8?B?VVloamZuRGFQY0ZmcUp2aG5DUFZUU0Rtc2xQc2grNVJqMjIyUUJhN0tLdUtG?=
 =?utf-8?B?SE0rOGU4MkxhOE02NTRmVGlWa3p5L3ZIZERaOTFJeTlxSjFYMkVyWDVPaU1I?=
 =?utf-8?B?UFFTWVZhc0xzL2dOUVhvcTR6QTRObzV5VlJYd0ZjaDRzQ0FvSUlLckpzMElM?=
 =?utf-8?B?VXhPWEo4TEpKOGRyck5IVm5vcUhnb0M0dWk5NUF2R0NaRHlJU2JEYzZRb0hl?=
 =?utf-8?B?R3Q0NGpNbDV5cXZZMTBEN0hscTM4U3lOOVVtdWY4bi82eWNBdStocTNjdU9T?=
 =?utf-8?B?Q3VzNDJuUk9aS0M2bEZUOFVZekdaaVpuUGxuZFpJdU96TkQ0RmF1dEc2S0Ev?=
 =?utf-8?B?bXdCMTVRTlJkQTVVQWpPU0d4NXBBblNET3BlVEYwamZYQmt5TlNQSitJWjhZ?=
 =?utf-8?B?ODQvMnU2QmVQWXFFMlE4WlI0eHBPRE1Ea0dXRVY2anNTU0R0TTlLN1FKNWcw?=
 =?utf-8?B?dXZtS25RcEpXTUFPTDhZMlp3R3Q1UFF6a05EQTVEZU5IVjVFcVRsSXR0bGFJ?=
 =?utf-8?B?L1V1ZFRJZjRtM0sxV3I4bDRGS0xEbEh4NjVxUzFFTmtJdUVxOVBZYk9OOEN0?=
 =?utf-8?B?UGVvcTNxZDFHbXVQN3JvT3o1MW12T1NvbTd4YlZzUmxjS0YzZitGTWpqMWNH?=
 =?utf-8?B?RXZHOGFvU1hMT25WTjBpWWtIM1g0VUZuK0phZC93dFhYSDNyUDk3QzczWXh6?=
 =?utf-8?Q?sKTAR7kaJbdMtsE4jGeGI9k0E?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 683ec2d1-be4d-40b5-8b8f-08dca0bb5582
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:36:03.3531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s1xcBbJQ+2eriy3vjdCG1Upe9mJdVKtNw6F1ulrVyqVCHHORKA73zrfsHmTPi6X6SccoNc5NwAaREix452YOlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE0LzIwXSBkcm0vaTkxNS9mYmM6IEludHJvZHVjZSBp
bnRlbF9mYmNfcHJlZmVycmVkX2NmYl9zaXplKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBbGxvdyB0aGUgY29kZSB0
byBkZWNsYXJlIHJvdWdobHkgaG93IG11Y2ggc3RvbGVuIG1lbW9yeSBzaG91bGQgcmVtYWluDQo+
IGF2YWlsYWJsZSBmb3IgdGhlIENGQi4gU2luY2Ugd2UgZG9uJ3Qga25vdyB0aGUgYWN0dWFsIHJl
c29sdXRpb25zIHRoYXQgd2lsbA0KPiBldmVudHVhbGx5IGJlIHVzZWQgc2ltcGx5IGFzc3VtZSB0
aGF0IHRoZSBtYXhpbXVtIHBsYW5lIHNpemUgKHdpdGggbm8gZXh0cmENCj4gc3RyaWRlDQo+IHBh
ZGRpbmcpIGlzIGVub3VnaCwgd2l0aCAxOjEgY29tcHJlc3Npb24gcmF0aW8gbGltaXQuDQo+IA0K
PiBUaGlzIHNob3VsZCBiZSB1c2VmdWwgZm9yIHRoZSBmYmRldiBjb2RlIHRvIGRldGVybWluZSB3
aGV0aGVyIHRvIGFsbG9jYXRlL2tlZXANCj4gdGhlIGZiZGV2IGZyYW1lYnVmZmVyIGluIHN0b2xl
biBvciBub3QuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxNyArKysrKysrKysrKysrKysrKw0KPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oIHwgIDEgKw0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggYTBlNTM5YmM4MGYxLi5lZmUwYTU1NGEyODEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAt
MTkxMSw2ICsxOTExLDIzIEBAIHN0YXRpYyBpbnQgaW50ZWxfc2FuaXRpemVfZmJjX29wdGlvbihz
dHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4g
DQo+ICt1bnNpZ25lZCBpbnQgaW50ZWxfZmJjX3ByZWZlcnJlZF9jZmJfc2l6ZShzdHJ1Y3QgaW50
ZWxfZGlzcGxheQ0KPiArKmRpc3BsYXkpIHsNCj4gKwl1bnNpZ25lZCBpbnQgY3BwLCB3aWR0aCwg
aGVpZ2h0LCBzdHJpZGU7DQo+ICsNCj4gKwlpZiAoIUhBU19GQkMoZGlzcGxheSkpDQo+ICsJCXJl
dHVybiAwOw0KPiArDQo+ICsJaW50ZWxfZmJjX21heF9wbGFuZV9zaXplKGRpc3BsYXksICZ3aWR0
aCwgJmhlaWdodCk7DQo+ICsNCj4gKwljcHAgPSBpbnRlbF9mYmNfY2ZiX2NwcCgpOw0KPiArDQo+
ICsJLyogYXNzdW1lIHN0cmlkZSBtYXRjaGVzIHdpZHRoIHRvIGtlZXAgdGhpcyBzaW1wbGUgKi8N
Cj4gKwlzdHJpZGUgPSBfaW50ZWxfZmJjX2NmYl9zdHJpZGUoZGlzcGxheSwgY3BwLCB3aWR0aCwg
d2lkdGggKiBjcHApOw0KPiArDQo+ICsJcmV0dXJuIF9pbnRlbF9mYmNfY2ZiX3NpemUoZGlzcGxh
eSwgaGVpZ2h0LCBzdHJpZGUpOyB9DQo+ICsNCj4gIHZvaWQgaW50ZWxfZmJjX2FkZF9wbGFuZShz
dHJ1Y3QgaW50ZWxfZmJjICpmYmMsIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpICB7DQo+ICAJ
cGxhbmUtPmZiYyA9IGZiYzsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5oDQo+IGluZGV4IDgzNGIyNzE1MDViMS4uNDBkOGVmZWM2ZDlkIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmgNCj4gQEAgLTQ2LDYgKzQ2LDcgQEAg
dm9pZCBpbnRlbF9mYmNfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiB2b2lkIGludGVsX2ZiY19hZGRfcGxhbmUoc3RydWN0IGludGVsX2ZiYyAqZmJjLCBzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lKTsgIHZvaWQNCj4gaW50ZWxfZmJjX2hhbmRsZV9maWZvX3VuZGVy
cnVuX2lycShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICB2b2lkDQo+IGludGVsX2Zi
Y19yZXNldF91bmRlcnJ1bihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ICt1bnNp
Z25lZCBpbnQgaW50ZWxfZmJjX3ByZWZlcnJlZF9jZmJfc2l6ZShzdHJ1Y3QgaW50ZWxfZGlzcGxh
eQ0KPiArKmRpc3BsYXkpOw0KPiAgdm9pZCBpbnRlbF9mYmNfY3J0Y19kZWJ1Z2ZzX2FkZChzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7ICB2b2lkDQo+IGludGVsX2ZiY19kZWJ1Z2ZzX3JlZ2lzdGVy
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gDQo+IC0tDQo+IDIuNDQuMg0KDQo=

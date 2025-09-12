Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B24B55013
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7B210EC56;
	Fri, 12 Sep 2025 13:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a2d1uuma";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 621CB10EC54
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685233; x=1789221233;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ZGunSYt2MLJ3HbbufqNYlCmAvzE/hsZXoBgzD4RBBSc=;
 b=a2d1uumaE6I41Ewz0An8vnUJtz//4fTdDU7maKa6aab/J6pTsabs8V4V
 bVUBU+SjErdM7036lj5UFhFfOwN3T2BU8F7Sdy8ZGfT7Xsz1Ap5wqgg+p
 47o3iRfRecSNRkfJZcut7PawfuHgHr4LqUgs9E7aPcAj9VAID2ey1FT1G
 uN3o34D9lB+2wwYktGk7yXlDjeiKUD4WGTKo9v5HD8/gXVlUAKZIXd9iu
 uj80URakh5QKjzWPdqzLY4rYtqNvjKGa/hw9ULJv/X18Hqp208jY/4Hgd
 4HYrA1KpCPXqyrjySK7JozIQ9LSfMziVUJ3IZSD3nfxZgi1rVm2W4E873 A==;
X-CSE-ConnectionGUID: YO0JMbqlQ2C6waI7QQooZA==
X-CSE-MsgGUID: Jfn4d9qqSN2chSXI6AoxyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60093297"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60093297"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:53:53 -0700
X-CSE-ConnectionGUID: xffZpbjlQEmR1p88VraLpQ==
X-CSE-MsgGUID: o2ERiQHXQ+6G7J+FLMlkCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174750279"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:53:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:53:51 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 12 Sep 2025 06:53:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.86)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 12 Sep 2025 06:53:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LiAh2xYY57wT74OSFqANkYAWwHWGK0QSoJyXPjrSJ0tJca+2DKPZSdSWFNR4hJWhJnUGJIku3jQubgjegWvootyWZf85xFGvJp4PiRybsd7Px8erSVUDQMeskJcTnspaMmfjyC3ECIV6Wj1fNBhI4Hi9bR7jv7yaX4mzlvd/UPFByj8fD7IHaPZl7YkJRDhRoDarj13qhKRVRu+kTsmTpX2lx+iuklgUPAL3b+CBXlcWzpJFRjQO1mD5lk+fmeQbJjQfJzzxKzDRcenU6VUHjCvNxDf+fwhxUIkrzm3WhlC154EBK+3KIl9BcVjEqNVjVopgfMd94J8wiIZVqc5eqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGunSYt2MLJ3HbbufqNYlCmAvzE/hsZXoBgzD4RBBSc=;
 b=d0Mx/MtVn3BmmZhiOA0GAGdKZOXQJshxRRKG9f3jRm39sFThanbBqjLXSVjUkgFmCLmubdl2WEPnljJ0ykj7IL9sOJPPh0G2xZ8CH32pl1nIims69U6kOVylufFY9z4fB657b5yR+T4zILgsp7I/mQojQf3AptB9EJctOtr5I8TJIO2ch6VUK/qgx02JczT8DxO9mOQedGWCifUuT2uTLUf9XF2Ol8illwpV3m9jnhRwmasKrvhOLlFRGTu5zcIga9tYcyw/Ayl4P8RzCIJvhFX0FIISZrp6saFNo4q8oq7pDAEkqxGHqO2zIas5nR3AS50EqnJr4jmbiHmNvY/Frg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 12 Sep
 2025 13:53:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.017; Fri, 12 Sep 2025
 13:53:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/6] drm/i915/pm: Allow drivers/pci to manage our pci
 state normally
Thread-Topic: [PATCH v2 5/6] drm/i915/pm: Allow drivers/pci to manage our pci
 state normally
Thread-Index: AQHbkr++jz4Wyf4cwEmfG+Ko7ceQxrSQs9MA
Date: Fri, 12 Sep 2025 13:53:49 +0000
Message-ID: <58d90586a93104cc446885282dd2c57b7c3569a3.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250311195624.22420-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7455:EE_
x-ms-office365-filtering-correlation-id: 01b6653d-eac5-4d1e-7a68-08ddf203cd27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WHl5TkN5YnBWQXZhWlZkb3pLeENNYnVOMjVzYlZ0NHNHNFl0Wm5OODdCNE5a?=
 =?utf-8?B?YUJ0aG1ES2pPbzJQdkpuMU5BMkdsSzZVOEVMSk1xOUxHSEpoeUpmcmdKRmhZ?=
 =?utf-8?B?UnNvWHpod2poajUzeUdzNFA4OWttVWpJTzY1WTI5dUwybDBUSWNLTEpMZVJ2?=
 =?utf-8?B?WkhtR2tnS1BjUXlMZjFuMTc1ZHRnVzhJR2FvWngybDVQcW41Z0ovaURWZmdF?=
 =?utf-8?B?cUxXZXliN3Jkdmd2QjNibGJDSlljakNJQzQ0QkF4aEovSmsrQmltY2l6aGJx?=
 =?utf-8?B?aDNNdHBKU1lUK081Ymd6aG1HZHozUVZzcnA2ZkkwZHVBTmVMUy9xNGQxb0lq?=
 =?utf-8?B?bG9vY1owYi9zbUJIVSttbUk3U3pFQnlUb0hFV1Z3WFNuMlVxZlZyelNYU3c0?=
 =?utf-8?B?VVpzUkNVeHBaNVU0K1BVQmlWWEkyRnlsRDk1NE9vUUNnYXR6aVF6WFRKZHdy?=
 =?utf-8?B?ZmFvVVpGNmN3VkNhUUJRcklQNXBkY2FHRm5BeWs0clQvYkltdmtJbjdEYTZa?=
 =?utf-8?B?QXJUeUk3dCtRMTUvclY4OW12dEtZSi9SZVR0akFtRFk2aG5GRy9UM1hOd0xt?=
 =?utf-8?B?RVdDUWVQNTNYTzc0MTE5dGhVQmR1SDNqaXA1cHVkSGVrMW1HODJHWmVTOElC?=
 =?utf-8?B?amJrUkpka3hKSFVpVEFqZDJDRDVaQWsrcDM1YjVtWXJvQ1lWbXZkT051UVIy?=
 =?utf-8?B?a1lMYmNQQ284TTZMTjJDN1RxQ0psYnJ5bE5vWmpMaVFXWEw3S3pZNTM0S2la?=
 =?utf-8?B?R0VBUUR1NStoL2RtYnUvanR2WXc1U1o1M200TWF4T1VESGNlTFVaeUg4a2Fq?=
 =?utf-8?B?ODBJZndrN1NQclRiSENQM2FTWU12Vm9PRVA0SmhZVmxJa1lFRGlZcnJZZjlU?=
 =?utf-8?B?NkNrdmJ6Ky8xbnpqR21SaGxOTHpMV3lUZlpST3E0ZEhKRTBUMkxoYlA2N1F5?=
 =?utf-8?B?alFkWEtsNWJ6VERNTVdUWmFrNEk0Y2JQd1AzbEEyYVpsUGJEbG9IZ2hiS1Uv?=
 =?utf-8?B?dDVRNTNHVmtDOU9pQjJNdk1PSjdiR29RejcrdlV1TEE2S0VpTnRhUit2b0NL?=
 =?utf-8?B?L1NiSWh2dnVxeVdydkIvVzVWd3dtNCs0VVNOYnhTTzN1dlovVDhldVV1OUV4?=
 =?utf-8?B?SXFCcUxwRGNLZDhvQnJhTW1mSngrdmZUUkR3OVk3Q3l3b215a0UvUEVVZGpp?=
 =?utf-8?B?M3o2NkJldVFpZkhjRXNSUDdGeXU3OEl6c2FCb0hVM1lkTk51bnk4bDVpZW9P?=
 =?utf-8?B?VkxXd1NQdEZjOGdvYmdPd09mMlVwZ0V3bDZ4V3pza0IvNlN2UFAvMmZ1N3Qz?=
 =?utf-8?B?MG8rU0phbm5aL3RVWitONnRXY0dKS25UeXI4b3FSZXp0eXJYbzFUbndsdGRm?=
 =?utf-8?B?bnJKSHJmV1FsbjZaNllyUW5XL2hSK2lwR2NFQm8zdEEvT1FLZWk4MWVhSi9R?=
 =?utf-8?B?NjVpa0dpSGNXRjA3dUsxVEN4SFFPVWVSWWk4OGZiV2hxZXp4TzRFUlZ3aFJK?=
 =?utf-8?B?TTI2OVJDZGFSVFVzWCtpUGNkNENURzNJTG5pbjkyUE5iUzRzelhrMlduSDR4?=
 =?utf-8?B?ZTVpamIwSUlzd1RXZDczZlFYaEhmeStPcjM0SHROZnRHRUNOd2dudmtJQWpm?=
 =?utf-8?B?OVVMaDRTeHpqNHRSRUlhTHhma0lrS0Q0NmFndlNMb0tqelFBOVFPdGFraVN4?=
 =?utf-8?B?YVY0b295YkdoL3VZMTV5ekRrODlwRUxGS3NxM3F2SGFpYVZIbUk4ZnA5eVZy?=
 =?utf-8?B?M1VEVEp5ZnR1Vk9WWUtTUXN5dThqbSsvelVQcHlETTVnamVydlpSb3VjbWwx?=
 =?utf-8?B?UGFPNmYwcUsyb082WGg0U29LUHQ5Y3Qvck0yamxSekhMdVF2aEpUYzl0Y3ZG?=
 =?utf-8?B?bFlUcTVpM25GRnpiYmpaRk5STHBxN056ZGNIS0VUV25IY1FkMlEyQW1qak9K?=
 =?utf-8?B?enB0anQ5SDVVUlAvd2EwNWFWaXpVZTZPTnNCbGd1dHErMnVCa3ZDbGdKTmgw?=
 =?utf-8?Q?wvdcvXl4aYlHY9Np3RyCasAsmV2hMI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWEweHgvK1l4OWxFdEY5REF3VnhVWUlNZDVCcm5SY3VuMEc4bCs3YlZ4L1lM?=
 =?utf-8?B?WHJiTHJXclJHRk02NHdpdENZTlNzb0RYM2Z2QmhDa1AvMDNjazNINzF3YUk2?=
 =?utf-8?B?NmV1TEYwbkhjVVQ5UUJrazVFendFUUNSbXNxTVd4RTlIVTVEQnFXdlAxVlhP?=
 =?utf-8?B?cnU5c3grSDdJSFNWNXpxaHo1ZjM1KzRGZEVrV29aMVRZYWpMc3d6cTZCSFNC?=
 =?utf-8?B?VmllemxwODhJS2FKUm1RTzl0MmZJNmlmMEhGejBYR2tTMFI2SVk0Z3pTa2Fv?=
 =?utf-8?B?RkJ6b2pNZDFCK2d1M1hqWFJ1ZFM5NjdHRTNnYWRaNldWMzFhSUQxYnRYYzhC?=
 =?utf-8?B?RFlCbk5hNWh1eXZKblRHN1h0TXJCU2pucGphRVVwR2h6OC9NTUtmVFBaWkFz?=
 =?utf-8?B?Tko2cVEza0c3Y2FRa3RNSVc5cTlmak45OUxvaVFaQ1ZrWkc1N0xFN3NmTkhh?=
 =?utf-8?B?cEtWY0w5UGdIOW10UWhDeXB0RitwVXFtRWhKWjNYNWcyZDdISUVOME9MOURu?=
 =?utf-8?B?QkVmc29BcmFkUEo4a2U0MnQvczl6eTlNVTlCMVprZ2RrdDFvYlFkdXlUU0ZQ?=
 =?utf-8?B?c1JLb3BQbDduKzJ2dThzVUpvcm1TQUZDRVNLVlZRL3VCY1ZDRWVsVkVkM1Vl?=
 =?utf-8?B?VTN4UTNEMUdnYTZpOGsrZGFxREVBYlBBcEpqd3M1dGZteVo2MFBMd3ZMcFdy?=
 =?utf-8?B?WEFkMzIxakgzSFdNN2k5ckpodW1mTDZZZUx3cHB4dXJTbzU1VHJodVE1VC9B?=
 =?utf-8?B?Vm1Ed0ZpeHh4Mkw5THRSYWU0ZXBPUFVOTE5pZG94aGNvNXhTbklHbjhkVmNV?=
 =?utf-8?B?TDFEL3U0a0hkSzVNRjdJWk9QWDFiSTY5RWVnOHdJcUtWSlNlaENuWS8wcVJB?=
 =?utf-8?B?OW0xcnNWRWZTTkgzSFJuK0x0MzJJYTRMQ2dWNmVyUFoxYVR2UjJGSmgrRGdp?=
 =?utf-8?B?bUw0dkNpNE82bWtYS01QSVNSaCtuQU8zRGRPZzRPcUlvQkRnczJlc2I3NnZC?=
 =?utf-8?B?VHBUVkdzTG1PM1QzYlpMclp5RXhjQm55bnNBcXpjTUcycVdadm5FMUtWR29B?=
 =?utf-8?B?Q1lNTmMxMnpNVFpxbEowNXp6WVlkajMwQWF2VERneitBem9NQmNTSmwrVzZL?=
 =?utf-8?B?VVdydWV1SnVwcnMzMGJxOEMreldwZjhZdFRtanJGRzNiVFhFWXllZDZKZk9j?=
 =?utf-8?B?SWRWTllQM3NWazV5SVlEYXJQQnBIbnpHK0o5Vi9GeGVIbDQ3MWJQQ1BDbHk1?=
 =?utf-8?B?MlJzRVJPcFhoVGp4TUkrRitRdUU5U3djYXdPUXNjcU1wbEFFdSsvK3RYYUdC?=
 =?utf-8?B?VW1nQWFmN1RyM1hZOHMvUDhpaGFsVm9Vam9KMnFWTUhISWVTSEJmQWw2Z1Nt?=
 =?utf-8?B?dFFITHFwWHJhL1B0MDJpN0U1OHRtQ3JmWlkrR0hGWnVXd3g5UzQyRW9NZFJq?=
 =?utf-8?B?bTVNYnlFSEZtMmFDdGZPc3NkeDZEK0YxVkdXcnBsaUhJTUdMaGV3b2V3TFZv?=
 =?utf-8?B?aWJROGVkZUVSQkFPN1JDeFBxYUU3Z3ZDbzlzQ1RlYjdJY0NuaVB1U1ExcWwv?=
 =?utf-8?B?OGlaZ0hMaUZMbEgyNkdMUUVvMVA1dHhzQjEyaXRST2dieHRWa2d5YWt2cmEw?=
 =?utf-8?B?a0lPekpEQUZxemM4VHFteTVaUFRMWVJzWEFwT1hWK1hKdWcyV2dWa29vWEY1?=
 =?utf-8?B?Zzh6VG14TlJIU3hDUEp6RG5vcUdYOVdNeEZzbjFMbDBmSm1POVd2RTVlc2Ji?=
 =?utf-8?B?VlhSMUdXSm9vdXZmSWN3TVo3VGFtL0ZDNmpJMU5JUjE0UmkyZXJmQUhsSlo1?=
 =?utf-8?B?bkd1RXNqN3FUR3BYSHBzMy9nemxGRFF1ZmtHRXdvOVNuQldyZDI0RFRuRlFL?=
 =?utf-8?B?c0twY0Jyd0R0RkFWK1h1cDlLaTJNcEZna2xTSi9YUzRvS05hWWhJMVBQSVJS?=
 =?utf-8?B?MnJZZ2N3M3hQTDRFNk1zc3lmUURlZEUyZWRVR2tISUZyeTllajFDVi9ORzdi?=
 =?utf-8?B?NkRSeWp6MWxLdEk3RTZvMFgvWjBFUURzaTNId21wZmh2NVVUem1kYmxaQnVZ?=
 =?utf-8?B?NkROSFRmYlovSUhXWTRJOW9wWTZJYkJ0dkhVRnhhVERVb0NRZThnU3FuRmk1?=
 =?utf-8?B?VmpXUnJjWm11QVZLVVpwczh1Q2xvd0lRYU1kbHFhd24rMjFpYVgxS21WNlJs?=
 =?utf-8?B?Y2gxUVBINFhLQWJLNytKNkE5WjRIcmo1dDJzQVRmemtQY0gxUWlyOVIxY2N4?=
 =?utf-8?B?NnBIZUNUVlZzd3c1b3hNOTFBeFdBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7A53FFB1009D5D4AAC582B27C0258D84@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b6653d-eac5-4d1e-7a68-08ddf203cd27
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 13:53:49.6885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: odRGDRDdv+9nCq0ITXjcdRSOkm2M0V/V0c67Wgzx8KIkZnKt/t+V2QKLS40XUrTF/R9otvDDl+lgQZbW9laIbsPHbJoqpS2a5DEKSmN125U=
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
PiANCj4gU3RvcCBkb2luZyB0aGUgcGNpX3NhdmVfc3RhdGUoKSwgZXhjZXB0IHdoZW4gd2UgbmVl
ZCB0byBwcmV2ZW50DQo+IEQzIGR1ZSB0byBCSU9TIGJ1Z3MsIHNvIHRoYXQgdGhlIGNvZGUgaW4g
ZHJpdmVycy9wY2kgaXMgYWxsb3dlZA0KPiB0byBtYW5hZ2UgdGhlIHN0YXRlIG9mIHRoZSBQQ0kg
ZGV2aWNlLiBMZXNzIGNoYW5jZSBzb21ldGhpbmcNCj4gZ2V0dGluZyBsZWZ0IGJ5IHRoZSB3YXlz
aWRlIGJ5IGk5MTUgaWYvd2hlbiB0aGUgdGhpbmdzIGNoYW5nZSBpbg0KPiBkcml2ZXJzL3BjaS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jIHwgMTEgKysrKystLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJpdmVyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
DQo+IGluZGV4IGExOTllMjFjN2JiNC4uNTAzZjFiNmI2OTRmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTExNTQsOSArMTE1NCw4IEBAIHN0YXRpYyBpbnQgaTkx
NV9kcm1fc3VzcGVuZF9ub2lycShzdHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2LCBib29sIGhpYmVy
bmF0aW9uKQ0KPiDCoAkgKiBwY2lfc2F2ZV9zdGF0ZSgpIHByZXZlbnRzIGRyaXZlcnMvcGNpIGZy
b20NCj4gwqAJICogYXV0b21hZ2ljYWxseSBwdXR0aW5nIHRoZSBkZXZpY2UgaW50byBEMy4NCj4g
wqAJICovDQo+IC0JcGNpX3NhdmVfc3RhdGUocGRldik7DQo+IC0JaWYgKCEoaGliZXJuYXRpb24g
JiYgR1JBUEhJQ1NfVkVSKGRldl9wcml2KSA8IDYpKQ0KPiAtCQlwY2lfc2V0X3Bvd2VyX3N0YXRl
KHBkZXYsIFBDSV9EM2hvdCk7DQo+ICsJaWYgKGhpYmVybmF0aW9uICYmIEdSQVBISUNTX1ZFUihk
ZXZfcHJpdikgPCA2KQ0KPiArCQlwY2lfc2F2ZV9zdGF0ZShwZGV2KTsNCj4gwqANCj4gwqAJcmV0
dXJuIDA7DQo+IMKgfQ0KPiBAQCAtMTE2NCw2ICsxMTYzLDcgQEAgc3RhdGljIGludCBpOTE1X2Ry
bV9zdXNwZW5kX25vaXJxKHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYsIGJvb2wgaGliZXJuYXRp
b24pDQo+IMKgaW50IGk5MTVfZHJpdmVyX3N1c3BlbmRfc3dpdGNoZXJvbyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gwqAJCQkJwqDCoCBwbV9tZXNzYWdlX3Qgc3RhdGUpDQo+IMKg
ew0KPiArCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2RldihpOTE1LT5kcm0uZGV2KTsN
Cj4gwqAJaW50IGVycm9yOw0KPiDCoA0KPiDCoAlpZiAoZHJtX1dBUk5fT05fT05DRSgmaTkxNS0+
ZHJtLCBzdGF0ZS5ldmVudCAhPQ0KPiBQTV9FVkVOVF9TVVNQRU5EICYmDQo+IEBAIC0xMTgxLDkg
KzExODEsOCBAQCBpbnQgaTkxNV9kcml2ZXJfc3VzcGVuZF9zd2l0Y2hlcm9vKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiDCoAlpZiAoZXJyb3IpDQo+IMKgCQlyZXR1cm4gZXJy
b3I7DQo+IMKgDQo+IC0JZXJyb3IgPSBpOTE1X2RybV9zdXNwZW5kX25vaXJxKCZpOTE1LT5kcm0s
IGZhbHNlKTsNCj4gLQlpZiAoZXJyb3IpDQo+IC0JCXJldHVybiBlcnJvcjsNCj4gKwlwY2lfc2F2
ZV9zdGF0ZShwZGV2KTsNCj4gKwlwY2lfc2V0X3Bvd2VyX3N0YXRlKHBkZXYsIFBDSV9EM2hvdCk7
DQo+IMKgDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCg0K

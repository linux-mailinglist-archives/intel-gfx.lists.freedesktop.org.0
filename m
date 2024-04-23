Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BBC8ADED3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 09:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E168113210;
	Tue, 23 Apr 2024 07:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XdDrj4Uh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A37113210
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 07:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713858421; x=1745394421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QRFFzRvRKjox6lwuKAIKpRD5uLtkVkJJ+C/AJ5mh8YY=;
 b=XdDrj4Uh2PJh4CZqfGpJN2LSUyON9Tt6BXojhPno4BkZwQFRFCcTzm6M
 CUxKdLzLcMw0eOIxS192SrZM8huXdzo50uF99+JbDsIZT9GD3zvDwEZWD
 E7Y26CZX6N8SnNZMIf8ZCyt9Xsa6x0Nwdi8eYNNdPHnO5yN5iFg5G1wsy
 em/oPvsmbsBhbIec+7PRSlgPkOJt06LJSNnmoQf2KCzlMmDOOaElHKpY1
 hypi1wk1S9Dryinn6F6nZSxJhHYmSaYfB1T7oQ6rlhRHCHQ5UKgLAMKzh
 ecPoehhO5QyNBxpEIxzm0f2uxzZS34ZW4DgpwC40Dlo7boVB0wFt5ORH+ Q==;
X-CSE-ConnectionGUID: O98aG6GoR0i81MfoO5S/tQ==
X-CSE-MsgGUID: R7W/A6ZFSbCECY9RSHDt5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9647659"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9647659"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 00:46:49 -0700
X-CSE-ConnectionGUID: RI2yfPctTZC/pWTaCMZ4Lw==
X-CSE-MsgGUID: UEku5DuaQpK8iydj1w722w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24732183"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 00:46:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 00:46:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 00:46:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 00:46:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 00:46:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZoH6BXn//KTL4KuKL3F5mPTsEniZhPNnnfZyGEj5q1Mbm3foRfXjOZZU7Gg5iGnSNGwcoIX01IWSeJTH1rdRsbJBibfIWrNhKGdl23JYngoFJxIS/Np6dS4FMij/JmSqGJbGmM7r0bXazXQyDYLhxyzfKdokOqNXLdyf5UPCwOps6rCnuuq7lp1sBlrP/BMYuIYa8uO0jiQnM9ccYqPI7OpxRXRk6knJk3CH5sDADMgKaTA1BF75QeOF5VYdUp0T/GXM94w7WiALT75KeMC2ksUePijnLHrVtNccRFp/8Vts4kS/UZ04RXgabjwWV75IdOENdrnfrWj8Fv1Nc0MqiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRFFzRvRKjox6lwuKAIKpRD5uLtkVkJJ+C/AJ5mh8YY=;
 b=HfdchwFOdi+HnUUGDgnR6S3sy7O+xNhR2LFGmu7LHI9vuCef8fvo/yFijD9SlbfqWNZo9msgwsMiaGHy8P116ekZhXnpzSiXcHvXJNGarMJ/FonHEuln4nzh5Ff3y1A++U09wH3hzvuBCq8GdVGVPi4/XkJuyV9sW36mjw5dbPBJnN1zQF4Fgig7Mbm29CN6XhM+J2mVFowrQ0DerfEQA+dnzisy8nUOQv1L8txBsQuRobfal+e4btznFI9C7hTYtyTeYqzi6/JU9d9p3sbzoW69BDrJ8gl5Mllc3NsJV4vjpR7xoSxcsub6T22ROh9q2aOxzSxJPuuiYV6mdDWxaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB5149.namprd11.prod.outlook.com (2603:10b6:a03:2d1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Tue, 23 Apr
 2024 07:46:45 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 07:46:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Thread-Topic: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Thread-Index: AQHah013UNnuT4yhxkKwgc8+mrv7HbFv7P4AgAWnToCAAAHdgA==
Date: Tue, 23 Apr 2024 07:46:45 +0000
Message-ID: <e4a47c78906f7dcbb8c9314fdd84671d1821f918.camel@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-7-vinod.govindapillai@intel.com>
 <ZiKnvOp3_Cq85NMt@intel.com>
 <58490248f4c6d443aea6dbe335c1233542703d58.camel@intel.com>
In-Reply-To: <58490248f4c6d443aea6dbe335c1233542703d58.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB5149:EE_
x-ms-office365-filtering-correlation-id: 177e6ed8-f55c-4b98-eafe-08dc6369866c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ZENIM3A0ckhic3BuOXBrOTJtQW1zYXg0Z2lGT1lzdXNYR0VEWW5IVG8xcDFZ?=
 =?utf-8?B?SlBqU0R1OE9mVGJOQjhNcVYvMHlFb01pQzFkbkZJa3JtaG9SeFBZdklhV3Q4?=
 =?utf-8?B?Mm40K1ZGZG9taWgwZGRzTm94MnJpZG5LVTJsajA3akRLdDMwekNHR3Z1ckwz?=
 =?utf-8?B?RlZEVGYzaVBTVzBhWlBOeG9tR1dCa3hzb3BHQ1ByTW1lZms5VkI4QUdmZGtW?=
 =?utf-8?B?U3F5dG1IaVZIbzNiUlhvOXBZR25BWUVHVmRzaUZGOHhpbVA5SmJFU0NwOUlr?=
 =?utf-8?B?M3IycTNtVUp5bHdQaFB0bG5ibWJGMVJBNmxCVzlMWE5lenJWaHUxZDZUUXhS?=
 =?utf-8?B?T1R3YTcvamZMVHpIeWdPczRDNDFISTM3TUxtVnBXSEVKM0d5NG84RGIwdWMw?=
 =?utf-8?B?Y1k0dzZFSVJEL2xsQ2dkeXlFeTVYWDd1NXBmQlVFSnlHZGxrTEEwZnRzM085?=
 =?utf-8?B?UmNBZFpKREtneWZUdW83bmdBVThXZCtHYWJzMXlJdjlneGpBNzgxOURNV015?=
 =?utf-8?B?STJ3K3I2bythTGd1d2dieHZjdWQ2eXYrTmdlcUpkbUw5dDIvcUVndlhOU1Zh?=
 =?utf-8?B?d08vZEFzS1FWNTA1NkFueEk2SHYzSlcybDF6REdYdjZreEx5VWo1bmFQSGtw?=
 =?utf-8?B?YUJaSnBjWG5GS29VTjhqOEVZNW5CNjhxb3M3b0t1WFAwUWpwMUpBQUJYOWgw?=
 =?utf-8?B?TzF6dGNqdXZUUGZzRk90MGVRT2M3NmthcFFCS2lSb1ZiRVgyZm9HZ1VlOTRC?=
 =?utf-8?B?NlZDanhLdG9hamF5K0RnUndadzF6L2RPaUJQYTVQRkVDZlNCb0FiUjlLak9J?=
 =?utf-8?B?ZWZiNTFUb1U0YzBLK2x4WU9uY2FZcjIzdUNIdUZGOG1VVi90U1BwVkZoUFJP?=
 =?utf-8?B?bTJLNjR3STl2cE82U0hZSDVVQWVLMnliRTJsekFuY3VBcXlkU2tJRGxiZFRQ?=
 =?utf-8?B?QXc0eFI5U1UrTXhXTksxaVRibU5GR1RiSnpoWlV4SkV4ZW02cG9KRXN6bSsr?=
 =?utf-8?B?TDMrUHJwM0VWaDM2Y1ExSkpCRFlUQzJVR2JUdVJOM3hKMngzOWtzTkNuY3dw?=
 =?utf-8?B?ZWwxZWNFbXBPTHdCREY1eklHQk1GSzczaXN1RXpqaWQxQ0hPbFJlSEhrK1NY?=
 =?utf-8?B?Mkc2TGYwbXVJVE4wMDFaKzY4b0Q2M2tPNzVTY2tpR1NYb3BMZEtObGVhTmgw?=
 =?utf-8?B?cGs5VUxvcXdsR21GZ1FjNHRORmxST3o3ZmMzQVo0V2FPbVN2dUUxU2tvTER4?=
 =?utf-8?B?akVldUQ0K1NONExnODRWcksvMVJBOUtPb0F5Y2ZSaUhHdlNmMm4yU3VkSnJ4?=
 =?utf-8?B?V21pdi9OWW5jNVRRbjNuNWtqNnpod3cyMkplbC91SnVndDFKeFJlbkN5dzk3?=
 =?utf-8?B?aGlzelppdklWRmpNMmRNcENoQjZXL2lQLzRtWWRYNUhrakgvVmJET01hMkVj?=
 =?utf-8?B?T2VqQ1NSQVB2aXNSb3U0OWNWWFlQSjhWbG9IcTZjc0NQcEdSaTVSYm9FZ2pG?=
 =?utf-8?B?S0I3TlpjNmY2NG1VR1k0UWJVVGFYTkpNeWlhbWZwdjdJUE8vTVNsZzRFRDNK?=
 =?utf-8?B?TERod1pGUEQ5a1NpazJaNlFyN084Z3JJN2ROVkUxZ2VWQUpOYXlvSHZMM0pR?=
 =?utf-8?B?MmlSRHVsbXQvS3lJbnR1MEZ5WER5UHNyZG1OWEpCeUpqQS9KQS84a1BrVjMx?=
 =?utf-8?B?elB1Nm5QampnSFJYblJ2bWNjZXBCVlJoVkp6V3Z2UzF5QVJsOS9WeitCSlJL?=
 =?utf-8?B?YnpsR2tBRkpDODNTTEs0bGthak1nZHVYdGZaWk9QWmlzd1FuREU5UTk3c3Bq?=
 =?utf-8?B?bzArNHM3d0txWFhrS0FvZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkpNVXJPaS9RalEwekIxTWRkSWZwcElYNWJzUjBBaVBrQnVtbVJFdEVmcGtU?=
 =?utf-8?B?VkJHelNXeVdMbHBPTG9DRWlLYkdHbzZBTXFDOGxFOUVYZkxGemdZUzAzOW0r?=
 =?utf-8?B?Wi9ITmJZZzM1eHJNOTNhekZvVUJ4TlFGQXZrVTNpWE9xTU1rMnk2RDlJK0RO?=
 =?utf-8?B?bWdvV1dQRjVTLy9pd0tKaEhLdU9abjducEFSVGZ6SjNUTHNCOHBhcXdJd3Ji?=
 =?utf-8?B?TnFzUmorSHZrTVEyMmRzVksrS1doSnNDRXRiYVZxZGszSEx2UnIyNUxNK0lH?=
 =?utf-8?B?RDhDanl5SlF5S1lZbHVHVE1WVmtlb0tQZjgyS2Fvd1M2enBQVTcya0tYZnYv?=
 =?utf-8?B?YmdIaDExUGlNV0ExTzdYb1F4SGxiV3VPKzB3MnF6dEpkUWkyM0lNQ0krN2ta?=
 =?utf-8?B?b0VuUnlRTnZRdytkbGNlQlZhUUlveXFHR3VzL2FMSmtHbk51cG9ta09zdDZE?=
 =?utf-8?B?Vm15c1pzclFGUXUxY2F4a1g5bW9CTzhRQTEwbVY2bmQ2LzloM0NRSGVCS1BM?=
 =?utf-8?B?czVzek9WRUE4NVhHeURZSVY2ZHFrR0ZoUTJDTmxmVjB2OXl6TTVBYStya0Zt?=
 =?utf-8?B?YngzM0VpcjdEV3BmUzMzR1phdnY5cmFuUDg4b2VaRHVtNGx1NHpWeVI2bGNp?=
 =?utf-8?B?amJTbjNpbXpCNHFrc2ZUdXJhemRQMWhOb05GdzQra3oyVC9vaUoxczhZY3pW?=
 =?utf-8?B?YUh0Z0xlR3ZWemtCZFB0a3p0Z3gvL1QwRFptVXRKeHFVYWpsamZFQ1BjdU1q?=
 =?utf-8?B?WjFBZ0U1dGQ3c3U5dXBJZUdFWlJTUTBBTWp6SmpINlMrenpETk5oSE5TUjRV?=
 =?utf-8?B?dnlBSWRLcTl4K0tqdUU3bUhkcnk5dEwzSFdjNXJjTlNKRjg0TkJUbFMwQ2Jj?=
 =?utf-8?B?dHFOWVRZeE00UkRidnVvM2FqRjhLSVd1SWpFWjJjWm91M3plNlVnOWxwUmdY?=
 =?utf-8?B?a3dxMGc0cFlCR01wTVZxYnJnTm1PR3dMN2UrUkVhZy9mcmk4NU5XMWlZQjZZ?=
 =?utf-8?B?Uy91RXV1QW51R2NsTHI1TWVmdmtyUWx5bnBzSlRRQlhQTytDMklPN2d2M01I?=
 =?utf-8?B?ZjcrSWpaWTRRdGpxTXE2VXFlM1o1N2xrcXl3dDVhTjBsRkN3bVZoVzUxVlFK?=
 =?utf-8?B?ZUxTZC9EUjRXck9jQm4zYjc4Ukx0OGdKNDhuZ0VFVW5yRVNqc3ZiT3VQemtH?=
 =?utf-8?B?MnVBWHFQeTUzU05hTXJOY0pwTEJqYk43bEZQY1VJUnZRZGphbG9BSVQ3bDhW?=
 =?utf-8?B?enVNV3c0T01WMHVJa2VPZnlCT3ZVSUcwRnd4VWk1TUxZZjgvWFQ4R1hsWDFj?=
 =?utf-8?B?K0ppeVRIbjBzRis4SCtzSVUwd2tqWDB6WXM1NEFLQlJvVVVqdHJkd2txVWhX?=
 =?utf-8?B?LytRZXhxejcwZVd6d3Y1eXVQWUx6VzJVRm8yajNKNHVFYzdLK2Jack9HaC81?=
 =?utf-8?B?QmlDVEM1Qk1VNnprT1VzZ2QyL3cvUFo5SG5KWmNTYWRyVDdqdkphd3RBN1l3?=
 =?utf-8?B?ajl3ZFZXTGJ0T2F0VjNjS1hVU0kybkFEL2U0Vm5DdTd4WVRGRWQvNlpyL0VW?=
 =?utf-8?B?TEJNNmszdnB2alZDUmxITFN5SC9Ra2hhMkI2dnNMakJtd041RWhyaXZ0WGUz?=
 =?utf-8?B?SllpRDRkQW1QbXQ3Y2lHZm5RcHhZVHFJVUxBZStvNmlJcDdkWkhpVDZxK2lB?=
 =?utf-8?B?N1JjZnE0OHVhQ1BndjdLSDJnUFFGdDhCR2VmV2huUHEwSW1EQTEwS3I1T2lQ?=
 =?utf-8?B?VnRBcXlCYWJWd2l0U1ZqV3VQc3JyRmFtR2RwZkpVbm9ybWtWVVZEUGYxTFVy?=
 =?utf-8?B?ZUthQUphVnEyTDBPdDRKL3ZiZzg5ZFVudGx5bHFmQld5SEsyK2M4TzNEMHYw?=
 =?utf-8?B?QzVveWM2cnRoTTBOZzB0akpQb1kxMkx3V0tPRHpodmMvU0VLU29Gb2x5aEs5?=
 =?utf-8?B?a2hXTE9hV0I1R1VXVGJMM3FocXgyL3U4a2Y5Qit5V3RNbFJqcUtBWUlrbUtJ?=
 =?utf-8?B?MmRsb09aVFBZY01NaEtyZkljNU1jOUVkYjJOMGx3WjBsa3A1cEIxNkZGKzB2?=
 =?utf-8?B?NFo3eWRoL1hEb0tGYW9qdTNVTHNoK1hwalJUcFpucDVrNjBhMi9JRUhGS0JX?=
 =?utf-8?B?R1k4R2hscGEzWFJoNEUxVmFuQ1pKcklncUtYaHNlNUZaM3FEVTZacUZZK3lP?=
 =?utf-8?Q?JP9uydDB0vhkNLg3z/Cd+40=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EDF489C3C5AC504D97428EB7FD0B1F7B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 177e6ed8-f55c-4b98-eafe-08dc6369866c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 07:46:45.7635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +WkL4Po1iZRDB9hhH/Ts10mFUq+brOVJYkJflTKSs0prl3pLw1gWfOPK6EQCfDQr5p/v03lJeaQ9QesM6TFoObQkGmlRuycoOUrnIvLeGXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5149
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

T24gVHVlLCAyMDI0LTA0LTIzIGF0IDEwOjQwICswMzAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gRnJpLCAyMDI0LTA0LTE5IGF0IDIwOjE5ICswMzAwLCBWaWxsZSBTeXJqw6Rs
w6Qgd3JvdGU6DQo+ID4gT24gRnJpLCBBcHIgMDUsIDIwMjQgYXQgMDI6MzU6MzNQTSArMDMwMCwg
Vmlub2QgR292aW5kYXBpbGxhaSB3cm90ZToNCj4gPiA+IFRoZSBjdXJyZW50IGludGVsX2J3X2F0
b21pY19jaGVjayBkbyBub3QgY2hlY2sgdGhlIHBvc3NiaWxpdHkNCj4gPiA+IG9mIGEgc2FndiBj
b25maWd1cmF0aW9uIGNoYW5nZSBhZnRlciB0aGUgaHcgc3RhdGUgcmVhZG91dC4NCj4gPiA+IEhl
bmNlIGNhbm5vdCB1cGRhdGUgdGhlIHNhZ3YgY29uZmlndXJhdGlvbiB1bnRpbCBzb21lIG90aGVy
DQo+ID4gPiByZWxldmFudCBjaGFuZ2VzIGxpa2UgZGF0YSByYXRlcywgbnVtYmVyIG9mIHBsYW5l
cyBldGMuIGhhcHBlbi4NCj4gPiA+IEludHJvZHVjZSBhIGZsYWcgdG8gZm9yY2UgcWd2IGNoZWNr
IGluIHN1Y2ggY2FzZXMuDQo+ID4gDQo+ID4gVGhlIGNvcnJlY3QgZml4IHdvdWxkIGJlIHRvIG1h
a2Ugc3VyZSB0aGUgcmVhZG91dCBhY3R1YWxseQ0KPiA+IHdvcmtzLCBhbmQgdGh1cyB0aGUgc29m
dHdhcmUgc3RhdGUgcmVmbGVjdHMgdGhlIHN0YXRlIG9mDQo+ID4gdGhlIGhhcmRhcmUgYWNjdXJh
dGVseS4NCj4gDQo+IE9rYXkhIERvZXMgdGhhdCBtZWFuLCB3ZSBuZWVkIHRvIHVwZGF0ZSB0aGUg
cWd2IHBvaW50cyBhbmQgdXBkYXRlIHRvIHBjb2RlIHJpZ2h0IGFmdGVyIHRoZSBIVw0KPiByZWFk
b3V0Pw0KPiANCj4gUmlnaHQgbm93LCBvbiBid19pbml0IHdlIGZvcmNlIGRpc2FibGUgc2Fndiwg
c28gdGhhdCB3ZSBoYXZlIGEga25vd24gc2FndiBzdGF0ZS4gVGhlbiBvbg0KPiDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKCkgd2UgdXBkYXRlIHRoZSBid19z
dGF0ZSBwYXJhbWV0ZXJzLiBTQUdWIGlzIHN0aWxsDQo+IGRpc2FibGVkLiBTbyBvbg0KPiBuZXh0
bW9kZXNldGlmdGhlYndfc3RhdGVwYXJhbWV0ZXJzYXJlc2FtZWFzdGhlb2xkbSx0aGVud2V3aWxs
bm90YmVjYWxjdWxhdGluZ3RoZVFHVnBvaW50cy5JdGhpbmtzdQ0KPiBjaGFzY2VuYXJpb2hhcHBl
bnNvbmx5b25jZWFmdGVydGhlYm9vdC5Tb3RoYXRzdGhlcmVhc29uSWFkZGVkdGhpc2ZsYWd0b2Zv
cmNlY2FsY3VsYXRlUUdWLg0KDQpSZXNlbmRpbmcgdGhlIHByZXZpb3VzIHJlcGx5IGFzIHNvbWVo
b3cgdGhlIGZvcm1hdCBnb3QgbWVzc2VkIHVwIQ0KDQpPa2F5ISBEb2VzIHRoYXQgbWVhbiwgd2Ug
bmVlZCB0byB1cGRhdGUgdGhlIHFndiBwb2ludHMgYW5kIHVwZGF0ZSB0byBwY29kZSByaWdodCBh
ZnRlciB0aGUgSFcNCnJlYWRvdXQ/DQoNClJpZ2h0IG5vdywgb24gYndfaW5pdCB3ZSBmb3JjZSBk
aXNhYmxlIHNhZ3YsIHNvIHRoYXQgd2UgaGF2ZSBhIGtub3duIHNhZ3Ygc3RhdGUuIFRoZW4gb24N
CmludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZSB3ZSB1cGRhdGUgdGhlIGJ3X3N0YXRlIHBh
cmFtZXRlcnMuIFNBR1YgaXMgc3RpbGwgZGlzYWJsZWQuIFNvIG9uDQpuZXh0IG1vZGVzZXQgaWYg
dGhlIGJ3X3N0YXRlIHBhcmFtZXRlcnMgYXJlIHNhbWUgYXMgdGhlIG9sZCwgdGhlbiB3ZSB3aWxs
IG5vdCBiZSBjYWxjdWxhdGluZyB0aGUgUUdWDQpwb2ludHMuIEkgdGhpbmsgc3VjaCBhIHNjZW5h
cmlvIGhhcHBlbnMgb25seSBvbmNlIGFmdGVyIHRoZSBib290LiBTbyB0aGF0cyB0aGUgcmVhc29u
IEkgYWRkZWQgdGhpcw0KZmxhZyB0byBmb3JjZSBjYWxjdWxhdGUgUUdWLg0KDQpCUg0KVmlub2QN
Cg0KPiANCj4gDQo+IEJSDQo+IFZpbm9kDQo+IA0KPiA+IA0KPiA+ID4gDQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCA4ICsrKysrKy0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuaCB8IDYgKysrKysrDQo+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gaW5kZXggNmZiMjI4YTFhMjhmLi4xYjE5MGJlNzQ1
YTAgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
Yw0KPiA+ID4gQEAgLTc1NSw2ICs3NTUsNyBAQCB2b2lkIGludGVsX2J3X2NydGNfdXBkYXRlKHN0
cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGludGVsX2J3X2NydGNfZGF0YV9yYXRlKGNydGNfc3RhdGUpOw0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGJ3X3N0YXRlLT5udW1fYWN0aXZlX3BsYW5lc1tjcnRjLT5waXBlXSA9
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2J3X2NydGNfbnVt
X2FjdGl2ZV9wbGFuZXMoY3J0Y19zdGF0ZSk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBid19zdGF0
ZS0+Zm9yY2VfY2hlY2tfcWd2ID0gdHJ1ZTsNCj4gPiA+IMKgDQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgInBpcGUgJWMgZGF0YSByYXRlICV1IG51bSBhY3Rp
dmUgcGxhbmVzICV1XG4iLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcGlwZV9uYW1lKGNydGMtPnBpcGUpLA0KPiA+ID4gQEAgLTEzMzksOCArMTM0MCw5IEBA
IGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgbmV3X2J3X3N0YXRlID0gaW50ZWxfYXRvbWljX2dl
dF9uZXdfYndfc3RhdGUoc3RhdGUpOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAobmV3X2J3X3N0YXRlICYmDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfY2Fu
X2VuYWJsZV9zYWd2KGk5MTUsIG9sZF9id19zdGF0ZSkgIT0NCj4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3YoaTkxNSwgbmV3X2J3X3N0YXRlKSkNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAoaW50ZWxfY2FuX2VuYWJsZV9zYWd2KGk5MTUsIG9sZF9i
d19zdGF0ZSkgIT0NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2Nhbl9lbmFi
bGVfc2FndihpOTE1LCBuZXdfYndfc3RhdGUpIHx8DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBuZXdfYndfc3RhdGUtPmZvcmNlX2NoZWNrX3FndikpDQo+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNoYW5nZWQgPSB0cnVlOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqAvKg0KPiA+ID4gQEAgLTEzNTQsNiArMTM1Niw4IEBAIGludCBpbnRlbF9id19h
dG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHJldCkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIHJldDsNCj4gPiA+IMKgDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBuZXdfYndfc3Rh
dGUtPmZvcmNlX2NoZWNrX3FndiA9IGZhbHNlOw0KPiA+ID4gKw0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiAwOw0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuaA0KPiA+ID4gaW5kZXggZmExZTkyNGVjOTYxLi4xNjE4MTNj
Y2E0NzMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuaA0KPiA+ID4gQEAgLTQ3LDYgKzQ3LDEyIEBAIHN0cnVjdCBpbnRlbF9id19zdGF0ZSB7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTE2IHFndl9w
b2ludHNfbWFzazsNCj4gPiA+IMKgDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgICogRmxhZyB0byBmb3JjZSB0aGUgUUdWIGNvbXBhcmlzb24gaW4gYXRvbWlj
IGNoZWNrIHJpZ2h0IGFmdGVyIHRoZQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICogaHcgc3RhdGUg
cmVhZG91dA0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBi
b29sIGZvcmNlX2NoZWNrX3FndjsNCj4gPiA+ICsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQg
bWluX2NkY2xrW0k5MTVfTUFYX1BJUEVTXTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25l
ZCBpbnQgZGF0YV9yYXRlW0k5MTVfTUFYX1BJUEVTXTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1
OCBudW1fYWN0aXZlX3BsYW5lc1tJOTE1X01BWF9QSVBFU107DQo+ID4gPiAtLSANCj4gPiA+IDIu
MzQuMQ0KPiA+IA0KPiANCg0K

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BB997B78B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 07:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FC710E52C;
	Wed, 18 Sep 2024 05:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n1d6YcrH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F313F10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 05:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726638827; x=1758174827;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XX/o8QvhookJmlfhk3bNdxNVKW8FCR2QUcjbQ62oz+Q=;
 b=n1d6YcrHK8KSY7EFa+Hdeqg47xldTxbDHna07dKH5DNDfQXxLQQtbw7Z
 Q+0Y9GtlxK3EsySyv4ni5a+L71A5phkmugDy21gQ1FVOSxj81buk2H+xQ
 LQAFKU+ASGV0K10MHzcGtJiCgwKScvT3vFPCYFmQW0mPSE5FsObUlhij2
 3eemH6Tww/JXSgHrh6Yk+AQIgl46ML/WXhX1fRFok4NVM/tPqbOBla7zD
 +SgHzOzlRdVud8y4ZXTP0fchm9tc49he33R2RQIwDo34b+LcbMsoI+zq9
 SNtRKb6tz+hwbDH/UsPNuvV0OnuVeCIXX5d3dfomW61KpE7b0KAwVMqXk A==;
X-CSE-ConnectionGUID: Nro6z4cSQVOHgcxPB1sxPg==
X-CSE-MsgGUID: t3ifRHpYRQ6RCIrgRv5EqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="29317694"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="29317694"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 22:53:47 -0700
X-CSE-ConnectionGUID: 20r0XqRMQYS3r2n/LydrbA==
X-CSE-MsgGUID: KcobFuouTAihna2xx9QpjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="100113512"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 22:53:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 22:53:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 22:53:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 22:53:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 22:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c23jB/+y/DVwLYwhYVLbhdKvIAbh2Y2fOh2dUN+AJeiDtPz2o6gfU7FVr9SLu2aIBLRUhART4sTUoPh/DUV7lg1cNvfhkmxKfISkNCTLqFM3TZ353lQbhbvDVhD5QLLXh3McPsIoKoaajyulcs+w+EEnB7teouuokGDwgUmxFilfZsGZsOLDvxJ6jzOZDqfW5KbACiR6adxZHiR2Q17F5qS44pekkLCnXmcykZS228bA53rV8ZfTOH3yqKnCyNCip4MJEOLtdm2U+gmmFVGupFsMZ/K9suoP1tab2/rTqg56ZBtl5npl3Qks1x04+6vJ2yvXmEb30Y9nL77ASOTHIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XX/o8QvhookJmlfhk3bNdxNVKW8FCR2QUcjbQ62oz+Q=;
 b=vmey0a8nWMk+s7tZHKtO336RGEkci34t+NclolW48734hI0kWi7YffdsmNWbCk8mN0JK2pO9OplQhPm5eIg9G8sqMh5UfMpPN1OW0fV72yUsK9baNcxOVL8CURTtaBKDm+YWGX12NA6hrDDtsTGJodDNt4fhMJU8LWDQkQO0B9ewrsYYtTDQe0XMbLCk6X6+0hbShCb2rd3guiUlvGyIpIAOVaRdPBXfnRhaQMB9ouDSjCg9o/4qewgGQ8nQAoG7PfE0ml4Vx4fJaWkx/SeXYmKss8Mppbog9hiWrtbJF00Cf3A7WVoeI2S2F3WQG39RtvNIMWa+P2rNiSbXqRkrgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB8594.namprd11.prod.outlook.com (2603:10b6:806:3b1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Wed, 18 Sep
 2024 05:53:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 05:53:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add block_dc6_needed variable
 into intel_crtc
Thread-Topic: [PATCH v3 1/2] drm/i915/display: Add block_dc6_needed variable
 into intel_crtc
Thread-Index: AQHbCMvyu6dopWC+3EKLSakVvmMThbJcRLSAgADH6AA=
Date: Wed, 18 Sep 2024 05:53:37 +0000
Message-ID: <fd987d0add600e0d8b4475a06e580c024e7abf42.camel@intel.com>
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
 <20240917063600.3086259-2-jouni.hogander@intel.com>
 <ZunDL2o0m8E8kt1R@intel.com>
In-Reply-To: <ZunDL2o0m8E8kt1R@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB8594:EE_
x-ms-office365-filtering-correlation-id: b376c3e6-5caa-4b19-3f59-08dcd7a63db4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?LzNEZURNUGNtRFFva2NFZlRpUkxQWnpWcmduSWZ0N3NwVEpMbGpIVlRib0Uv?=
 =?utf-8?B?QVJXc25OZlpVZDh3SldCdk1qdFE3VDM2SkdPY0tUeXJONnU3bzRPQzlVZXFt?=
 =?utf-8?B?QjE2T09TSVk0MWp4WEgzMVBVRG8wb3RLcmhDUEh6NjdYL3pPckRkVFFVQXc3?=
 =?utf-8?B?MjI5Smh1bDJQdzk4ZHdzcXpwWUVzcXZmN2JVZGRHN1Jvd1RRc01yRVlxUTBt?=
 =?utf-8?B?WHJEQjRDbEd6SGRvZFlydFZrZzR3cW5qRVlCcWw1M2NySG9MZ0ZwaHJVbWhl?=
 =?utf-8?B?ZGRXVUkyTkg0cjZJWEpmbXRZR2VQdVRqMmY2cUphejFLZGp3TWdFWElmWWJO?=
 =?utf-8?B?QjRZTWJkV1dzNXVkNWtObjFGai9haVlNdWc0ZUpPd25sd0RDZnhXVVgyQkc5?=
 =?utf-8?B?a2hqNHdzQ2FjMmRNTDJhOWZHYjArQ3JNL0dzUkdNRDRsTWVMS2VzRGw3Mmsr?=
 =?utf-8?B?U2FjMEdSbzBrY0VYYXEyc1ZZQStQL3MvdDJqRFM0YTBFQ2EzanpLODBrdjNu?=
 =?utf-8?B?cTBSVWVzMFdxRmx3am9WOGRER3pKNGFpK1dTYkVNY3ArOUswWFB6VmtaSXYr?=
 =?utf-8?B?dVdKTWdLSFN2aFdVV0RqbWMzSHMrMDJEeEQvYzN5cEl4WFBNMDZ4cWVqRGdz?=
 =?utf-8?B?NWorQmhZL0JwVWRBbHl5aGt4MWRabjBKdG1RbWFCYlExbk5JZzFGMUVyZzlE?=
 =?utf-8?B?WGlHUWhYUllKdzRVcVEzeTFEL0trOEwyUHNRcFFpMG5LaEtSdm1PVFpHQ0lM?=
 =?utf-8?B?bjBTRDlaK3RRV29kTUpSelVWL0M5SXlFbkNGUkxLVHltUks5dnRydmdwb2VL?=
 =?utf-8?B?N0J5UFQ2N3E4SHdKM0FBaXlPL1ZhbHN6YTVBMGZPanNBem95NWFjek9QbzBz?=
 =?utf-8?B?azdXMDNzcXlkMDR6MkFVYmlTNVgrSjRYSVpOcVBvZjJzRVdobkRXcmdYZ2ZS?=
 =?utf-8?B?QTQwVnRUZVNqV1RLYzlaMzNka00zQ2oyV0ZGb1VEcUdOaWFOK1ptaERxTDJJ?=
 =?utf-8?B?ZU5YM1c3c1dUSmVnc1hjb1RLRjhIQUFtVGdMdFNWVExLWHBKWmYraGhFaFhF?=
 =?utf-8?B?aVJ0dVdzTHU5Y1hkZGdMMDdoN3E3SHVwNGEweWhSZzArQ1BGVHUwK3Bheit4?=
 =?utf-8?B?ZURYbWpEUGZOTmttN2RkenVoVjJaRGhVU0FKcHlZb0VCcmh2a2pJT213ak13?=
 =?utf-8?B?VTN0Vmt0OFV0UG9iblBaUGtza2NpUGFZMFBsT29ER1VDU0IxS0lYSGJZS01v?=
 =?utf-8?B?Z0xMQzhPWktzcVNqTFZjU2w0NXdIdVVpQU5mbHU5ZjJKekNPODZrbVVtTHRP?=
 =?utf-8?B?dFBYMmk4N25sYjZjZXI3YUllVVh3b0ZaZStLWUJTS3VrM0hUbFAyZHh4OXBU?=
 =?utf-8?B?UGk2ZlJOaHV1RTEvL3gxcnAzUVBRdEVrY1E3Q09LV2paUlJQcTBzVnJPMnVa?=
 =?utf-8?B?TGtzWW1oYldKbVFWdngwZjRqU0xMNER3WWQzS2lBTFBMczFJREV1QjRuM2Qw?=
 =?utf-8?B?eVBHaEE4QU0wcXQ5Z0hGMDdpTzJ6Ti9CR012cC9sY0hIbzBFT1BEZGJpUlVu?=
 =?utf-8?B?MS8vYThtZWFpNk9YWFFZRkE2WkU1cFdsMGlTMWQ1SDNMNGpGcnRXTTNPaXh5?=
 =?utf-8?B?QmhidGdoK2NZckg4UlViTm1UY0RkZmZBeWJDU2I3S0ZwUGgwSGhnWCtkSVdz?=
 =?utf-8?B?bjBjTmhENWhaMDlqckNTSFR2OUNITnJPRHFPQlB1aTVJNm9EUmFOWFRpd1kz?=
 =?utf-8?B?QVU5VTF6ck9VaEZ3N1UwamRsRE5KNmNISVZNbVNzYnFFVUxMQS81MkhCU1ZU?=
 =?utf-8?B?NktvUUJ5NDdPcnVIU1Vwb3FKdGZWVHJJV21YbGRrSjNtRHBLN1RNL1JUMksr?=
 =?utf-8?B?MmpxQW05TU5qL2VZQTM1T2FkVms5VldIdnRpa1YrZStqK1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1FkVDZQRUZJUEdWcVU3MWNOSVEzRC9LV1o4STRud1ZrRWRoMnA3M3hjMktw?=
 =?utf-8?B?RDVlaGJkMVZ6c0kyR1VjbUVhSTROeGR6cGljcTFhejZXdWxFQjNDRDVXZlZM?=
 =?utf-8?B?RFd2TUZnTlVFdXZNOXBqcHpwN0R1TVlDMzljMHFqWlB3Y0E1TnZYMGNMeXI3?=
 =?utf-8?B?bk9UMW02c3h0TFpLZlpWYWVrVi9CWWlXWVAva2V6WnNpREpheUF5VzVsMWNQ?=
 =?utf-8?B?QkU1QjJCOWh3RVU4cjJJaFk5Qno5NkJQREwxUGo2Y29YSDJNVU5CQzVBZkl0?=
 =?utf-8?B?dXo5dVVPM3cxOXpoQVYvbitJMUVyNEQ1YkE1eTlqNjlBM05NZzk1amJsOGRD?=
 =?utf-8?B?Q05rQ1BZSWt6WmY2d2JzZXp3VzZzRU11TU50Wm5uTVhYNG5oOU5YQlZxcXgz?=
 =?utf-8?B?MFU3UnpoVWs2SkNMcCtxNVJwcGZXbnZZaUFKUUNrUllqQStzcnBJWlNDVG1R?=
 =?utf-8?B?eWlka05Cdm5ERFZMSS8rYkdBclhESDdyc0VBcW5BQ1FidEZwWFBkc2JBRm0v?=
 =?utf-8?B?b1A5MVBMYlVNVWp3T0R1S1ZuNS93Mi9HNjdlcG1PMkpGZnVxOG1TQjNleG82?=
 =?utf-8?B?Z3hWdldrT0R6aFJrdE1UajV4RW45Q2g5aFNHUXBrYnY5VG83UXJoL1hFRU9u?=
 =?utf-8?B?Zkc5V0NaSEd0cFhqUXhjSXcxRXBxRkpHN2laUVYwOSt1UHd5UUJsOWpRM3pq?=
 =?utf-8?B?Y1pRM3ExRXp4YmVuMWJ5VjVFU3lUd0ZGdUdMaDJwZUVZNHVnVHFoZ1ZKUGpU?=
 =?utf-8?B?NGpkUEc4OS9pUFViVlZleVE2ZlR0Yzhpd1lHdjdvbWpZRGp1cmUyRndxaytw?=
 =?utf-8?B?c2s1U0hEZnMxSHpoZ2phcitzSmZRSVdGYWdyQURVaWgzcElueXUzd1FUOWdt?=
 =?utf-8?B?aGYxTkhZNTV6MmlSTERGUi9OdlZxYVRldXIzWVd3aytJeFkvZHFMZFpnK05X?=
 =?utf-8?B?SkxNVXVJUDZxd04vWENPdU5wNFpRdENqa2tRZkdBOFlnZmUwUGxjRTlWc05E?=
 =?utf-8?B?SXdzWVhJdUgrT1hkcTdueUxnZEloL0lWNzRQUnNPNkQxWGMxMnozVUJITmVY?=
 =?utf-8?B?VTdkVUg4TnBQTnF3KzB4WEx3N2I4anRhT2VKVmFFcWZBK1JmcUh2clp6Q1U4?=
 =?utf-8?B?R0VFR0J0SnRmZDNZekRsR0hjRUxMZ1RGTm15bENYMGhGOStyc2pCK0RBZmVi?=
 =?utf-8?B?eHV1QVV1REpVcWZnVUFHYlFMcmh1dnNjOFRTcC8rdlMrV1ZPZFpoSG9DU0Zt?=
 =?utf-8?B?YVU5Z096Zml6VUFsUFhta2hJbnRNNG4wQmZwZHdtcndkTTdhb3pGZHBzQVN4?=
 =?utf-8?B?NmxvR1dlQUZpWCs5ZFNTN1lzcm1ELytBaERVdUh3Ykg1S082a2U4ZkhGSmV5?=
 =?utf-8?B?a2lydUFCVS9qU1NFVk5IWU9xVFZpY2FmUDJZd3dmSnlaTEhvYWk3c0V2eno1?=
 =?utf-8?B?Uk5VNU1CWE92Y1p3allhQUdvMitQa2VPYURrQjdZR0Fvejk5SmRvWENoZFVl?=
 =?utf-8?B?eU5XYWV4d01QcjRjQ1U4MWlvVWlpOUxyZVBZdHJWaGFoQVI0T3lybkMvT2RE?=
 =?utf-8?B?bnIrd3FMcUpIRDJLNXVmRXcrNDhFZzA4eGFIWWhEUmt6dVVNeFhJYW5hZ2dG?=
 =?utf-8?B?RHZVOS9uZ29oUHBnWVkwOG5sRnNyUjcwd2NzSGI1dDc0WFhNdzZPR2dYa0Yz?=
 =?utf-8?B?T0lqWUdtVFg5YjlPMkZGbERtaGpvRzZrWFRGUFJXOVhiQ1VFSmpuTXYxQ1hr?=
 =?utf-8?B?RlBjNDhydTE1dmxQcjAwRW9NTlptb2pMSGpLbWhQS0xpK3NIelZqVzlVR1JW?=
 =?utf-8?B?NjJuWG0xaEFNU0lQcFZ4R2MrQUJEbXhJSERtdzhURUs2Mm9mZHRPRnQ1OEJO?=
 =?utf-8?B?U0h3RnZ2enMwUnI2NlFMbjNzK3Uzcjh2bFBjd0duc1BhSkR3RW9NRVUvU1B3?=
 =?utf-8?B?N3ZKWUd6WkZNU2FFUUZ0NzdQczMrcmZDTE1NTW90MDN0d1ByVHJJb29WVHBJ?=
 =?utf-8?B?RDlsS1lGSHNHcjNZb214Z21IYUgvdDdySEZJT2tQYVRGUGtIS2pMclovTTFu?=
 =?utf-8?B?NzdYTmpnYVNUclZXaXIwUlgzMUlpSmd0K3JZVWlMSzFMSDFyS21uZElZWjhR?=
 =?utf-8?B?N2ZBdGp3Q0IvaFZub0d4SGV0TWFDNUlkSzZsa1AveDF3cnVmZWs4dG9WRWp0?=
 =?utf-8?B?Mmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <17C9C6377E61B5489EC69D94D2AD35B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b376c3e6-5caa-4b19-3f59-08dcd7a63db4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 05:53:37.9389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aoHMKQ/x6Jd0t+BBxWJ44e2eUPstTX8uyc/QZOQHZzXAsBLigPGgw2NGQx3KtRF3M4supSonLE1x+UakizwigtoaxcswL14Zwj2bg9GC4jY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8594
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

T24gVHVlLCAyMDI0LTA5LTE3IGF0IDIwOjU4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgU2VwIDE3LCAyMDI0IGF0IDA5OjM1OjU5QU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBuZWVkIHRvIGJsb2NrIERDNiBlbnRyeSBpbiBjYXNlIG9mIFBh
bmVsIFJlcGxheSBhcyBlbmFibGluZyBWQkkNCj4gPiBkb2Vzbid0DQo+ID4gcHJldmVudCBEQzYg
aW4gY2FzZSBvZiBQYW5lbCBSZXBsYXkuIFRoaXMgY2F1c2VzIHByb2JsZW1zIGlmIHVzZXItDQo+
ID4gc3BhY2UgaXMNCj4gPiBwb2xsaW5nIGZvciB2YmxhbmsgZXZlbnRzLiBGb3IgdGhpcyBwdXJw
b3NlIGFkZCBuZXcNCj4gPiBibG9ja19kYzZfbmVlZGVkDQo+ID4gdmFyaWFibGUgaW50byBpbnRl
bF9jcnRjLiBDaGVjayBpZiBlRFAgUGFuZWwgUmVwbGF5IGlzIHBvc3NpYmxlIGFuZA0KPiA+IHNl
dCB0aGUNCj4gPiB2YXJpYWJsZSBhY2NvcmRpbmdseS4NCj4gPiANCj4gPiB2MzogY2hlY2sgdGhh
dCBlbmNvZGVyIGlzIGRwDQo+ID4gdjI6IHNldC9jbGVhciBibG9ja19kYzZfbmVlZGVkIGluIGlu
dGVsX2NydGNfdmJsYW5rX29uL29mZg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmPCoMKgwqDCoMKgwqAgfCAxNw0KPiA+
ICsrKysrKysrKysrKysrKysrDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5owqAgfMKgIDcgKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqDCoMKgIHzCoCAxICsNCj4gPiDCoDMgZmls
ZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiBpbmRleCBhZWQzODUzOTUyYmU4Li4z
NGE2MGI1YjFlNTViIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjLmMNCj4gPiBAQCAtMjQsNiArMjQsNyBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfaXJxLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90cmFjZS5oIg0K
PiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gPiArI2luY2x1ZGUgImlu
dGVsX2RwLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHJycy5oIg0KPiA+IMKgI2luY2x1ZGUg
ImludGVsX2RzaS5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2ZpZm9fdW5kZXJydW4uaCINCj4g
PiBAQCAtMTIzLDYgKzEyNCwyMCBAQCB1MzIgaW50ZWxfY3J0Y19tYXhfdmJsYW5rX2NvdW50KGNv
bnN0IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqB2b2lk
IGludGVsX2NydGNfdmJsYW5rX29uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4g
KmNydGNfc3RhdGUpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLQ0KPiA+ID51YXBpLmNydGMpOw0K
PiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiA+ICsN
Cj4gPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoY3J0Yy0+YmFzZS5k
ZXYsICZjcnRjLT5iYXNlLA0KPiA+IGVuY29kZXIpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gPiArDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfZW5jb2Rlcl9pc19kcChlbmNvZGVy
KSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNv
bnRpbnVlOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
ZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJg0KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ0FOX1BBTkVMX1JFUExBWShpbnRl
bF9kcCkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjcnRjLT5ibG9ja19kYzZfbmVlZGVkID0gdHJ1ZTsNCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+
IA0KPiBUaGlzIGNvdWxkIGp1c3QgYSBmdW5jdGlvbiBwcm92aWRlZCBieSBpbnRlbF9wc3IuYyBz
byB0aGF0DQo+IHdlIGRvbid0IGhhdmUgdG8gdG8gc2VlIGFueSBvZiB0aGUgZGV0YWlscy4NCj4g
DQo+IElzIHRoZXJlIHNvbWUgcmVhc29uIHRoaXMgaXNuJ3Qgc2ltcGx5IGxvb2tpbmcgYXQNCj4g
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheT8NCg0KSXMgdGhlcmUgaW50ZWxfY3J0Y192Ymxh
bmtfb2ZmL29uIGN5Y2xlIGFsd2F5cyB3aGVuIGRvaW5nIGZ1bGwgbW9kZQ0Kc2V0PyBJZiB0aGF0
IGlzIHRoZSBjYXNlLCB0aGVuIEkgdGhpbmsgd2UgY2FuIHJlbHkgb24gY3J0Y19zdGF0ZS0NCj5o
YXNfcGFuZWxfcmVwbGF5OiBjaGFuZ2VzIGluIFBhbmVsIFJlcGxheSBtb2RlIGFsd2F5cyBtZWFu
IGZ1bGwgbW9kZQ0Kc2V0IGN1cnJlbnRseS4gSG93IGFib3V0IGZhc3QgbW9kZSBzZXQ/IERvIHdl
IGhhdmUgdmJsYW5rIG9mZi9vbiBjeWNsZQ0KdGhlcmU/DQoNCkxhdGVyIGlmIHdlIG1vdmUgaW50
byBhY3RpdmF0aW5nL2RlLWFjdGl2YXRpbmcgUGFuZWwgUmVwbGF5IHdpdGhvdXQNCmZ1bGwgbW9k
ZSBzZXQgSSB0aGluayB3ZSBuZWVkIHRvIGRvIHNvbWV0aGluZyBlbHNlLiBFLmcuIHJlZmVyZW5j
ZQ0KY291bnQgSSBoYWQgaW4gcHJldmlvdXMgdmVyc2lvbiB3YXMgdHJ5aW5nIHRvIGFkZHJlc3Mg
dGhpcy4gVG8gbXkNCm9waW5pb24gcmVseWluZyBvbiBDQU5fUEFORUxfUkVQTEFZIGNvdWxkIGJl
IGdvb2QgZW5vdWdoLiBUaGF0IHdvdWxkDQpjb3ZlciBhbGwgY2FzZXMgd2hlcmUgYmxvY2tpbmcg
aXMgbmVlZGVkLiBEcmF3YmFjayBpcyB0aGF0IHdlIGFyZQ0KdW5uZWNlc3NhcmlseSBibG9ja2lu
ZyBpdCBvbiBjZXJ0YWluIGNhc2VzLiBCdXQgdGhhdCBzaG91bGRuJ3QgbWF0dGVyDQphcyBpbiB0
aGVzZSBjYXNlcyBEQzYgaXMgYmxvY2tlZCBhbnl3YXlzIGJ5IHRoZSBIVy4gT25lIGV4YW1wbGUg
aXMNCnBhbmVsIHN1cHBvcnRpbmcgUGFuZWwgUmVwbGF5LCBidXQgb25seSBQU1IyIGlzIGFsbG93
ZWQgYW5kIFZCSSBpcw0KZW5hYmxlZC4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCg0KPiANCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBhc3NlcnRfdmJs
YW5rX2Rpc2FibGVkKCZjcnRjLT5iYXNlKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2NydGNf
c2V0X21heF92YmxhbmtfY291bnQoJmNydGMtPmJhc2UsDQo+ID4gQEAgLTE1MCw2ICsxNjUsOCBA
QCB2b2lkIGludGVsX2NydGNfdmJsYW5rX29mZihjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9jcnRj
X3ZibGFua19vZmYoJmNydGMtPmJhc2UpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBhc3NlcnRfdmJs
YW5rX2Rpc2FibGVkKCZjcnRjLT5iYXNlKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgY3J0
Yy0+YmxvY2tfZGM2X25lZWRlZCA9IGZhbHNlOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqaW50ZWxfY3J0Y19zdGF0ZV9hbGxvYyhzdHJ1Y3QgaW50ZWxf
Y3J0Yw0KPiA+ICpjcnRjKQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCAwMDBhYjM3M2M4ODc5Li5k
ZjBjM2ViNzUwODA5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBAQCAtMTQxMyw2ICsxNDEzLDEzIEBA
IHN0cnVjdCBpbnRlbF9jcnRjIHsNCj4gPiDCoCNpZmRlZiBDT05GSUdfREVCVUdfRlMNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BpcGVfY3JjIHBpcGVfY3JjOw0KPiA+IMKgI2Vu
ZGlmDQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoC8qDQo+ID4gK8KgwqDCoMKgwqDCoMKgICog
V2UgbmVlZCB0byBibG9jayBEQzYgZW50cnkgaW4gY2FzZSBvZiBQYW5lbCBSZXBsYXkgYXMNCj4g
PiBlbmFibGluZyBWQkkgZG9lc24ndA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHByZXZlbnQgREM2
IGluIGNhc2Ugb2YgUGFuZWwgUmVwbGF5LiBUaGlzIGNhdXNlcw0KPiA+IHByb2JsZW1zIGlmIHVz
ZXItc3BhY2UgaXMNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBwb2xsaW5nIGZvciB2YmxhbmsgZXZl
bnRzLg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiANCj4gV2Ugc2hvdWxkIHBvaW50IG91dCB0
aGUgZmFjdCB0aGF0IHBhbmVsIHJlcGxheSB0dXJucyB0aGUNCj4gbGluayBvZmYgb25seSB3aGls
ZSBpbiBEQyBzdGF0ZXMuIE90aGVyd2lzZSBJJ20gc3VyZSB0bw0KPiBnZXQgY29uZnVzZWQgYnkg
dGhpcyBhZ2FpbiBpbiB0aGUgZnV0dXJlLg0KPiANCj4gPiArwqDCoMKgwqDCoMKgwqB1OCBibG9j
a19kYzZfbmVlZGVkOw0KPiANCj4gVGhhdCBzb3VuZHMgYSBiaXQgdG9vIGdlbmVyaWMgcGVyaGFw
cy4gYmxvY2tfZGNfZm9yX3ZibGFuayBvcg0KPiBzb21ldGhpbmc/DQoNCk9rLCBJIHdpbGwgY2hh
bmdlIHRoZXNlLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gwqB9Ow0KPiA+
IMKgDQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmUgew0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNGYyOWFjMzJmZjg1Yi4uOTU3ZjQ3
MGIwOGZlOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IEBAIC0zNSw2ICszNSw3IEBADQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfY3Vyc29y
X3JlZ3MuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kZGkuaCINCj4gPiDCoCNpbmNsdWRlICJp
bnRlbF9kZS5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9pcnEuaCINCj4gPiDCoCNp
bmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHAu
aCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gPiAtLSANCj4gPiAyLjM0LjEN
Cj4gDQoNCg==

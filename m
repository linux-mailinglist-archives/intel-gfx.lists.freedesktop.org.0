Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19C3B2ED5F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 07:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B663E10E87A;
	Thu, 21 Aug 2025 05:01:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HwRrs0/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 059A110E876;
 Thu, 21 Aug 2025 05:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755752514; x=1787288514;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5z6Cmfq28RQUBN0mIRFera/psVzCqAE5QCQQmVgfa1E=;
 b=HwRrs0/F8kUppQBq4AHYiCPaIb7lKPO3faEGkKliJqGlxCHWHWnYBjQc
 oV2hBEfAow4ROr9wshIDtaVVFVy1sE4imWHX8hVdRYw7/QEG/UpZyHXvr
 WrujnSj4yxxfofxZftmapXeXeCGVkQUE7LvO0fh3IANiJItn0OzQ1UjUw
 bFFZ44C7rvlCR6MXb3sGxhs/A8+HWyB95XtjeeMLZznkdPaMUPXFG2fFN
 HqyCu87q7TKoKQz7KSOStuj7sRvSHOWTRqrPc/bw1mT/hw7wdt/vzBxbv
 cuYCJdq4OfEwk9Tnvynrx6g3X1w/Yvbdvj8G4PEjI2CPMlKNC61cU6cFc w==;
X-CSE-ConnectionGUID: rwJqTgzOQOqBUqNu4dQhNg==
X-CSE-MsgGUID: //wSMIgpT9GXrUiGD87obQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68734845"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="68734845"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 22:01:54 -0700
X-CSE-ConnectionGUID: HtTMPYF1Q6OA3oERxH1/7g==
X-CSE-MsgGUID: UCSFrVxoQEaOPI6Xmieq8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="199299880"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 22:01:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 22:01:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 22:01:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 22:01:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KyCHPcATv/9E4VevXEGBIoBVPmh2wF65s8IhBnAp/z8qANSeCMGp0IEaDUuXTdAuqPp2wTzBVDbz07e6dbLkd/6Pu6K0R/f7sSSA7wDoWBk2NmLikUnYWgb2D3dclItrUfHpoi9h0fa/9l4b/reE3iONcOvmK4h1qMQ2SDr0SgqHErbQPUVxuRSmXpgu5l9gDnXvAttoTZzoqbo3TTexB2AvwJU4f7p2rmLc2CPtSgDv98zGYbwzYROr7XyX59mPX7tHeuCQPsTFMwSIO8YmqNkbUEbC7Fnbo6vBVKJliAmnzrErZOUml4V/l6A64xOgV5nKIB5RCf0duKQVGtFlCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5z6Cmfq28RQUBN0mIRFera/psVzCqAE5QCQQmVgfa1E=;
 b=WhVSuKz/z4/hh3sUjdYAmAlrhDZyl3DOXJ5uq1UIyGIAk9yXZwISW55HXHz7py2AWF5+WH3cs+Xf5T2rIkBn36YDwT4u6xTDj1I8OSTqgwd0TsQMQmczpx5DQiSYO6FYOPt1EpcrJAOQYAjCPi1T0N3HoR94qjQ+drTvQguaUSyvJJjqBiU/NtXrCL5VtBSnU/3ETt01Zpbu1hPIeP5iVhJQ2M0UQx4n7JDIQaDMmhX0niG28eMWlsBUYzZw5uvfyv2adZnEChhYWShvT/uQct+uKj6JOdQMznbY6MHcz1Vkdn61zCW7GTNKVaSgfL11cyLZ9xehEIA6b7416tCr8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV2PR11MB5975.namprd11.prod.outlook.com (2603:10b6:408:17d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.24; Thu, 21 Aug 2025 05:01:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9031.024; Thu, 21 Aug 2025
 05:01:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value on
 PSR dpcd init
Thread-Topic: [PATCH 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value on
 PSR dpcd init
Thread-Index: AQHcEbhW13e3F65Es0mh0hTd0EaHHrRrbWcAgAEgh4A=
Date: Thu, 21 Aug 2025 05:01:44 +0000
Message-ID: <1649c6fae744c235054684755037a216b7896a71.camel@intel.com>
References: <20250820095334.3849458-1-jouni.hogander@intel.com>
 <e028c20865cabbbf2e6f0123c78e95e882b95832@intel.com>
In-Reply-To: <e028c20865cabbbf2e6f0123c78e95e882b95832@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV2PR11MB5975:EE_
x-ms-office365-filtering-correlation-id: 0e68d7c9-9a93-4612-cb68-08dde06fd344
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZTNQVXVjWjk3UnhXbnQ1cjBrZkpsdEhERVAwZWI2RWlROENGNll6TXBhUm9O?=
 =?utf-8?B?TXd1YlM2aGxUYWpMdTdCdHk2aUg2djFQME4rcWF4S2lvaDVnS1lKc0NSUVc3?=
 =?utf-8?B?d3dSbzdhaWtLYlVBNEdTc2s2MTR0NlREbFRoZlNVUE13WUYzUWJhMUY2VEJj?=
 =?utf-8?B?Y0Z5NjAyd1E2aTRpTi9xSFl3NkhqUW1JWFdWUXVWZExTbUlHNFUxN3pRei9T?=
 =?utf-8?B?cFVkdWJBRFRGMVN3ODA0Rk14TjhEMmt6SWpSVVdzWHovRFhCNnA0Z09sTS9m?=
 =?utf-8?B?RVd6cHBMSGxhc0N0RldHc3BmbWo3YzhPei82VGVLWk5pZnhJYklCVHYwcHpz?=
 =?utf-8?B?T0dwK0d4RVlKSStCcGRPNExnMkxKU3M3VFRUMHZ0dXBXSmZ5RWtQVW9NLzFT?=
 =?utf-8?B?VDVRQytCZXZYYzhxMVkxZjdyNjNrV1dNSFRmdTBVYmNrMGx6ZDQ1ZHlnLytZ?=
 =?utf-8?B?THlmWTZLekdpcmk4U3oyaTRLVTY2a0FHRlV5Rm1PK1BKWWs1TFhxZnJmSXl4?=
 =?utf-8?B?WVlPM3hjYVgxNGFQczU0U3I3N3VCclZEallVd2ozWk03eVdDSzhPZXU1ZU1j?=
 =?utf-8?B?dGUzOXhGdzU3OVluS3JURk8zazBkUVZqMDVBMGgvWWNoTEdobmh2TXozS0hp?=
 =?utf-8?B?b04xanFZK1Jtb2hpQkszREpoRlY2NFpLclJqNnYxU1dncTNhNTNaR3V6dVNZ?=
 =?utf-8?B?azlhQXlvYnlzOXJzdzhWQ3lic2hPTkh6a0UzNHJaZlpYZUt1cndvNHFUeXBU?=
 =?utf-8?B?azVMMUtmanlXQjVWS1h0VncvWjlUZFlIM3FxWTZsQk9Ya3hBUi9hMHRXTlBV?=
 =?utf-8?B?U0hiSUhZVzd1MU5WT1ZTOWlRNkZhVHh4LzFYeW9wWXk3V28relg2QS9lb3Ez?=
 =?utf-8?B?NDZTVHFsNmMwdlVtK05UYWtWLzhqZm9XUXlZYnlGRG5NWTgwTXJrZ20xZG81?=
 =?utf-8?B?TnpnQnYrY1JZejYvQ1dvRndUdTBjN3NwYkQ2NkxjSURrMnFTTWl4b1ZEQ0I1?=
 =?utf-8?B?b3dOb0JISXVlczRBUnhlYldpeHVvZDhhWFJEODlOY0xVRFppZDFxM01VYnpi?=
 =?utf-8?B?Wk4xSjRRNUd5UDRZclFYak52TDhwSk9kbmhzUklENDlpR0hzWkJ4UGI1eHdH?=
 =?utf-8?B?SDdXaEYyWWduTHBUbXNEWVFpaE9TYjJEejVXMGNPQ2lzaUNuK0txeUlpNFdK?=
 =?utf-8?B?eGUwSkIzdFFjUEo2TmRMam4zenNOY1lJR1F5dVl2Q1VNRjdYR3puSk80c3Nq?=
 =?utf-8?B?Z1psSlFJSjNhWElxN3BoOVlOamhaRUhzKzh1UWIzdDV6b3lkSWQ3SHVNYktZ?=
 =?utf-8?B?V3pjcHpZZFZKdFNXa3dFajh3VWdOZ1RDZ25ZWE5lV3liMUFhampCaVBualUy?=
 =?utf-8?B?V1Z4U1lka2RBcjRxRFVFekVIZkg1VVpKYWcySDk3aCtXWWNYMzBOa3N2R29H?=
 =?utf-8?B?emV2eGdUa0Q5UEs5NmtBOHpxVnh4QnBsV3I3cEZjOXZ2Z1RCYWUzdG1rQXJy?=
 =?utf-8?B?WlJET3JMQ1hqNEVxRjViVHVTLzZXdHJST0Z6M1BiNldjaVlqdTV4RTdhTGt4?=
 =?utf-8?B?NDV3RFR4NFFtRGZMbHcwY0lFMTB5T0hleHhxMlorSXplak5MTUYzQWRXSnBy?=
 =?utf-8?B?RWVDdW0wdCs1TVJYZDlmWTNmYmI3SWhwZGVUYWtUOXU1eitER2lFaDMxWW1u?=
 =?utf-8?B?NHBicnFZL2F5UW5XZEMvZlhxR01NK0M3OW9UWFVjYVU5ZnFPU29sNDVoZisw?=
 =?utf-8?B?RXZJOEpLTmN2eFhFNXRvSVJyNkw0YVlMS0t6WFRqK1JMbnhkYlVHYUY0SkhG?=
 =?utf-8?B?RTM1MnFnTGNBaGowblIrcFhEWjU4aGdKMkY5QkcwTWJVczI4VHdhVEFYZ2p6?=
 =?utf-8?B?VVl5dHlmQTR1b1lLL0tzSHZCWEllVDRveExvYncxcVBIZVBLVHJmdGpnUmFW?=
 =?utf-8?B?dkpRcmtPL2xpeDU4b0FDMk9lMXBCd3NOZmVTaUNOQkdzT3ZJdXpoU0E5eGxU?=
 =?utf-8?B?Z1VJWVQyWU9BPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0lKcXdjMWtHR2RVc0dzL3dzTWxNanYvYVV3RFpLK3AyQkZ1R1kvRmI5Q0pM?=
 =?utf-8?B?UHpPWHEwd3hIVHJGUFg1TjlPaTdXZjRTSUtYRzROMFp5Um9VbW05L1ArSDU2?=
 =?utf-8?B?eG4wY1BMUHVIYWxoQ1N0aC9ORTMwVWJXRDNYUG0wM3hmYmx4R3UvMGlBbzFl?=
 =?utf-8?B?S3YvWXZNZjA4eXJPY2o4Zy9wLzc3aGYyOW9sdEZCOGFTQkNKQUNSSkVueEJn?=
 =?utf-8?B?emkxOXVVanZSUnBYdC9Rd0tNVHM5TFNOSmNJSzY4cWJzeVIxYy9WTjZGd21k?=
 =?utf-8?B?K0RZd1p0WE42VmJMUGJEZjI0Uzg4RTNneVZHODB6cTRnVHZuWXozazNLSUVn?=
 =?utf-8?B?bXlLRWtMMDZmU2JTS25aMHBSSzRhbXEvaytaYkNYd2pLd0FOM2RsSEJEcTdn?=
 =?utf-8?B?eC9ESEptU05BVHFHU1c4ZUt6SGh6UlNtOENNWk1YbHRxUGdNcnNVZ2tCR001?=
 =?utf-8?B?MTdtbkdKUXdxd3daaDRUOEo3YUI4NVJxak9SRVJLWnU0SStBN3lmQnIycGRJ?=
 =?utf-8?B?QUxBMWFPVUNLenVRSTBxVUVMUlpZZDZEclQwZC9jYWtuT3RtdzgzdUFkN20v?=
 =?utf-8?B?cUVlQW5PckcwckRKUkNsMmVrY3NtVTBhV2RlcENiTXR5c1gxV2pyNTZ2cHdz?=
 =?utf-8?B?dWZBcEk2eTJzYWNaQVJQSDllTFlra3hDUkhtbTNLc2tqU0xDWXpiWVcyU2I5?=
 =?utf-8?B?UnUvVmhrcUdjTVAvSVg1VXoza3VoNEdzU25zVmFTd29nbzZxL2piUHQ2SXE0?=
 =?utf-8?B?ajlzUGcrYnJpSmFvWGhsNHVSUGtqejQzanhQTEJDdTJsVXdxMVV3a0hLRU42?=
 =?utf-8?B?eHo1TlNPNW9GVmNsdWJXSVV0WlJDQzFKUnZHZHB6a2FBT3l0UmM1bElZekNx?=
 =?utf-8?B?eWZReElOZERoV3c3U2t5eTJqdHBqL1BmQkhtNEt3all0cEtmRWRyTDZQMzhD?=
 =?utf-8?B?bExDVTV0cGZ1YTZSSjZUWFpEZlhsSXVTTDVNZTRFd2ZCR2l2QUdhUnZmWjVm?=
 =?utf-8?B?SHgxaFN6aWhNdjZVbkFIdkt6Z0hhLzB6a3FuU3FXQ1FZT2hJUXU1bG9PRFFY?=
 =?utf-8?B?VVIrVFA1RjkwaXJWSkZuOWVHcjRsQlI2bU56SFdFU1NYQTVncTE0MmxzR09H?=
 =?utf-8?B?c2NnL3paZmpZbzd2UlFGSjBaMlhwSEhoRnkwcDRldTFIaHBjQ0pPVXNJUnM2?=
 =?utf-8?B?czZYd29ZYjN0YkE1T09kYnEzQktyckpJNFVuNGhxNzU4M2JMbkxBT01idEVx?=
 =?utf-8?B?OStFdkN6OGVQWE1KSzN2RFJydW1ObU41SUxlcUxVTmhNZXc0dGFxTUpzQnRv?=
 =?utf-8?B?N3NkS2dyNDdhUXVsZWdpSGQ1VEwyMGpWa1Nta1dNQVdtczNVaHMvRW0vZW56?=
 =?utf-8?B?OXo2UDRERm9FbGJ1bVcyaTJuZG9CcGZ5RVpPMk8wUWpJZHlXbVVYcDBlRWJj?=
 =?utf-8?B?ZDYvUnBJM3pRQ0tHMlBhdzQxQTg0Y3psbmJsbGRraDVhclhudVhFNmszN1VR?=
 =?utf-8?B?bUxsMGVBelAxeEY3UmEraGR0ZXBONE80TGFGOG03S0wvRmNyeWV6MHlaRXFi?=
 =?utf-8?B?QkFWQlBCL2NmTXdwMnR1OVNCSnlLSkwxS2UyODNFVWw0TENWWDhBTlF5ZHhw?=
 =?utf-8?B?VEJySlh3UXhmOVg3eEVMRnJmbXNYSXRJMlVhUXVXeTlINlBHaFluKzRFTGRw?=
 =?utf-8?B?Snk5ak4zQmpGTnhiZW0yMS8xR2VlMUcyWFE4WmIwYWlRaUVQSUxUc2srUkpm?=
 =?utf-8?B?STIvczl6cnpMQ0Y4STdMMGN0ME4vbnMxMjRwRTU4bW5jMXhlRU83aVp6eDdE?=
 =?utf-8?B?blYwc1d5elZBWlhJMnpRdlA2VlU5cmVJcmYrMVg3S0N3UklvVllPUXE4RGN5?=
 =?utf-8?B?WmdjWUF3WXdjSGxudkhwNklKUDlNdHJLeWloTlVLVENJbEMvb3FleDZDK3Bi?=
 =?utf-8?B?dkNjRUtwcVZWaVBEU0ZiR1hpUk5sVG1PTE95WVV1N3h1L1B6cHVCNm81bklH?=
 =?utf-8?B?MDBZVXBnZlVRTEE0MTZjR0M0YWdYZHAweEdsVmg2b2FFTjA3WElSNzVkcVJ0?=
 =?utf-8?B?SUZXVERTNWNKeFVyTmZJZE5CMER6UEZMRDFKRVhrZ2hZaUFMakVENkh1ZkVR?=
 =?utf-8?B?aEJTUHhnZFFtUG84UWg2UTRueGdiQmdZQ0x3RHo0RkN3R0RMeGdhazZzRm1I?=
 =?utf-8?B?UGtHRzU1RFlBclJCQk1GZDNmc3pGd1RyNm1OOGczTmN1L1BWd1kzTEQydzEz?=
 =?utf-8?B?T0h1a3l2V01kaVdKQmt5RzZvaGtnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <70621FF98F69EA4DA7948795D2996515@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e68d7c9-9a93-4612-cb68-08dde06fd344
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 05:01:44.6766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8v1uiEDFht4Cft65fVFYj8Kx9ctfsY55Ls0ZAI1DgDQUKgYrgGruLSJSHMiKSGXCMRXVpnyi+sdpDt5hqTMYdPii1QiZrZzn2IG7cTLBriQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5975
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

T24gV2VkLCAyMDI1LTA4LTIwIGF0IDE0OjQ5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAyMCBBdWcgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEN1cnJlbnRseSB3ZSBhcmUgaWdub3Jpb25nIGRybV9kcF9kcGNk
X3JlYWQgcmV0dXJuIHZhbHVlcyB3aGVuDQo+ID4gcmVhZGluZyBQU1INCj4gPiBhbmQgUGFuZWwg
UmVwbGF5IGNhcGFiaWxpdHkgRFBDRCByZWdpc3Rlci4gUmV3b3JrIGludGVsX3Bzcl9kcGNkIGEN
Cj4gPiBiaXQgdG8NCj4gPiB0YWtlIGNhcmUgb2YgY2hlY2tpbmcgdGhlIHJldHVybiB2YWx1ZS4N
Cj4gDQo+IFBsZWFzZSBzd2l0Y2ggdG8gZHJtX2RwX2RwY2RfcmVhZF9kYXRhKCkgd2hpbGUgYXQg
aXQgdG8gYmUgYWJsZSB0bw0KPiBqdXN0DQo+IGNoZWNrIGZvciByZXQgPCAwLg0KDQpUaGFuayB5
b3UgSmFuaSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIFBsZWFzZSBjaGVjayB0aGUgbmV3IHZlcnNp
b24gSQ0KanVzdCBzZW50Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IEJSLA0K
PiBKYW5pLg0KPiANCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzMiArKysrKysrKysrKysrKysrLS0tLQ0KPiA+IC0t
LS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGluZGV4IDYwOWRmNTNmMWVmMS4uNjhlYjAyMTI3ZjQ3IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTU4MCw2ICs1ODAs
MTYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdA0KPiA+
IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHN0YXRpYyB2b2lkIF9wYW5lbF9yZXBsYXlfaW5p
dF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHAp
Ow0KPiA+ICsJaW50IHJldDsNCj4gPiArDQo+ID4gKwlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkKCZp
bnRlbF9kcC0+YXV4LA0KPiA+IERQX1BBTkVMX1JFUExBWV9DQVBfU1VQUE9SVCwNCj4gPiArCQkJ
wqDCoMKgwqDCoMKgICZpbnRlbF9kcC0+cHJfZHBjZCwNCj4gPiBzaXplb2YoaW50ZWxfZHAtPnBy
X2RwY2QpKTsNCj4gPiArCWlmIChyZXQgIT0gc2l6ZW9mKGludGVsX2RwLT5wcl9kcGNkKSkNCj4g
PiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaWYgKCEoaW50ZWxfZHAtDQo+ID4gPnByX2RwY2Rb
SU5URUxfUFJfRFBDRF9JTkRFWChEUF9QQU5FTF9SRVBMQVlfQ0FQX1NVUFBPUlQpXSAmDQo+ID4g
KwnCoMKgwqDCoMKgIERQX1BBTkVMX1JFUExBWV9TVVBQT1JUKSkNCj4gPiArCQlyZXR1cm47DQo+
ID4gwqANCj4gPiDCoAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiA+IMKgCQlp
ZiAoIWludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKQ0KPiA+IHsN
Cj4gPiBAQCAtNjExLDYgKzYyMSwxNSBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRf
ZHBjZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqBzdGF0aWMgdm9pZCBf
cHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKg
CXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGlu
dGVsX2RwKTsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJcmV0ID0gZHJtX2RwX2RwY2Rf
cmVhZCgmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX1NVUFBPUlQsDQo+ID4gaW50ZWxfZHAtPnBzcl9k
cGNkLA0KPiA+ICsJCQnCoMKgwqDCoMKgwqAgc2l6ZW9mKGludGVsX2RwLT5wc3JfZHBjZCkpOw0K
PiA+ICsJaWYgKHJldCAhPSBzaXplb2YoaW50ZWxfZHAtPnBzcl9kcGNkKSkNCj4gPiArCQlyZXR1
cm47DQo+ID4gKw0KPiA+ICsJaWYgKCFpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ID4gKwkJcmV0
dXJuOw0KPiA+IMKgDQo+ID4gwqAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiZURQIHBhbmVs
IHN1cHBvcnRzIFBTUiB2ZXJzaW9uDQo+ID4gJXhcbiIsDQo+ID4gwqAJCcKgwqDCoCBpbnRlbF9k
cC0+cHNyX2RwY2RbMF0pOw0KPiA+IEBAIC02NTYsMTggKzY3NSw5IEBAIHN0YXRpYyB2b2lkIF9w
c3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoA0KPiA+
IMKgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gwqB7DQo+ID4gLQlkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfU1VQ
UE9SVCwgaW50ZWxfZHAtDQo+ID4gPnBzcl9kcGNkLA0KPiA+IC0JCQkgc2l6ZW9mKGludGVsX2Rw
LT5wc3JfZHBjZCkpOw0KPiA+IC0NCj4gPiAtCWRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5h
dXgsDQo+ID4gRFBfUEFORUxfUkVQTEFZX0NBUF9TVVBQT1JULA0KPiA+IC0JCQkgJmludGVsX2Rw
LT5wcl9kcGNkLCBzaXplb2YoaW50ZWxfZHAtDQo+ID4gPnByX2RwY2QpKTsNCj4gPiAtDQo+ID4g
LQlpZiAoaW50ZWxfZHAtDQo+ID4gPnByX2RwY2RbSU5URUxfUFJfRFBDRF9JTkRFWChEUF9QQU5F
TF9SRVBMQVlfQ0FQX1NVUFBPUlQpXSAmDQo+ID4gLQnCoMKgwqAgRFBfUEFORUxfUkVQTEFZX1NV
UFBPUlQpDQo+ID4gLQkJX3BhbmVsX3JlcGxheV9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiA+ICsJ
X3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiA+IMKgDQo+ID4gLQlpZiAoaW50ZWxfZHAtPnBz
cl9kcGNkWzBdKQ0KPiA+IC0JCV9wc3JfaW5pdF9kcGNkKGludGVsX2RwKTsNCj4gPiArCV9wYW5l
bF9yZXBsYXlfaW5pdF9kcGNkKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgCWlmIChpbnRlbF9k
cC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0IHx8DQo+ID4gwqAJwqDCoMKgIGludGVsX2RwLT5wc3Iu
c2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4gDQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E2AACFC9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A9110E357;
	Tue,  6 May 2025 21:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGWTRcM7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A756110E356;
 Tue,  6 May 2025 21:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567659; x=1778103659;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=bSH6Zcz3Ignbp48P+EQ72n2tFqjVKuKz3WH098nqa1Q=;
 b=gGWTRcM7NeWJJd6XVgQ9VDZr+HV5bCyaPuLRq9Gqtf+4onlGkyaYmiHE
 FqDIXNJ75itaVLu55R1cCD/mkrUu15Sb3cugWJFPNuLtKXdG2KJxeyUot
 1yg9lYnGyIsWqDqq0X8eOUSMbGDo7ecF7KgMSQNOfJ1GPVvjVBv0HKvs4
 8VDGcftIInLyz7pYpF3PXy2SfzvFiilW56syd+e0gu+4WGH/k3Ep7bRrb
 juahauw6HjThmU6MZXIzWPWGnGF52jpNaCBr+fqttrp+U63c0lYmg/aMd
 EdrURnrt2d/ubMGrYNppEoOSjZhQVReJD1VDm+tGvH0juXwNFI3eDOE5T A==;
X-CSE-ConnectionGUID: xNH+dlTLSa2WkWe8e/xdZw==
X-CSE-MsgGUID: VOBmtaN6R+i/lrB51ZUxVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="65673708"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="65673708"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:58 -0700
X-CSE-ConnectionGUID: dZzB2kHrTHiicJPHZZqPZw==
X-CSE-MsgGUID: 83ysyOXKRlqW4D+OAK5JHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="166786801"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:40:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:40:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:40:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:40:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UOlxuoaiony3xO2989TR0jT6Wbvzu3wDEghvtV0Jfw3Qn7ALg79Dju9pfXCJ01AQySTCQOAiRMgq0fqND/Ky4EjwtIeLe8KVkvOkkk+26leJMynLp+UyEGTYFnERg88ZNRAYtePhUldLERylFU950IjzMzbfGEZUHp44dlPM2S/EL1sFak1MTUqLMquWMPxURroEAL6FaPSsyr0T/J7IHtZbyB3Weo6JlKpqA4XlHCKwdkXk1bM3dH39tGgrbbyHZzDW7GxNrs81IwbolPzarZz1imIb/ppMmfvTGbRGz792hIEByKAe2rV4RwNLS3zoYSlYZbKrPXiv48F6Y2AENQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ha4DFo0BDunEWCzdp7rZK8OuRkEXanSjeOLm7Fv4BP0=;
 b=sjuQKVC1deXnmrIsGiy9OvKXyVz/13AFIZUZ/o8GstYO16IgyT6GNL6kDVpVbTVJ7+/Z5mwn3Yapleap2QQhQZRcLn3b/roCDMaUqkZKbfXuvGSWxg7yeyLsqYk6p/hNgtDGgL275c02pTrnktmbOnKELwPHJsUhkwhCVMbRYg4dxitxus6ycLPFl5KFUR6Z2iw8atZeep2Eqt81ujFCjWXI5iqEkOkNrF/eCBuLUwFWTnaFVYGP8cJwlZhdDKS2xd2J6xH/E/OhiRm4p0SWdsQsAY0qZwUgZb/bNDpoSlVRPAUhR3XxmyxFod9F/4/wkW4AGn2bMNtYJaYaR9/a2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:40:50 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:40:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9511e368c5244aaa04cc45f46e2425737acd29fb.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <9511e368c5244aaa04cc45f46e2425737acd29fb.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 6/8] drm/i915/irq: make i915_enable_asle_pipestat() static
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:40:45 -0300
Message-ID: <174656764543.1401.15515199707961217929@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0187.namprd03.prod.outlook.com
 (2603:10b6:303:b8::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f1e5c68-807d-41a6-b7c4-08dd8ce6ab1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXVJNmw1aVdmWG9IS2dUYURoS1preFRiZFJqRlp4N1JvM0J0UWFRQkpuK3Qy?=
 =?utf-8?B?eXY3SHhrbGJxcHk5S016VVBuSXVwOVFCOCsxa1Joa1ZTNjBYR1gxdENJaHdu?=
 =?utf-8?B?TFNwNU9DMTRCaVRpK25YV2VabVJnZHNERC9yL0pCZGtiKzkzdmkrcVRhR3RO?=
 =?utf-8?B?ZW9ndS8wcDNWcEEvbjVQMHpzanUwaGlzbjVOVlNNbE9mWE5aV2gxWVVDQmkr?=
 =?utf-8?B?enJsWm1pWklVc2VNTFVHd2ZMbVhkWXh2T2RjRlZCSXFBQzB0bHBMQklFV254?=
 =?utf-8?B?bkV1N2gyd3UxdVFiQlNwWWxOay8vRjBvL1BIeXJQZFZkeHN1V2ZBOU03WGl6?=
 =?utf-8?B?Qit2TWc0b0RvR2FocWhlSXRjZ1ZMdzdRZXZYVllJUFhuTElxSkFESjVUWEdY?=
 =?utf-8?B?K0YzMnJhS1F2MUV6L0J5TmVTelFvVi9jWU1LV2FtNkN4NVdsc0ZvOU1JQnpW?=
 =?utf-8?B?b1AvcHlXY0hTb2dKMDFCOUVlTmg4SCtxczhQWm12QjBmL0lDbWxMdmZmZmM1?=
 =?utf-8?B?SlJ4OTF4Zzd2OURHTnUzNzQ5ZHFFblJuRmpVWStkZklobVp2bHo0bE5hZTZR?=
 =?utf-8?B?YjlVbTlmU3FCbytRNXdpWmU4Vldxc3pValVjbno1b1JZdU8yWkZEYzlGOTRL?=
 =?utf-8?B?ZDVpSzBFa1ZFV2o2V3hqSVhZcTNoSlVRVFJ3dXQvT0pRMTZkYTFkNEg3aGJD?=
 =?utf-8?B?RmxHZmpQM0hGaUcrWkhVSDk3YmRPdGl2R04yMjdzYkxiQ1NjdXdIVDgreTRv?=
 =?utf-8?B?anlUTTFrcEZ6VzBzUTdTZ3ExY2tMK2JHWkZ2UTZTVXZGU3FwUTRWYXE1c0Vx?=
 =?utf-8?B?VTZhWndUaWdHaWxFSkoraE9XeTJQcXVoVFVzY2lJQjM5WktRdlhkb2NsQXdZ?=
 =?utf-8?B?YytVZFMxanBKaG8wa3ZtRUJ2Z3FPZmJvenF5R2lkdk1LUklWUHJXSzZVa3Fv?=
 =?utf-8?B?Y0JKZXRndm9WQkhVNmdPZHBhTnZVSGFjTkRtRTNQa2VQVmRLOW9Db2dIbDRk?=
 =?utf-8?B?dzAxTUNXTTJQMXlLa3dBRE1idEd0VkhyNmtJV2t5bHluSThEaXluQzQ2clNS?=
 =?utf-8?B?ZndZcVNHNjZCblpWZ2tlOTFvcUtqUGtWbFptOEU2U0tRYVJUejBya0gyYUJo?=
 =?utf-8?B?M0JQRVQ3eXhmVVRkMHlwMWJnWmFOaVJKNlA0N0ZhaWlWSUo3VEQvSFNGV3lj?=
 =?utf-8?B?ZzdhT0VZZkNkS3lBeURvWFR6LzBqN3BNV1o5U2FBR2ZhTU8xMTd5ZGxJQlg0?=
 =?utf-8?B?R3VHMi9OTWdaWmFTU3d0dkNDeWxRdi9VMU5OdDQzU1RYRWQ3MVEybTNxM3Q1?=
 =?utf-8?B?UTlyMHBQUG1HZHRrREkyVUVHTEo2dCs0U1d3VHFoK1c1YWZrcUtSV21CVkY2?=
 =?utf-8?B?N1h5dTFtdk1jVzZ0Q3g0VmpLRWVzQ0pRbllkNFNUOTNOMVhlbEZ1TGd2MFhC?=
 =?utf-8?B?enhkNG52RXJRenZlK3lycGt4ZmIzRkN6bldHWUhSR3E1N1A4OHkvZHFtZFY1?=
 =?utf-8?B?TE5maVMrYzVBWGVzYjEwNk16aXFoNUM5dUdQWXRrWVZzVng5aXdjdjE5S0lJ?=
 =?utf-8?B?ZVVpL2VMQXh0TGJvbFY2WkZRQ2JkRXc4UDFSSlVKNjhud25RS2xweGRJdEdD?=
 =?utf-8?B?ZnlDNm1pMlZZZTVGU1Q3Uk1kejFMVXBXUmdGbnd2UUJvK2w1UVpaV3dqTWVs?=
 =?utf-8?B?NGpldWVXaHdXTGNSKzVUcWZROTVMR0RxRkhBT0Q4OFRSWGw3STJXcGh1c1BG?=
 =?utf-8?B?eU01amFqOXl5SzVaTWdvaUxiQVg4V1lxdUlETjV3YzIyZXZaaE11OU9vRTdq?=
 =?utf-8?B?NWh2c3ArNnhTUUdzRjFhMmQwbDk4NnQ0b01vaDFWR2wxQjlTRERhV1ZSeVNQ?=
 =?utf-8?B?Q3YyVUpNVGJseW5tWW9VRm9FMjRLYXpGTDFrUVlSVE1KcGxQL0FqTTF3SjFw?=
 =?utf-8?Q?yVpr5efPLhc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTAxSDUvWVpzdlZzRDNtSEpZTzlEV2tnRUltUkRNSmVsWXBTQlByRWZGMTdO?=
 =?utf-8?B?V2kvRk8xenkybExiNzBFZWZrT01mSDBGZS9ZQjgzUVQrb2lucnVCMVdHSlFo?=
 =?utf-8?B?Y21seHB1ZTBzUCtyMm96Ym8wQkw1NjFleTdUY3F4MitNU3NKODVwTnBkb0t2?=
 =?utf-8?B?a0VnYkdrVTNQMmVTSXQ1Tm1JOXF2WWJhR3FLYWJBV2lUaXAzNUF1SzVib2lC?=
 =?utf-8?B?czZlblU4NzBlWGxZeC94OGRHMG9TNUpNTkVOTkVKZk5KL21uOUhqNDJhdnRE?=
 =?utf-8?B?U09CMW53N3ltSnA1RVV3Y0JuaE9IUG9udmxLQ044bVhrd1YyU1dlaWJCL3dX?=
 =?utf-8?B?ZHViUTJuRlRDWkZ5T0xONkVoT014ZHpVVXo3Um82YjNFUlJQRzFnK3dXaUNj?=
 =?utf-8?B?OXZqUzJkNWRianVnS1ZrNlh6WUR0dy94bTR4YysxTUNVZzVGU3A4c3lvMTVk?=
 =?utf-8?B?VXkvRUxIRzI2Q0FWVnYrZ3d1TWRsb253d2hWVE5EWWgrcmxQQ3ljL01hWHgw?=
 =?utf-8?B?ZlUzMFhLRCtmTlpZTThmYUtzVlpwWVRENUpxN2xEc3p4Q0N2U1F4MnNzbVhz?=
 =?utf-8?B?UzNicE1WZm8rTkRWK3UxYnRTZURSQnZyeVE4cG5jK29KSzgvMEc5K0ZQUHZY?=
 =?utf-8?B?SEJOQ0J1dnV2TnVnd0VzbDYrdTg2MVVjSEduMkZBaE1ld1l4ZXZqZkNGdHZo?=
 =?utf-8?B?THRyK2ZYTXYvMUxESXVBb0psUGpDREVMWkhtZ1F6Sys2NlZsb3k4YWF5ZkEw?=
 =?utf-8?B?eEJoeDFEOHFqdHRFR1FBQ044cGZtOXFiVWRrVEtCdTB3aG13V200Q0o0ZFBk?=
 =?utf-8?B?Uk45YnZWK0gzTXR2RGFSbHhMelNUNTdPOXZOU3IrUTlVMVkxOVJvQTVyamVE?=
 =?utf-8?B?YTJkWXowT1FhL3BWbGVseGJTbThwVk9QdHk2ajA2Ym9yaHVlWG5samkzaDNX?=
 =?utf-8?B?RFJ2ZnB6MXhFQXA2TnkyZXUxYW9LNFpLaUxPcitVRnpPRVg3aGZNVmloMmFR?=
 =?utf-8?B?MEFKNmtNYnEvSTVZNnhPZmhJcXlsdWo4MWV2VnppdS85Z0YrL2VWcTBkamZC?=
 =?utf-8?B?L0luakdEOG9DQmVNSDN1aGROUWY5QVpXbzNrM0RnWURXYURSeUFHeDNhNC94?=
 =?utf-8?B?WTljZ3dEd3Y5TTZxMjNiWHVwM0ptaERydEM5Z0l5MWpKUW1MYTB6dzFzOGgz?=
 =?utf-8?B?dEZCKzZSZmkwK1l3dlViS2hxSUNiZWllUngzYk5mcC9IZkwyMzhHYTZnbXRl?=
 =?utf-8?B?K1NURjlEcms3RTlxMnU3ZjV2UU9icnFkNytEL3VGakVQeUN6S016a2o0M3lz?=
 =?utf-8?B?ZHA3RHVUb1NCK3IwS05NZTB6WStSQlJkUnFCOHl1NjdSQm5BQ3lPNmVTcnJk?=
 =?utf-8?B?N1ZHU1pxd2VmM3JvK2s2NjcydUJLL0hLQ0w0ZzJhc3NuNmxwTHRMQm9zd3VL?=
 =?utf-8?B?ZnJTUk9YNCsrazhDbUJuYkFodG5KNU5nbE5rdE50UmQraFB0TGVXenY0UDBY?=
 =?utf-8?B?ZUxEUzJzSU5iWnBGK3RJMkRKNzNPbjVCSEFURUptQUFHVWI1UENMdStNRlI3?=
 =?utf-8?B?UUdYWk55b3U4clVGa1VqY1lpUnNWbVQ2NTZSOGJOZ2ZFQTJPd0JvUlIzR1dR?=
 =?utf-8?B?V0hGQnJJczRBd3dmMTZiN1VBUi82VDIvLzNCZWxpTlMvcDNYTkFOTFZBWXVT?=
 =?utf-8?B?RHBOOE1RdGJRYUFyYzVmaHRLVXBJVFQ2RGNubjV0eCtWTFplVmNZRGxubjYv?=
 =?utf-8?B?SEd0K1dZUXhURE1XekIwaFAzUTRldVJvanRjcEU5cGxpUVN4NHlTVjcvYUlz?=
 =?utf-8?B?d1ZWZ2MrblhKbDM0Z0tLV1ZtcXdCZ3FTZkZJV0RpR1k4R3hucFZLWG43cEhp?=
 =?utf-8?B?ajZOczFGRGtuYlBDRFpFK25ReUc3aHFmRk5EbEVyNzRTdmptS0YwT1JPaFha?=
 =?utf-8?B?WVNjQ2NnRG12TVBXdVVwWERLNHBzTHM4Uk5JdjJKZ0tVNFFWRzBYYldQcHpi?=
 =?utf-8?B?dG0vRkxWYnREQ1hlZE9JZVdGeitZYUlpdzNSdG0yaFk0L25Zc2lycTFkVy84?=
 =?utf-8?B?RnFCbjdFOHdzaitIcktrQUhWMVBrWDkxRkl2MzFqVHFmWHFvUEMrajhYYTdT?=
 =?utf-8?B?REtNV1ZxZjdTamJpZU03NFYweThydmRzUzVIaEIxM3lCd3VQd2ZUYi9vY24z?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1e5c68-807d-41a6-b7c4-08dd8ce6ab1f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:40:49.8955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GK/4Ko1gocq8PNzOCa/I1PPMagr5TLphcZWGWWqNXqe8IrnVv8Q+87QZNceTJZZOdvK7O3eR5VA65PA/KRN0Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:48-03:00)
>With all users of i915_enable_asle_pipestat() inside
>intel_display_irq.c, we can make the function static.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++-----
> drivers/gpu/drm/i915/display/intel_display_irq.h | 1 -
> 2 files changed, 2 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 989b78339aa4..0d72964694ce 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -377,11 +377,8 @@ static bool i915_has_legacy_blc_interrupt(struct inte=
l_display *display)
>         return IS_DISPLAY_VER(display, 3, 4) && display->platform.mobile;
> }
>=20
>-/**
>- * i915_enable_asle_pipestat - enable ASLE pipestat for OpRegion
>- * @display: display device
>- */
>-void i915_enable_asle_pipestat(struct intel_display *display)
>+/* enable ASLE pipestat for OpRegion */
>+static void i915_enable_asle_pipestat(struct intel_display *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gp=
u/drm/i915/display/intel_display_irq.h
>index 4c0ed476e568..c66db3851da4 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>@@ -72,7 +72,6 @@ void dg1_de_irq_postinstall(struct intel_display *displa=
y);
> u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pi=
pe);
> void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, =
u32 status_mask);
> void i915_disable_pipestat(struct intel_display *display, enum pipe pipe,=
 u32 status_mask);
>-void i915_enable_asle_pipestat(struct intel_display *display);
>=20
> void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pi=
pe_stats[I915_MAX_PIPES]);
>=20
>--=20
>2.39.5
>

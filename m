Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2348E8C8283
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 10:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A67D8825B;
	Fri, 17 May 2024 08:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jyc5z8YZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BC68825B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 08:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715933867; x=1747469867;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PgNgIISnbCprcW+R5Yv5rPrEnIigBJJFrd4YPGD993o=;
 b=jyc5z8YZPd7J5DCMHe0RrVN4Bic1hWI+JRAq6BW5zPrE8z5dYcXA/eoG
 zki48f0A8HhkuIctKJu8EnRlE5i9HvPvqH+enOLCdXnaWkJSeozZN7D0B
 VDjoB9hage6Wwl39+tUEcpHVSIzlR056sT+kPMVQkBkPAhzk6AjqfXz62
 3pGvxayXgORRPg0cqUBGDDeI1y/r0T3zeuFLYQuwzIegYujGgRS5oSUbd
 R7uyAoAt0DgWhdhmyM7EbF4PexDFXJhMvUCvRh1v+K+vYUJcI8Sg/XgCi
 5XTR+l1IfjtFTANee8dxj0jKjK0h+h9wvggdNaRYPFKhVPPKMHn+/o+yV w==;
X-CSE-ConnectionGUID: gdeC1nAtQ8qSej68+f3YRA==
X-CSE-MsgGUID: H7LABoHtQfyfwy1otOQ8hg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11902960"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11902960"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 01:14:42 -0700
X-CSE-ConnectionGUID: 6LRte8npSW6eNdu7tb5AMQ==
X-CSE-MsgGUID: V40WNDd6S/W9NTRtDtTjZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31533021"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 01:14:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 01:14:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 01:14:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 01:14:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 01:14:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDa7o56OkpR3kLbCK5g1OJIuAbsMbtXQa7DrDxdsSsuAAks0oPVae7bDzBdmvpj56Q/g8WIVnAjfEtfhmrcj+zXGSBU0MvMERmaZZnqX8wi0x1v5J40h9nwXmb9MCFI5hwljQtTgln6/6FFyef8WYAVwk1aEP7W46nmpv8Aqm2ubXwWVamSaMX6gHUgC81u9YpNjf6fuH1zZxHBYGishJKWcPndB2MN78/D3z+TdzEJgaz/R/XUF4SFpZLPZQB+bJafVWMcc+OCLG+iLlP1Tm4yC/wp1YIwk6f+EP9p2eAmUygJlqh4Mf6nwW03gYfsJ3MyZiFR6OImd6U8XOCA+TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PgNgIISnbCprcW+R5Yv5rPrEnIigBJJFrd4YPGD993o=;
 b=jC2bAQdvmaQj6OT3FGs6g4IrK0ZYTGxtDkqKXXE4AnuBUdqth/L63ha4jIqhZhRTGpwo+cklJoPJzS3ImEcyAULdfCB8691fnNtpMV9M5yKesbEtTgBr43jGnJDvLUpvJ7u+Pe7YmxOTCpAEfMztrzwZ2FAei2zwiSaIr8QebA7bac4JavRe1/W8L7gDt7JI63YUCcXQXpeIU8zD4Ti4pfya83CUHt8vz2APCf6+GxXe1EbNqcg+1DYgvDsFbPn+bBHcp/zvhINdjuPFcoVHGkgzwPQtP4NnbYX7dBswu8+Fn/03dBrjosm9awHCFp9JYqVN5akN06+oMFmvts9WeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.30; Fri, 17 May 2024 08:14:38 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7587.026; Fri, 17 May 2024
 08:14:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Topic: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Index: AQHanSAYMqQP3ExyxkSkoOJD1pBdS7GbC2UwgAAS1QCAAAt+0A==
Date: Fri, 17 May 2024 08:14:38 +0000
Message-ID: <DM4PR11MB63607FB66D9A9362159AC6C3F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-2-jouni.hogander@intel.com>
 <DM4PR11MB6360FCCF477A33726BEBDD82F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
 <de424dfd0f5ab6129411be514d6c3788037d7fcc.camel@intel.com>
In-Reply-To: <de424dfd0f5ab6129411be514d6c3788037d7fcc.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4995:EE_
x-ms-office365-filtering-correlation-id: 10aca600-5f10-4954-1970-08dc76496550
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TjM1RW52RUZjemVDNW43TlF2bFJab1lwckhQWUxQUFVnYUJuTGU0bGRJUVVu?=
 =?utf-8?B?aTFrVWFPTU1LbmlWZWl0a09LaTNQSTQ5RmhkdWpSaGVlejB1eTRtSHRhRFZy?=
 =?utf-8?B?aFpsNEJ6a3ZndC96a25tOW9wL0k5ZFF6KzZzMDVJMHkzMnpoU3ErWnMzc2Ja?=
 =?utf-8?B?eXRCamxlcWRLbklLb3ZHUUljMWRoK3p2T2UrcHNZaHE5b3Q4K011ajIzb1Iy?=
 =?utf-8?B?aEhvUlQ1czZsVmZXdU5QWExRRklScVMySHpqZTFrL09MRTh3OEMzZWNPMnB1?=
 =?utf-8?B?bUNxQS9hZUtEcjRkYXVqMFhDRERLZnBPYjV2eVNDc2IzYUNKWVJZUWp1Njh0?=
 =?utf-8?B?bkFIclJxVFUvWE1YMTcwU21OdDFjd3FxWlB0cFIxM2xPQWsxbEk0WVQyN2ZT?=
 =?utf-8?B?OG9WTzBwU0J3bGJIRkpLTkRsOG0yZmViWGpnTVpHUDBQTVRQbUNsSHVPRnFI?=
 =?utf-8?B?dWNaYWwxL0FaUm9zK0NYQjNmaFVZeTBkdm9yUVE0N3UxamN2WEdOTkNlRGZJ?=
 =?utf-8?B?U2ZBNCtRRlB3L1VNcFl3cFZWdVVKY1Nid0RNUm11cDhnSmVmdGFPWGlZd1Vj?=
 =?utf-8?B?M1Z5TVNucXFEUTFZQnYrNlR6R2k1T0ErZ0w5dUl2NitIOWo1ajhhNXBKd0Ex?=
 =?utf-8?B?Y01laWw0MDkrYmgzYkdlSTZJT3BWOXB1L2NqNG1Pd2ppSTdHeTNCVlowWVl0?=
 =?utf-8?B?d0VVTThxQjVRTHB2ZXpuUDdOakRuWkpEa1NhS0p0WkZERjkrVjJ1YmhlZ3Nt?=
 =?utf-8?B?Y1AyOHJnSGZnREtRRldUWUs4OGRFK0FMam9YLzFEaTdZT05MUXZZTnNmUDdV?=
 =?utf-8?B?OVVWdG9qVmVHVVZVRUFPSy96NTBiUmNpS2N2M2I2cktUZFBCVUZTVzN6NjFl?=
 =?utf-8?B?QVpTNUNPeWtjV1BqYkdXek1tVDdmQTA1THRWVUltY2Fhd1drditzQ1NNUUFH?=
 =?utf-8?B?em90ZEs5NEhwdC9xcXNOUGlpZXVrRW5za1ZzeEVIbk1pUW1la1NMdUFnTVRX?=
 =?utf-8?B?TlBSRU9RRU1Ra0xZTmJBRlRVRURGbFhycDJwOGpvMklsQmRWNEZRdzZGSEpW?=
 =?utf-8?B?dlB6RHdNelo5SWRocVRhNStHTkorWDdKV0RXWDhlbVFmdjBVdmtJNG95NXFY?=
 =?utf-8?B?dEY0WkV1aXl5VGE3a2xxRjZMQ3p2UEJCSmUrSDROV2Y3djRyQzRwa3NKOVV0?=
 =?utf-8?B?U1p1UVVudTVqMTJFY0VoY1o2YUxyTkc0dFhIWGtOTFpvZjJ0ak1TdWx1Z2Jo?=
 =?utf-8?B?M2FRMjFWK3ZHSEQvRlBOaG9za3cwcm5peGFFSWlYRDRoeGtYei94QlI3M0t2?=
 =?utf-8?B?VldtZjhNaVdPSU5ETWRyc2pxa0J4bEhKeWtSaGVhM1ptWmFKRWUyOGwwNnAv?=
 =?utf-8?B?dUpydjlGWHluYThMNDJvSlNyNlhaQmdpYmpXbTB4Z3Z0OW9BN05INW81R2ls?=
 =?utf-8?B?SjV4b2J1QTBNK1VieEJkTU10SDlIMGtKZWRmT1Q3b3BTeGdoRWNCQStlaytr?=
 =?utf-8?B?NFlyeGVhbnVPRExMbGNmKzZ0NlJFd0VUVGtTc3Z6Q3ZuSyt1YWx4NE9jeXJ4?=
 =?utf-8?B?M0RvSEthSlhvNXR4VDBNaitFZG9oN1Vwc21MNyt4Q3JiUnJ1ZzVUNGdWYXBq?=
 =?utf-8?B?eGkzUUR3MUsrdERBRkEwUElVVCszblFzQ2IyM0ZHdlZnaHNXWGd2cVZZVWcx?=
 =?utf-8?B?NjY4aVg1cC8rUVQ0KzFKd2tURFdyZisyR2FERjB6dWtvbXIrRGdaUHBKUTdn?=
 =?utf-8?B?TnZrdW1PVU04QndZbldDQ0N0bWNvMnVhSTB1RVFLTzVCSzljb3BzR25pb0t5?=
 =?utf-8?B?bGpuY1FaamdPWDZiM1g5dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MU5jVjlpL1RCN0Nqa1FDV0E5VGI2M29hMmZXYVYyR0d4MW44TkFIeXM3dHo3?=
 =?utf-8?B?SmZ2YjJTVmJXWCtCRnVuVlNaSkZxZkZtZVdKR3IvaFp2OSt4QzY0cHZVK3dJ?=
 =?utf-8?B?T25zcFNHWGxUdkcvbjlQOFZQZW5tdEhtNjJJc0Eyci9kUU5iQXpmbmFuUndk?=
 =?utf-8?B?UW9pem04UWI2RVZMUSt3QWNqaHJzbTEvMlQ1MG5mcG5rTkNhZDY2eDdhcFFt?=
 =?utf-8?B?emd0cy9CalZNVkVWNWdKSFBpSm9rNmVFajN3SEVjekNlRy93OEJsMlpDNWhP?=
 =?utf-8?B?bzRmK1RyQWV0b3JtS25sRDI4Q1BPalI3SEQ4NDRaVThndHBLeEtEeTZNTXkv?=
 =?utf-8?B?YUlzQ2kwTmNvTDFvZXRYbmxPV1FoclJpTjZiakpGR0VQQlB2SU5BdWVzbHVZ?=
 =?utf-8?B?YXZOTWVzWlFPWkRaN2lFWVBqY3ZSbXFEWVZGdVZBbldkNjhsMk1HbHVpQjAv?=
 =?utf-8?B?ckpsaHBsNHJ4dy92QXdwdnFHSS9iZTRKZURkd28yZENLaTN5TGVZRDlmMllm?=
 =?utf-8?B?Y0ZrOTZ5OVFVNVY4UHZ5NldYeWxrT08xWk9KMWtvYkJKdG9INER0TUc5eEM2?=
 =?utf-8?B?aDN2QXdMZkgrcDMvWlp4dHhFZGtIYjQxWFdMa3VLM1MvTTdJYWdrSGs5Sndq?=
 =?utf-8?B?QTdUbnh5ODFLTExlOXV0U1lmOFVsYUZYVm1taUFCYzVOQ0o1Y1g5WVBxUXB6?=
 =?utf-8?B?Zy9hSlArMUdGSDFRNXEvcURaZHpWS3kvNTQ5SUJSOW9mSVNrZXQ0Ukd3Z0Jn?=
 =?utf-8?B?Nk5IVnMwNkZnR09abFUxMWxKRUVVMzJWOTR4Z2s1L2k0aWhqcXFWZVNpVzBD?=
 =?utf-8?B?b0FGb3FvajRJcnlvQVc0WGZZcHlGNlJQTGQxSmIyOHF3YVpSckdXMXd1VEFS?=
 =?utf-8?B?OU1uQnpIN252eHc0NTVCRlBFYjNVeUJWNkZYZmowOXV3QitnYmZsUHEvMk1G?=
 =?utf-8?B?a3VZQmQ0Tkk4NlMwQmVpc0plWHpJUGo3eUI0ODB1ZHZCNmtZQlF0L0E3SUp4?=
 =?utf-8?B?YlJQZVFXeWlsdXI3NnlOb2pDbEYzK1Mwang4UitpUlJxMVRkQURrcitPZGhj?=
 =?utf-8?B?MmZBc1BqSFpybERyQWI0STZMTmpGQzFzSENEcDEwTlBCQW5XZHZ6N3ZlaVBN?=
 =?utf-8?B?S2dhMUF5N1JyeEllS0h1Tmd2Q28va3VzNHpDUEFFSTRyZjdSWCtVeUlzMTB5?=
 =?utf-8?B?WVhTclVMYnUyaWg5VWt3cSsrWXUzTVVBK1BBS1ZFL003Vm51YkI3b1ZQZFRJ?=
 =?utf-8?B?SmJkbGIrcytBcGJ4Q2RqY3c3RU1SY2YvNkRhRThxc25tQW40TmUyMFBPMjZy?=
 =?utf-8?B?Q2twTzd6bGtJeFNuSS9wS2R6QzRrLzlQeHNCVTBXZFdpZCsvbkZDS0tYbk0w?=
 =?utf-8?B?dURpRmZkVHBIYlJ3Smhrc2VhU285Z042dTJpcktGMkl5eHhIZzBXUDNjaHFo?=
 =?utf-8?B?b1dJYVVqaGIzVHNLbE40dDJlbjcvaUlQK01aWjJqWVlwL0xmQXhGR2NPbnNV?=
 =?utf-8?B?Q1UzcW1vM1l6eUlmYWoyV0RZNEE3SFNrVjVsem04MWlKdEV1RjNaWTRiV2dZ?=
 =?utf-8?B?WlhxZ2pxT2tENGpna0ZJVnF2K3lPSG1mbEVkUWJ3Vlg4cmhoSEtpZEFheE5w?=
 =?utf-8?B?WnBURmFDenV0N3lIb2oyeFI0UEhlUHVUaDRUbGkxNVNtbmZ3NnA1cWx2QXEx?=
 =?utf-8?B?eFRMNnVMMXJwTVl6cE5XcEc0bm5kdmxQdkUrdDFsOWI0MzJxRHM0NEF4Rmly?=
 =?utf-8?B?Mk5YRU50c0orYkZTeEpnQWk4ZTQ2NWlYTm1kbjkwdi9LanVRdUtseks1Sjgz?=
 =?utf-8?B?WUM0WFl0aTVWamd3UUdIZlRnVEVCU2dsZW5uWW5TZHZpaGF3OUs0ai90NEZQ?=
 =?utf-8?B?dE4xajN4NVBOZWxjc1hJQzNVMW5zSG4wRFZOR1Z4ZkZmTmhHMlpUM1RZbXpy?=
 =?utf-8?B?d2VqSTNCR3puK0I2RytDbXNacEQyWHBNTnhQT3NrQjJlQkdlZlpKendBVmFD?=
 =?utf-8?B?Q1RBQklQOVgxbi9UK2cxY0wyMzFmNnY0ZFF5MERJbThuWVBMQTNwMURrREhi?=
 =?utf-8?B?d09JRWdJbDduR2ZvWEJMOVhiTFlheHpJRnRHVE9GNkpKT1hYdG1lSjM3bkdw?=
 =?utf-8?Q?oaxWeKnGV6JxVJDGa6jMKIGg5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10aca600-5f10-4954-1970-08dc76496550
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 08:14:38.3571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6zGO12b+lLtnNJ7VyP2ARhfaPnfF3EsjLpFLWGdNI34t2WC2pyKSVei4FBk37Jg66M1gjCMde9j+P+rdRaskog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE3LCAyMDI0
IDE6MDIgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDEvM10g
ZHJtL2k5MTUvcHNyOiBMdW5hckxha2UgSU8gYW5kIEZhc3QgV2FrZSB0aW1lIGxpbmUNCj4gY291
bnQgbWF4aW11bXMgYXJlIDYzDQo+IA0KPiBPbiBGcmksIDIwMjQtMDUtMTcgYXQgMDY6MjggKzAw
MDAsIFNoYW5rYXIsIFVtYSB3cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0
cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+ID4gT2YgSm91bmkgSMO2Z2FuZGVyDQo+
ID4gPiBTZW50OiBGcmlkYXksIE1heSAzLCAyMDI0IDExOjM2IEFNDQo+ID4gPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW1BBVENIIDEvM10gZHJtL2k5
MTUvcHNyOiBMdW5hckxha2UgSU8gYW5kIEZhc3QgV2FrZSB0aW1lDQo+ID4gPiBsaW5lIGNvdW50
IG1heGltdW1zIGFyZSA2Mw0KPiA+ID4NCj4gPiA+IE9uIEx1bmFyTGFrZSBtYXhpbXVtIGZvciBJ
TyBhbmQgRmFzdCBXYWtlIHRpbWVzIGFyZSA2My4gVGFrZSB0aGlzDQo+ID4gPiBpbnRvIGFjY291
bnQgaW4gY2FsY3VsYXRpb24gYW5kIHdoZW4gd3JpdGluZyB0aGUgSU8gV2FrZSBsaW5lcy4NCj4g
PiA+DQo+ID4gPiBCc3BlYzogNjk4ODUsIDcwMjk0DQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0N
Cj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUgKysr
LS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiBpbmRleCBmNWIzMzMzNWE5YWUuLjY3ODk4N2JiZTE2OCAxMDA2NDQNCj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBA
IC0xMzY0LDggKzEzNjQsOSBAQCBzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1
Y3QNCj4gPiA+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBmYXN0
X3dha2VfdGltZSA9IHByZWNoYXJnZSArIHByZWFtYmxlICsgcGh5X3dha2UgKw0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZndfZXhpdF9sYXRlbmN5Ow0KPiA+ID4NCj4g
PiA+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikNCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBUT0RPOiBDaGVjayBob3cgd2UgY2FuIHVz
ZSBBTFBNX0NUTCBmYXN0IHdha2UNCj4gPiA+IGV4dGVuZGVkIGZpZWxkICovDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjApDQo+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSA2MzsNCj4gPg0KPiA+IEFzIHBl
ciBzcGVjLCBoYXJkd2FyZSB3aWxsIGFkZCA1IGV4dHJhIGxpbmVzIHRvIHRoZSBwcm9ncmFtbWVk
IHZhbHVlLg0KPiA+IEZvciBwcmlvciBwbGF0Zm9ybXMgaXQgd2FzIHNldCB0byAxMiBhcyA3ICgz
Yml0cykgKyA1LiBJIGd1ZXNzIHdlDQo+ID4gc2hvdWxkIG1ha2UgdGhpcyBjb25zaXN0ZW50Lg0K
PiANCj4gVGhhbmsgeW91IFVtYSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEkgaGF2ZSBmaXhlZCB0
aGlzIGFuZCB0aGUgdHlwbyB5b3UgbWVudGlvbmVkDQo+IG9uIHBhdGNoIDMuIFBsZWFzZSByZWNo
ZWNrLg0KDQpIaSBKb3VuaSwgDQpMb29rcyBnb29kLCBSQidlZCBub3cuIFlvdSBjYW4gZ28gYWhl
YWQgZm9yIG1lcmdlIChzZWVtcyBzb21lIHVucmVsYXRlZCBDSSBmYWlsdXJlcyBhcmUgdGhlcmUp
Lg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRl
cg0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBVbWEgU2hhbmthcg0KPiA+DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikNCj4gPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSAxMjsNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBlbHNlDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1h
eF93YWtlX2xpbmVzID0gODsNCj4gPiA+IC0tDQo+ID4gPiAyLjM0LjENCj4gPg0KDQo=

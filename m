Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFmmNB/ZnWk0SQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:00:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D4218A35D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F46010E5E8;
	Tue, 24 Feb 2026 17:00:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WefVQ0+M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F8810E5E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Feb 2026 17:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771952411; x=1803488411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0r6/CJab5RiTzEKdFX83FDBrkcKolxgYI7ms80uLjl4=;
 b=WefVQ0+MCWq5mLqQS2U9Eww0htqhkf+bKhrh6nJEuhHl0NYYYCGDgNkV
 +mbWLFnRdSXLsoVY3OdpYD18sJ7j5otJ2sDVdTERSLZsz43W17JVrVhK/
 hk5meFMMpim9GCjYrnOTVuw1+tljQJn3SBFV0jLxiV0PDJvMZmsXeXIjx
 lXSzcN/Wynb45ReetsDbmoXGQRxWDa4jndKCpFJlCSB13v9ZhvfLZhY47
 1OBcFNhNrDNxIAGNL23f2qGLfpzgKFBedPc7/rvCboIlmuVFgv5Y9dJWi
 lmC/sjqre/pojFn2oo4qvZhWM2LKYKIFBCbqm9j3qcBcMrYYYvY34ssy9 g==;
X-CSE-ConnectionGUID: DSHRJzqxQc6MJnXb0zwhTQ==
X-CSE-MsgGUID: 1cNmO8RIQAeKeT/FvE18Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="60552915"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="60552915"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:00:11 -0800
X-CSE-ConnectionGUID: vxk+lZFDRDm0IuIdiJBTuw==
X-CSE-MsgGUID: pNUvB8XbTc2vt/TDS3bpxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="215062645"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:00:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:00:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 09:00:10 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:00:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hfexzd7Ue7njvDO33dRZTfBfU2cG8M2eGVIaN8Qo/0aY3g1jmDoqfSQjVfnxjfXrt4d0EoSNwWF3ZvZYWabIUBpPCEhuHOomjkVxMCDVOeHqDhgou5NX4UC7Ulfw5PDyhXkk7dsTHO0oEbXAUwgt8rAgg6Y048D6HkVj6wBfHhMl8ij1zidwHBePkecfUpoUUYAOlM+OkGOubY/qP9+0sCIqOORoznM4IqzjtENJtvKtLdgu8jgYZAdG7se3qeVsbbNrPr0x/glxoXY+E9nIhbWOleAXSKbspO+NFuRm/gDS3FZAYSyr9W52NHKSoRYxeGcPA+8E6w7+kXLJwTSK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0r6/CJab5RiTzEKdFX83FDBrkcKolxgYI7ms80uLjl4=;
 b=IaMStpo6WAc/twb5UxXxRnUExyNsUfJYNyg4Ix5t5rpyBF6ZtJSh4B4oB82DWZjXIocfeJeh0UhmydAvllozRFfcoxfnB4zPDV0NbAPF3BVB3MxabCxiWMmotvRDZyjnSLnTue1NEb2sXlZxRIv4YWVFPm6xZ8xqzl/HcuS5Hv8CIB54Sg2EtnvYe//D4hM0m5UfAGS6K3Wvv/DK8jR5M9l0PpgXi5vjXGCR88gz+jjLbCScMGCCDwOpz5kSzVl9MXELKv455M8p/RJnkF529X89noaelFEU4nnAuelBRO7MX9HR4wcKa7BmqzUODfj28rtbEUykDinH6zNgwSmFag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA4PR11MB9033.namprd11.prod.outlook.com (2603:10b6:208:566::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Tue, 24 Feb
 2026 16:59:56 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 16:59:56 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gem: Explicitly return error value from
 eb_relocate helpers
Thread-Topic: [PATCH] drm/i915/gem: Explicitly return error value from
 eb_relocate helpers
Thread-Index: AQHclip2n3Fpui/WekCtC8U5Sbe2rLWSJkuAgAAK3jA=
Date: Tue, 24 Feb 2026 16:59:56 +0000
Message-ID: <CH0PR11MB5444B4DE84C1BE39782AEFDCE574A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260204230307.81289-2-jonathan.cavitt@intel.com>
 <37xrb5o3un4n3njwhfllhony6igm6rs2jcw63k4oxrgicgilqs@o6icn66oarq6>
In-Reply-To: <37xrb5o3un4n3njwhfllhony6igm6rs2jcw63k4oxrgicgilqs@o6icn66oarq6>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA4PR11MB9033:EE_
x-ms-office365-filtering-correlation-id: 27030358-dfa5-489e-a9ef-08de73c62355
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?U3hEU0RxN2lKaVZDL2xmUGV4cE94aVNFYTB5Qy9ndCtuQzlJdXVNNlVkbXdQ?=
 =?utf-8?B?UGxmUmFENUdTL1o1eFV1NDNHb2pOMkNudnhlM3lGM0VRQkU0dFZ4MXdsNnZK?=
 =?utf-8?B?NEtPK3JsWTRzZWUrOUltbDJMUmw5cnBmN3dhMU13Q1ZaZTVJejV1STREck1w?=
 =?utf-8?B?NGY2U3JIYlBYV2NWTHNJTDVXU1BtdE9FZDVhK1FYYkx3NHdqcjJKM3ZwY1BP?=
 =?utf-8?B?ZGVGUmUyaW1KSjM3TWozeFhVSDhkWFBtc2loS2VOQ2FUQ0NCVkowT1ZLSkYx?=
 =?utf-8?B?VlR5Vmh4ZVVtRFA0bFh1MGJDcjdoK1hvbm5MRkVBemg0N2F0eDlCSVRWR2J5?=
 =?utf-8?B?VURuYm90em56Sm5YNDBPV2FGOTdFMEQ0TkNoNFdnR1dSeHN0TXdFVUNDZVhJ?=
 =?utf-8?B?U3NWay8vVXpzazlVVlJmem5ubzBBSnREZTRrRHQ2TEc1OEhNRVNUS3ZXVTNk?=
 =?utf-8?B?UmdCNEV4WmEzQzlBZnhTVmYrZVBmZGdGOU42Rmd3enJ0YzBmQndQUDVtYko0?=
 =?utf-8?B?Z0tLL0hKYzZ3WWc4bkJVVWpUcFIvUmgraHZvSlpOTkR2Q3ZmOFU5OTltUWFu?=
 =?utf-8?B?OGEvVUFFOGJwaFFXMDFNZDhreFdQa2NWdFYwWmU5MmszRHl0Zi9OTW8xb2Mv?=
 =?utf-8?B?bU01RjhCQnZuSVZ2UnUwY2lFQnY0VHE4S3F3Q1FKUUNKQm04Tm1oNmhoOFh5?=
 =?utf-8?B?bTBjWVJMUloxQ0FYZ0RJV3BOV1Iva1NpdEswOWl0VmpYQkRUYVVPL2RmOTB5?=
 =?utf-8?B?NjZsMjdiWHM1NyszaXZKMTk3R3FDV1NuVXpaZDB2Y016eVNwT2hyUmRpSEdI?=
 =?utf-8?B?a1VSV01yaDlSRU53dG9QaEMwcDlNUHB4cWJBcEk3bFhEMlFMTlFGOE5uVXBH?=
 =?utf-8?B?NUx3eWROVFZnbWpMZlMyTFphN01PaUtONjh6MG02NlNIS3NCVHRhbEpXQkto?=
 =?utf-8?B?cUhMRHMzc3lXa3JJM21va2VZOXdhN1NsTW1DQy9iOU1Nd01FRm5BY2hwdjlS?=
 =?utf-8?B?YWZ1WGRzN2VNcTU2RmdsZW45bDRPZzN0aW8xclBveGhXeWRCcVQ3RllXS01T?=
 =?utf-8?B?TVV4UWx5aDFwZXhUS1V4Mm9IZkUycjlBT2tDL296YVNMdytCamNUUXk2TFlk?=
 =?utf-8?B?SSs1aDZmTXhkUExnanFPUzN5QThyRzZ6Lyt6eTNlQk02OWFXT0tKRVd5a05l?=
 =?utf-8?B?WFBqMURGVnpkajRBc3RSOGJuUGNKZS9RTlFLSEVoYlpOVmhoUmJSUU9aajRo?=
 =?utf-8?B?Vnc1UXM1b0J2Yk9Qc2pjNUJRTllsMnFXT1RSaFdTRERuc2FLSFhjSU9ZN2FZ?=
 =?utf-8?B?ek9RUzdzVXZFaEViVEMwdTJwdmEvT2Y5TVBPRVlEeTlVeXU4cjl5UXoxbmZm?=
 =?utf-8?B?ZFpId2t0MU5NWXBNeE9QUklNd3F0VS9YakdMd21CaE5WNzFoMjdVaUxTck5x?=
 =?utf-8?B?UGx1ZDB5TzNrMTRyRlNSOEY2WDI1Yis4alpoQndZb1pCWkJ1UmJVekswSmVp?=
 =?utf-8?B?K2I3cmNOcUpnYVlVR0h1SG1aQ2FJeVg0cWZ3akdXUHZ3bDB3ZWJFdGFncXRl?=
 =?utf-8?B?SkM4MUhYKzFmbHNLUFA0Rzc1Ni9FcTVBZlNOa3VOU1hGU1g2aVhTd0F0azdD?=
 =?utf-8?B?dlRaME55WHl0dUo2VXpmL0paUVZmZG9MMFZPa252d2oxMUd4K01jdXMvNDd2?=
 =?utf-8?B?N2cxZTJmdThBTnBCYXBTazEzWW04emVnMElVS0pUakZ4ZWdHR1h1K01yWmli?=
 =?utf-8?B?eTZHN1F3dFFUbzhyWWdxTDJ3RmtoR2FtOERiaWdsbzZ5bjdySTAxY0g1a0tH?=
 =?utf-8?B?aEl6T1BRMkJNUU1DaCt0enpqMGVncGFIMEJqZmhpOWhFRERTdmRrbi80cGE1?=
 =?utf-8?B?RXZNZzN0eFkzOEZGaHZKaFB0VDJyWmNmK29jeGF5WjdoRXdvcmJIcFJxNW9P?=
 =?utf-8?B?VTB2THI4YTNyS0lLVGhXRUttb2lxdFN0SjFJZzQwM1BZVlZMbG5pZDZhQ2s0?=
 =?utf-8?B?TEZpdk5nYnlRQ2szKzBhS2t4Sm5ZZVQxaUlhVjRCTEJTWEhlWCszcHNteElU?=
 =?utf-8?B?TGYzTmRTZFBYbjVpa0ZUY0NhQVJEWVJxTU1TamMyMHVrd0MyOFRBVER1YUdq?=
 =?utf-8?B?bG9BMldtSnBPbUdwdHRJWDlVZmdnUHlCOEpPZVc1V3FUV3JEeUQrcFRSZTEz?=
 =?utf-8?Q?fBFOJDlkEaNR4C5i1rSd0wE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTJXQ1lVMTZaM0hhWTlpMlFFTEtEY2hkWTZUZVlxK04vS2xsZmtFVVRkOCtk?=
 =?utf-8?B?dlN1am1rRjNZc1NPa2NqeFU5TGtMaXhnSnhLajVpbFVxeW13Y0lxOGRKSnRL?=
 =?utf-8?B?MkJpWlNmYS9pcU5tbzZhU0FIWGRyVlIzdytKcFRuVTNXWXZrV2NweWpWYVlH?=
 =?utf-8?B?LzVVeENZWGtYSFBzNEsvYkw5dUdKOUdCdXBmRW5kVzdsTWtvczVtd2M5THlw?=
 =?utf-8?B?OWRUTzltQ1hNSVpKSy9DbW1raTVOOU1rclJVeEswYWJkQUtHbjNBUEhYYUV1?=
 =?utf-8?B?dTlWVWRvcU9QWEdMemxxR0YwUlkxMUZiQk0rN2hMYU1hNzlGUFVJU08xKzAz?=
 =?utf-8?B?Q3JKS3NDdnlPbEcxL0JxNFBWV2JaUWVSc0dkUHpGZVZXN2ltdyt4ekNKeE9U?=
 =?utf-8?B?U0V6YjJaaERuS0NkbERyRDJhVklJUi8ycm8xaGYxNlFWaDZmNFdmcXFkTk9a?=
 =?utf-8?B?N25kR0tQamxMZUJZUTdxM2tLSWUyN3BhSWw3VUFncnNFN0M4NHhhb0ZjVXRp?=
 =?utf-8?B?TFl6d09KZFZESWpObVl6T0MwSHZEMkYyRVVZNWV5SVFWNGVQUDFRd3lBRWJL?=
 =?utf-8?B?R2dUSHdmVlpJTHNHWHhySmk2aWFybVR0aUY2Z05ETms4dS9iQ3FQRm95SmxJ?=
 =?utf-8?B?WHYyckp1Q1hxcElYNTRybG15Q3pyQy9nZHBhOTI2ZlcrQ2t1K1pQazhmbkpR?=
 =?utf-8?B?Y2xiRFMrRkJDL2c2T0granlPM29YZzhtWGtvYkVJTUpyRGh5U3dDZXVhQ1gy?=
 =?utf-8?B?ZlFQeFFEUUJ0R1I5K3RFQUI0VGV4b243VkswM0tQYVdSZ0hHRlFVTWo1dEM3?=
 =?utf-8?B?aDF3QXdwU3B2MEEvUXBXNlpyUmZuMXBPQk94TTY1aHFnTzRBbGpxMnU4QXdX?=
 =?utf-8?B?cCthRmJrMzN0REJHTURWUjgvL1hBNkd5dUlCbENaZ0FJUGpyMldydXFWcnFi?=
 =?utf-8?B?OXhISTd1S085V0tJYmFoSUtoTmV3UG9pVXVJQ1o1WG82d1ZsaFJ6WGhraXdL?=
 =?utf-8?B?R25ZV0xHL2k1Vm9Gc3l2U3VQSSs2MXlaMC9aeVo1OGErSzc2OXNrL3RvTXlT?=
 =?utf-8?B?MUcrUlVvL3RwVFdublROdlgxZnh4a2toNGRpa1RxSkcrRU5PTDBBTkl4QnNx?=
 =?utf-8?B?bnVzVWQyUi8zOXVCRU9wZ2xJajRnTmRjSlI5eGpiTTVuNU1PQ21vUWREQ1c0?=
 =?utf-8?B?Q1RiOXVvMlU0WHFkMFZxOHZkN3F4ckE5Zm5JMTllUE1mWmF2RS9yUTBjNXJY?=
 =?utf-8?B?M3hsT05CdXRxelpEMy9xWkJHeko5UGs4TkJPM3RDbE16OExQVDdBNWdvbVd3?=
 =?utf-8?B?c25QcGg0VGluSElkeUdGZ09CSmN3QXlua0ZYd2hnVjg5eW1TUGR4VmpNc24v?=
 =?utf-8?B?YnMyRGxlWlR2MlRHb3Bva0ZCN3plSldVbWxxMFdjS1Q4TkxxM0RVMks5c1Zh?=
 =?utf-8?B?ZXlyV3lnRElwWXZlUzFGWnlsNDVDNnFCZmN6b1ZpNWhaSlNqYUFHdWk5OUdW?=
 =?utf-8?B?L1c0YjJlbzFOZVoreWN0ZGkzSmJmSVUwRkJVbkxaQS9aVEliVHE5WVdvV2pU?=
 =?utf-8?B?UXRoeTBnM3J6OHhWVnVlTUpsK0o4a0Y0NlpPVVFEaU1ibmJaaHJETjUvdWFT?=
 =?utf-8?B?TFU1UzhJUW83bDcyR1YyajZKMFN3MkpWYm1aQzJ1NGtvSUo0MzVxTEFjRnZL?=
 =?utf-8?B?Z3VUdG10bWN6cGJ0SFpTQTZvYlFoUDQzT3QwRFRjSERIMnZ0MkZ0VXg5SFpj?=
 =?utf-8?B?WllmbmxNdUhDYUNpQkttUVRXQkx6elltbDVmYXMxOG55bHJQeEJBSXVwOEd6?=
 =?utf-8?B?NnJEMEx3Wi9WaUZyNlJDY1llTVZMY0s5L3VHNkg3dFpaT2twWFAxQXcyZnEv?=
 =?utf-8?B?Mll5RjVLMkpSdlk1YVgzWmd0SEJZa0JUNHcwazJMS3FQbWpOc3RFL2RmcWxw?=
 =?utf-8?B?and0TWR6NHZmY25aT3BHRzFYUlJoSkZYaDdHU0lLVlU3T21iRlRodW5tV0dC?=
 =?utf-8?B?Nk04SDk2Wmx4Z1Npd0s5OTYveG00SXVlNkxzbkp6eTVpckpwcFl6c0tHektF?=
 =?utf-8?B?cnh6SkFPc2pTNmFkQlNYNmQ0WHk5eW0wckl4SW1YbEt0U2JPSXhoL3lwYXVy?=
 =?utf-8?B?Smt5bWJWMWkxd1JoSXo2Z29VNkFDQmdBUTVlOXYxMW9MUXdFM1NweDFKb1ds?=
 =?utf-8?B?emJmY0VZempuRGJpdUdDTDVXNytySHlNV0VvUExGQktnRElyUkhTdjZtbTk2?=
 =?utf-8?B?V2tNY2cwblYxbG82WHFyc3dzVEdENnNyRTZoYXc0ZW5xQnNrMGU3VFFwdFNN?=
 =?utf-8?B?NEpqVC81OTVwNHk0T1NlcU9WTzJ4d001VWNvUVM5NWFDcS9sbWJJekpQSys3?=
 =?utf-8?Q?9nlM7UmSyiWJjogPQgDhc1YGPCyo71bOFtDXmP0idGc+C?=
x-ms-exchange-antispam-messagedata-1: j5kj1PHrNSMOoA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27030358-dfa5-489e-a9ef-08de73c62355
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 16:59:56.6171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Q3fm/lFDkupWXnk3d8wTlo9A+7D/v2ldKtjechF6Du7Juqe7doQ/OOk5DtcvcA3uP5nMDbM/1jK8rYdcZjd53dm8IlvcZymk5Hc6nckD1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9033
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:joonas.lahtinen@linux.intel.com,m:jonathan.cavitt@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 26D4218A35D
X-Rspamd-Action: no action

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEthcmFzLCBLcnp5c3p0b2YgPGtyenlz
enRvZi5rYXJhc0BpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjQsIDIwMjYg
ODoxOSBBTQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+
DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgR3VwdGEsIFNhdXJhYmhnIDxz
YXVyYWJoZy5ndXB0YUBpbnRlbC5jb20+OyBadW8sIEFsZXggPGFsZXguenVvQGludGVsLmNvbT47
IGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRy
bS9pOTE1L2dlbTogRXhwbGljaXRseSByZXR1cm4gZXJyb3IgdmFsdWUgZnJvbSBlYl9yZWxvY2F0
ZSBoZWxwZXJzDQo+IA0KPiBIaSBKb25hdGhhbiwNCj4gDQo+IE9uIDIwMjYtMDItMDQgYXQgMjM6
MDM6MDggKzAwMDAsIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBTdGF0aWMgYW5hbHlzaXMg
aXNzdWU6DQo+ID4gDQo+ID4gVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb25zIG9mIHRoZSBlYl9y
ZWxvY2F0ZV92bWEgYW5kDQo+ID4gZWJfcmVsb2NhdGVfdm1hX3Nsb3cgZnVuY3Rpb25zIGNhc3Qg
dGhlIHJldHVybiB2YWx1ZSBvZg0KPiA+IGViX3JlbG9jYXRlX2VudHJ5IHRvIGEgc2lnbmVkIGxv
bmcgaW4gb3JkZXIgdG8gZGV0ZXJtaW5lIGlmIGFuIGVycm9yIGhhcw0KPiA+IG9jY3VycmVkLiAg
VGhpcyBpcyBiZWNhdXNlIHRoZSByZXR1cm4gdmFsdWUgb2YgZWJfcmVsb2NhdGVfZW50cnkgaXMg
YQ0KPiA+IHU2NCBvZmZzZXQgdmFsdWUgb24gYSBzdWNjZXNzIGFuZCBhIG5lZ2F0aXZlIGVycm9y
IHZhbHVlIG9uIGEgZmFpbHVyZS4NCj4gPiANCj4gPiBXaGlsZSBub3QgbWVjaGFuaWNhbGx5IGlu
Y29ycmVjdCwNCj4gVGhpcyBtaWdodCBsb3dlciB0aGUgcGVyY2VpdmVkIG5lZWQgZm9yIHRoaXMg
Y2hhbmdlLCBqdXN0IGxlYXZlDQo+IHRoYXQgaXQgaXMgaW1wcm9wZXIgdG8gY2FzdCBzdHVmZiBs
aWtlIHRoaXMgYW5kIHRoYXQgc2hvdWxkIGJlIGdvb2QuDQoNCldpbGwgZG8uDQoNCj4gDQo+ID4g
aXQgaXMgaW1wcm9wZXIgdG8gcGVyZm9ybSBhIGNhc3QgbGlrZQ0KPiA+IHRoaXMuICBTbywganVz
dCBoYXZlIGViX3JlbG9jYXRlX2VudHJ5IChhbmQsIGJ5IGV4dGVuc2lvbiwgaXRzIGhlbHBlcg0K
PiA+IGZ1bmN0aW9uIHJlbG9jYXRlX2VudHJ5KSByZXR1cm4gdGhlIGVycm9yIHZhbHVlLCBzdG9y
aW5nIHRoZSBvZmZzZXQNCj4gPiBzZXBhcmF0ZWx5IGluIGEgcGFzc2VkIHU2NCBwb2ludGVyLg0K
PiA+IA0KPiA+IEludGVyZXN0aW5nbHksIHRoaXMgdmFsdWUgaXMgb25seSB1c2VkIGZvciBub24t
ZXJyb3ItY2hlY2tpbmcgcHVycG9zZXMNCj4gPiBpbiB0aGUgZWJfcmVsb2NhdGVfdm1hIGNhc2Uu
ICBXZSBjYW4gc2ltcGxpZnkgdGhlIGViX3JlbG9jYXRlX3ZtYV9zbG93DQo+ID4gY2FzZSBieSBh
bGxvd2luZyB0aGUgcGFzc2VkIHU2NCBwb2ludGVyIHRvIGJlIE5VTEwgYmVjYXVzZSBvZiB0aGlz
Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIENhdml0dCA8am9uYXRoYW4uY2F2
aXR0QGludGVsLmNvbT4NCj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiANCj4gSSB0aGluayB0aGUgY29kZSBsb29rcyBn
b29kLCBidXQgeW91IHNob3VsZCBhZGRyZXNzIGZhaWx1cmVzDQo+IGZyb20gaTkxNSBDSSAtIGJv
dGggdGVzdCBydW5zIG9uIHRoaXMgcGF0Y2ggbG9vayBtb3JlIG9yIGxlc3MNCj4gdGhlIHNhbWUs
IHNvIHRoaXMgY2hhbmdlIG1pZ2h0IGJlIGJyZWFraW5nIHNvbWV0aGluZy4NCg0KRm91bmQgaXQ6
IG9mZnNldCBhbmQgZXJyb3IgdmFsdWVzIHdlcmUgbm8gbG9uZ2VyIGNvcnJlbGF0ZWQsIHNvIHdo
ZW4gYW4gZXJyb3Igd291bGQNCm9jY3VyIGluIGViX3JlbG9jYXRlX3ZtYSwgaXQgd291bGQgYmUg
aWdub3JlZCBkdWUgdG8gb2Zmc2V0ID09IDAgaGl0dGluZyBmaXJzdC4NClJlb3JkZXJpbmcgdGhl
IHR3byBjYXNlcyBzaG91bGQgcmVwYWlyIHRoZSBpc3N1ZS4gIFdpbGwgc3VibWl0IGFuIHVwZGF0
ZSBzaG9ydGx5Lg0KLUpvbmF0aGFuIENhdml0dA0KDQo+IA0KPiAtLSANCj4gQmVzdCBSZWdhcmRz
LA0KPiBLcnp5c3p0b2YNCj4gDQo=

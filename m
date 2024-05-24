Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6BD8CE0C8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 07:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C4B10E03E;
	Fri, 24 May 2024 05:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJjkB0Dt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5289D10E03E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 05:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716530025; x=1748066025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gJsFn9RUMnDWs0V+EdfA/eC+PBJpdLSrJMJ0MN6DJPc=;
 b=nJjkB0DtGh5vuvVih/GrA5EZfOZMfsGV0reoTaNsSqk9eRKYX7V+vW1+
 ql20ghdfQvRHxMS2qsV3AEzAn12a5TylNe5nCLx4HRbmm6TG9BRv84gYR
 yrUGbzQMb/FjUl/zdiFLOwOPri3f9eU0/LoHGp8IjuPcSgVS9Z75BiZhQ
 4T3lpDbPgtVXjppC7oXqYlIfSp2S951HG+cM1UkRCy3qlElapRdlxyPHN
 bFJyEerNsXbBg1h5az/+l19SAmhf1END4Nla4wgCOO4dEBQ76nV/2pUlx
 5XfOpWRWi1uzirk0Azk+wH+6oT9TsqMnvrr8bfK6a8MbCQZcEcL756oAo Q==;
X-CSE-ConnectionGUID: lvnbTalFRUaF8WvnxUrLMg==
X-CSE-MsgGUID: R2GZo7w6T1q6o6VKpVbKYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16683490"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="16683490"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 22:53:44 -0700
X-CSE-ConnectionGUID: DgL5EY3fTuWXR1DjkQ2IJQ==
X-CSE-MsgGUID: VcwPdglBQ8WBCFIM8HVl9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="38772527"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 22:53:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 22:53:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 22:53:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 22:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzTZZ7V+U+6hcA+csg0MLrxOXEOI0zZidtxIX3n9cTtrvquoE7kHoJbhx3sNo8pYlO0kXtPcR4kuvHsW6SUFBkC4boceH6f1abITClmLs+spRdhSIB+QkumDOlZIg3sfAcZZ+YgexjTfQZjDY2nLGMWE7+TQ21YMS4nApygDmcbG8nMUYzqc5RaPeIBo84NzeFzSxdQCTH4UTGgGaOAgaeZQD9z42zf2pKv+hOMVIbS/M1Jy8SMYMd2r1YjN8iWXnU4O3mjez0XaFMPJ7tPj7/cz+NhLhUzld6Q1VE4LRE/pWcvNUNqlr8tHGjztmvSRL5ni2QKy/kIQp7DxKt1Q/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJsFn9RUMnDWs0V+EdfA/eC+PBJpdLSrJMJ0MN6DJPc=;
 b=jcdEKdHFda+BqyX59o5hX5Jad04rt2PbEveSHKTEDrrym86PA98eoYcgn/A5TeD4CBuquy1kqKWUh52ftxqWizF/Qprj834cCiK6Uu14MeaVl6nyT8Mr8ZjjOtnakzc58+i3npmwfq9SBR90zXtm/QXtHUZJK/3Ys8aNDcJGv2ZhPl3+Eorp7cfTCWPdrJxfAIBhun1Fp3z9xIUYDb7AWA7J5Y3GjQJrWeJN1ZJMIlu5TQErJ10JNPi+nngWmRG/9JxL9ZLSo4L8KEdwXfHfJnvN3uniiRrLkFd/2Ez1RO00+FzXEuy3nORXDy3lr8qBRKV9v2Ut7s+Y5vxYZp+cjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4576.namprd11.prod.outlook.com (2603:10b6:806:97::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 05:53:29 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 05:53:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 00/17] Panel Replay eDP support
Thread-Topic: [PATCH v2 00/17] Panel Replay eDP support
Thread-Index: AQHaq1t52mZJ5GE5A0WpnG89p1sEmLGl5QRQ
Date: Fri, 24 May 2024 05:53:29 +0000
Message-ID: <PH7PR11MB59815451039C10F4B26D9C4FF9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4576:EE_
x-ms-office365-filtering-correlation-id: aa2a048b-5dd3-4b6e-2c11-08dc7bb5d63d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WTZ5aExSQitXb1YrOTJBYmcwWlN6dWRHcHY1RmN4UU9kZm1hcHFkbkY2cUYw?=
 =?utf-8?B?R0Y4bkdueDhjdDFSQ01qeEtYeG9SQ3U2UVJmZThUamtLclFhRUZUcXRqV2NY?=
 =?utf-8?B?dmRCQlpMMVFqeFVHYjRrVDRDOXFNZ1lhbHh2dXI3czdPTWUyV09wcVZYci9G?=
 =?utf-8?B?VHpjN2owWW10VXRMUW84MzdMemN0M2lCWnVVSWdibXhIZDNqVEprZFdYL1lK?=
 =?utf-8?B?NVBoSVNnYy9WdWIrSVZ1MkFYSHlTRkswdEJwN1NwN0QyQ3hKckpMRklEQ0VG?=
 =?utf-8?B?ZG5XRVduakxaZ2JPQWdRblltSEZZZjA5bUJTSkRPNURaemFncnhtNk1JbXdw?=
 =?utf-8?B?c2pCTVlOWFZMd0JMUmJIZ09Mcm9ValZqZDloOTdQOFdMZEdSRGVnWjlpdHdX?=
 =?utf-8?B?L3pVQXhzZEZTVytCRTVoSWZlbHJaQXdDcldUVFJ2SGgrM0VLZE1CREFValdL?=
 =?utf-8?B?dkNZNjk3VExlOTNVbDFzYWpRclg4U3dpSmRQdHdlUU80R2ZySUhXK3hFbHdO?=
 =?utf-8?B?c1JRWEpxL2F2a1JGMTlOZU5hSExidU41RTA3YkxBRFk2SUcrWkNUM3VsbUxr?=
 =?utf-8?B?T2VmZ0p5Rzl6SENRZ2dPbTFxcWpkUjVHcG9KdzNTSmRYcWJWUlhWcmd5YWpE?=
 =?utf-8?B?M3FYeGpvNCtsanhiclFHRklXRk5qdVlkY3FCK1FHSXhydXkxTXZ5aTNqNUpI?=
 =?utf-8?B?M3ZBSnhPU01oRFplcGFQQi83Ui9na0dYdU5pYklMMGNqMzg2WForcHBDVmgy?=
 =?utf-8?B?VUcrUDhLZUJtVGFlY1U3VnVHd21kazZRSkZLUmRMRTdWUXVCSDZWZ05qVHZS?=
 =?utf-8?B?QzgvaG1UdklrRnIwL3pnOFVrV2N2V1JEYklXUHplcDZ2OXdCRGJFODZxdHdC?=
 =?utf-8?B?WklDUGRtMWlrLzZLTFFVZktWblNJOC9hcVdoMXpwK1dWeUtvTHlpN2tXcDJu?=
 =?utf-8?B?MS9hRElNSm8yYk9vUkRUaC8xVDA5T2VFSFZHUEJWSms5bzZhMDRWN0NVbCtj?=
 =?utf-8?B?Q09sZFh3SDdyNGhUVjc3eGljQjYyYS9zMGRPa0RMSDk0dmxZcWFUT0tyeS9z?=
 =?utf-8?B?aHhVcHYzaHROMS93bUwzNi9Bd3FDU1h1VVV5di9oOVZWMHo2bFZ3c3g2cTNs?=
 =?utf-8?B?c0hmMEVrNUNPQUt3aXZyWnkxM2puY2YrUXBPaVhxd2o5TmcxUG1BZ3RDMGRt?=
 =?utf-8?B?TGdVQ3UrL3lEZHl1QWJwSG9vdjRyRW1PbE1LZmVhWkNrUDNhdS81Y1dtU3pk?=
 =?utf-8?B?MmJkTWx6U3A0blFsR1hRaXJNeURsb1JwSHlrempqZHhVOXFvaHFWQlB6Smh6?=
 =?utf-8?B?OE43dmlwblFQSEl3UnA1YWhwVERpVENoeXVnSDBvZVMyNHl5K2NIQXkrZWpu?=
 =?utf-8?B?Um5tcFNjRll6MUNUcWk1ZXp1aUw4VjlISmtoSm5rRzY0THg2T0lMMWlBM0Rv?=
 =?utf-8?B?Qkhra05jQkpQN1VUYWt6ZktPOENzTGRLNjlpb2k4ZXdXREVZdXlCemhCVkVw?=
 =?utf-8?B?V2ozNUlTblIwWmp4blJSaWIyWnNJbVVaSTA0Tmt3U2tpS0hWbmJ1blZ2Ryts?=
 =?utf-8?B?VEg4MHBGQ1hhb2NsYzVFREtuSlZtdDRnOVhWbmkyUytvRjZUYTBSaXZZSTAr?=
 =?utf-8?B?dnZFRzBsZmsyVEhsQlRxRFFSMGRDM2w5UllXN09kYjJRcWVSY1R4UXBLRkt6?=
 =?utf-8?B?akMzS2lxSWpwaFpHZDd0ZmdMOVBxTnZUQ29UVzVYcCtXYUlGdjhXdU5jS0cv?=
 =?utf-8?B?RlpiUmgvRU9FWXlxT0F4RVYwN0tRKzVrSDA5aVl1cXArVmdsSVFvb0NlUFVD?=
 =?utf-8?B?M0xESndyWTN5WDRPTlFtdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDAwSm1Xem1kU09vMENnTDVDNUhxcUdReVNvc2RKQjRpbUFsaFJhZFllL1NW?=
 =?utf-8?B?SHE0bkNBcS9saXJNd2x2bFR2ekwwMkticXVRUURtcWhvZjNVbFM4aktxNEtn?=
 =?utf-8?B?MzVsUnM3elFqYUpvUUtuQnJyYUE0cEJTakpEQXJjemlvcGFGVUtlQ0prMEdh?=
 =?utf-8?B?VlJ2Y2JpWEszeWt5Z2g3bXcrK0xwTEVLRHBuNloyUU5GNGlyVU5XWHVCWjUr?=
 =?utf-8?B?MDNpZVA3N1F3dW5ZcnVQWXlvQ0ZjZXQwbXNkT2daN2lrYUw2VkRQTDRWVG8v?=
 =?utf-8?B?QVVEUS9KUEJoODEyK1pVK1dxNlZpcS9LS3NGNWR1Wk53L1JxQUNxT0VPMGFh?=
 =?utf-8?B?K3F6NXFwQUZ5S1VUUm9IR0xNR0pGaWNxMTA0bTFHT2ZCZ3U0ck5mbUNvNXRq?=
 =?utf-8?B?RVRUaWczZ3hxQ0hnemtFZVdhWG5CZHMrWlNCdXBJMXZ3KzJJR1Q1NTdTSkkr?=
 =?utf-8?B?L1hEd1dFOFlpY05VM0VzclUwb3JOREVrU3RJZk1UK3cxaFRManBTMlNqdXlt?=
 =?utf-8?B?ZkF6aVZyeVlJQWliejk4Rm1vNW0yOGN3cWl1WUY4MDVIYmQrTk9saU1JSXBN?=
 =?utf-8?B?VHRFTkd5RldENyt2cGVsWEhqNDhpVXFvVmxDSXB4amFiL1dTZklac2U0eGti?=
 =?utf-8?B?WkZ2VE43TnYwckk5UG1VcTZjSzJGWThpczdBQTdFUHJyVlBwaDdBTGE5ZVg5?=
 =?utf-8?B?eGtCVGo3Lzgzb2t3MTc2Y2YrbTV4eU9MUEt3UEJKcjgwbWE5NE1tRC9sMXRo?=
 =?utf-8?B?TGt5bmxKQnV4QzdSWlcrNlJOQXJNSFROR1lhcVRQeHJLaGlndWRqdE50R09J?=
 =?utf-8?B?cFVrYkFPc3BBZEpWSmhrUnI2QnIzRmJRWW9hNEZtWk03K0M1RnNCWVIrcGxP?=
 =?utf-8?B?dWhJaFgwQXhML2w0aFl6UlJta1hMYTd3ZTZSNWZzY1ZYQ0YxMEh2L091aTZ1?=
 =?utf-8?B?WEJTQ3VnSEJFbE9YVXhUUHh1b0pkc3ZDMk5GK2JEWU4vQmpiSU1nbEh0UWZX?=
 =?utf-8?B?MlQ0cnBHR1IvVFFZREREMjMyMXk2M3JtRTdqb1ZxQXAxN3pnbmpqV25qRXpV?=
 =?utf-8?B?eCsxdXpBT2hLUjFpTVJvamUwZ0VtaW1HUXFsUlZpbWZQNEE4QkZNcDlYc2pu?=
 =?utf-8?B?NUZJVTUxWDlsRVd5SHBrT1g0a2xtWFBBMTR3Q1lXOEJyNHg4bzlBcWNGQXox?=
 =?utf-8?B?MjNOdUlwUEZzdHZPOXJUeVc2UTg4TDFuODE2YnMzTkw2ZjVzaWhSMVY1Vzgr?=
 =?utf-8?B?OFV4MFhlMU5xYTQzMHdLQVVabGRjNnppVlBIZFBpdjg0SVlYU1FIQXUraXJE?=
 =?utf-8?B?REdoRWQrNmpUYTkwYkxiT3l6Szd2WmYrME01WDUzanlHbjM3RUVIbVBjdUFz?=
 =?utf-8?B?Yk1aY01oelZQR3VxZGlsek5BMjMydXVzNzFQL1Q4NFoyallnZCtBVlhPa0pN?=
 =?utf-8?B?VGtVUmlHQm5VaE5BZ2swc2JBK0twZ2dkQlRjZ3R5eGt4V2twRUNaWVBWQzRK?=
 =?utf-8?B?T2IyWUozVGhkSmtFbVRKV1JBdUZCdjhxc1d6c1padWk5bUJtTlZLQm95cFA5?=
 =?utf-8?B?OGcwNXhsajhvcUl1OWhxRGpBSnltZHB6OWNZYWwzbjRwcEVaM1VsdzFVcE0x?=
 =?utf-8?B?S1lLb2xybGtoQk5zVXNzbzZoRTU2ZTgzMzBFVk03dm5GZFFFSFJZMjFkeVcz?=
 =?utf-8?B?dFJZYzdYMmtkTWFLYWtVdmI4U2J1QjJSN1pmK2VTVzVKdUVuTWtZdytBM3RE?=
 =?utf-8?B?K0IvOXI5L3NxeFB3OEhsWWFPUTB3ZkZVa0JCOElhNVJ6RHgrSUVWWTVaVXlr?=
 =?utf-8?B?Q25WWE1kb24rNTl4ZmFqdmZibTVsbTRzUnhlKy9ka0FnekRTZEJCbDVxSkFp?=
 =?utf-8?B?VnI4ZHd1aStMbFN6Nk5lUFVyTGdmWk1TRWZJT0Z1dG1sMkd0V2JWb2VpMXhv?=
 =?utf-8?B?WExIaVY4MVFtRlZZNExZaTlRd2w1U1o5ZVdidzF2RHB1L01wazMrWDVyWGFj?=
 =?utf-8?B?VTNxS3psNGcwb2JIVnpGanNsMG96dFdNbkJkUDIyTFJZemgwbmZGRWs4K253?=
 =?utf-8?B?R2F3RllXYklSWnhIYU81Njl2M2xuc1FTU2Qzb0VLUkRPTlcwVzJDM09XUnZ4?=
 =?utf-8?Q?FIkVuzmej5m0I3P2ZhlHDN2HK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2a048b-5dd3-4b6e-2c11-08dc7bb5d63d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 05:53:29.3129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a3chNLw9qeXOsCxeJXqUW3yAUTs+6uCENnAQrMEFhMvcoKRIsuB6F8vC0H1VYehesuixgkOB1+FfOgvpkfy/0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4576
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAyMSwgMjAy
NCAyOjE3IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDAvMTddIFBhbmVsIFJlcGxheSBlRFAg
c3VwcG9ydA0KPiANCj4gVGhpcyBwYXRjaCBzZXQgaXMgaW1wbGVtZW50aW5nIGVEUDEuNSBQYW5l
bCBSZXBsYXkgZm9yIEludGVsIGh3LiBBbHNvIFJlZ2lvbg0KPiBFYXJseSBUcmFuc3BvcnQgaW5m
b3JtYXRpb24gaXMgYWRkZWQgaW50byBkZWJ1Z2ZzIGludGVyZmFjZSBhbmQgcGF0Y2ggdG8NCj4g
ZGlzYWJsZSBSZWdpb24gRWFybHkgVHJhbnNwb3J0IGJ5IGRlZmF1bHQgaXMgcmV2ZXJ0ZWQgYXMg
aXQgaXMgbmVlZGVkIGJ5IGVEUA0KPiBQYW5lbCBSZXBsYXkuDQo+IA0KPiB2MjoNCj4gICAtIHBy
aW50b3V0ICJTZWxlY3RpdmUgVXBkYXRlIGVuYWJsZWQgKEVhcmx5IFRyYW5zcG9ydCkiIGluc3Rl
YWQgb2YNCj4gICAgICJTZWxlY3RpdmUgVXBkYXRlIEVhcmx5IFRyYW5zcG9ydCBlbmFibGVkIg0K
PiAgIC0gZW5zdXJlIHRoYXQgZmFzdHNldCBpcyBwZXJmb3JtZWQgd2hlbiB0aGUgZGlzYWJsZSBi
aXQgY2hhbmdlcw0KPiANCj4gSm91bmkgSMO2Z2FuZGVyICgxNyk6DQo+ICAgZHJtL2k5MTUvcHNy
OiBTdG9yZSBwcl9kcGNkIGluIGludGVsX2RwDQo+ICAgZHJtL3BhbmVsIHJlcGxheTogQWRkIGVk
cDEuNSBQYW5lbCBSZXBsYXkgYml0cyBhbmQgcmVnaXN0ZXINCj4gICBkcm0vaTkxNS9wc3I6IE1v
dmUgcHJpbnRpbmcgc2luayBQU1Igc3VwcG9ydCB0byBvd24gZnVuY3Rpb24NCj4gICBkcm0vaTkx
NS9wc3I6IE1vdmUgcHJpbnRpbmcgUFNSIG1vZGUgdG8gb3duIGZ1bmN0aW9uDQo+ICAgZHJtL2k5
MTUvcHNyOiBtb2RpZnkgcHNyIHN0YXR1cyBkZWJ1Z2ZzIHRvIHN1cHBvcnQgZURQIFBhbmVsIFJl
cGxheQ0KPiAgIGRybS9pOTE1L3BzcjogQWRkIFBhbmVsIFJlcGxheSBzdXBwb3J0IHRvIGludGVs
X3BzcjJfY29uZmlnX2V0X3ZhbGlkDQo+ICAgZHJtL2k5MTUvcHNyOiBBZGQgRWFybHkgVHJhbnNw
b3J0IGludG8gcHNyIGRlYnVnZnMgaW50ZXJmYWNlDQo+ICAgZHJtL2Rpc3BsYXk6IEFkZCBtaXNz
aW5nIGF1eCBsZXNzIGFscG0gd2FrZSByZWxhdGVkIGJpdHMNCj4gICBkcm0vaTkxNS9wc3I6IENo
ZWNrIHBhbmVsIEFMUE0gY2FwYWJpbGl0eSBmb3IgZURQIFBhbmVsIFJlcGxheQ0KPiAgIGRybS9p
OTE1L3BzcjogSW5mb3JtIFBhbmVsIFJlcGxheSBzb3VyY2Ugc3VwcG9ydCBvbiBlRFAgYXMgd2Vs
bA0KPiAgIGRybS9pOTE1L3BzcjogZW5hYmxlIHNpbmsgZm9yIGVEUDEuNSBQYW5lbCBSZXBsYXkN
Cj4gICBkcm0vaTkxNS9wc3I6IENoZWNrIHBhbmVsIEVhcmx5IFRyYW5zcG9ydCBjYXBhYmlsaXR5
IGZvciBlRFAgUFINCj4gICBkcm0vaTkxNS9wc3I6IFBlcmZyb20gcHNyMiBjaGVja3MgcmVsYXRl
ZCB0byBBTFBNIGZvciBQYW5lbCBSZXBsYXkNCj4gICBkcm0vaTkxNS9wc3I6IENoZWNrIEVhcmx5
IFRyYW5zcG9ydCBmb3IgUGFuZWwgUmVwbGF5IGFzIHdlbGwNCj4gICBkcm0vaTkxNS9wc3I6IE1v
ZGlmeSBkZzJfYWN0aXZhdGVfcGFuZWxfcmVwbGF5IHRvIHN1cHBvcnQgZURQDQo+ICAgZHJtL2k5
MTUvcHNyOiBBZGQgbmV3IGRlYnVnIGJpdCB0byBkaXNhYmxlIFBhbmVsIFJlcGxheQ0KPiAgIFJl
dmVydCAiZHJtL2k5MTUvcHNyOiBEaXNhYmxlIGVhcmx5IHRyYW5zcG9ydCBieSBkZWZhdWx0Ig0K
DQpTb21lIHJlc3RyaWN0aW9ucyB3ZSBtYXkgaGF2ZSB0byBhZGQgZm9yIGJlZm9yZSBlbmFibGlu
ZyBlRFAgUGFuZWwgUmVwbGF5Lg0KMS4gV2l0aCBIRENQIGVuYWJsZSBjYW5ub3QgZW5hYmxlIHBh
bmVsIHJlcGxheS4NCjIuIFdpdGggOGIvMTBiIGVuY29kaW5nIG9ubHkgcGFuZWwgcmVwbGF5IGNh
biBiZSBzdXBwb3J0ZWQsIG5vdCBmb3IgMTI4Yi8xMzJiIGVuY29kaW5nLg0KDQpSZWdhcmRzLA0K
QW5pbWVzaA0KPiANCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCAgICB8ICAgMiArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
ICAgICAgfCAyOTQgKysrKysrKysrKysrLS0tLS0tDQo+ICBpbmNsdWRlL2RybS9kaXNwbGF5L2Ry
bV9kcC5oICAgICAgICAgICAgICAgICAgfCAgMTkgKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjEz
IGluc2VydGlvbnMoKyksIDEwMiBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=

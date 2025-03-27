Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7591CA72E04
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A811C10E8AA;
	Thu, 27 Mar 2025 10:45:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nl4+s9Of";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ECA410E8A5;
 Thu, 27 Mar 2025 10:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743072309; x=1774608309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e7yciZvsf31fKQByKDrp8JapxK2XWaDbu/7l0lACaow=;
 b=Nl4+s9Ofb+SdXF8A4qLP245APP7Ojy+u7241tEJ7al2QAYRVdUZZpW1j
 h7j3Qt+Jx8eWqJeiQEe1f/DaaG6j3A9obgq8S2OxbcoX/mT3w8P7TxMv5
 Fg2YF3HQOK+NVwo3psUOiGqiY41Y+Z62+qgFnAcK+LzBZMzP3SuEEC/K4
 g1x3RWGyWfmw0AXW7kmPhGho/3r4f8FAmdoiSTIUpzLixn0CiAWSJJKCD
 Uf4DZhCawDqS0P6MqoB5m0eL2H6Ihknelr6GyHPcH//TUKurg2x0qsYk8
 lCUMvI7pNGQaQh6iiJgL37T+2YfMkFyNzurZgKUZjgZyJ8GGYV/tUiW2a A==;
X-CSE-ConnectionGUID: 3HgoYFoOQk+dEeKcN253+Q==
X-CSE-MsgGUID: GQX3Q0x/SZyBcFE9ui25JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44285502"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44285502"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:45:09 -0700
X-CSE-ConnectionGUID: UzRmA0lsQHis9Onqp3jncQ==
X-CSE-MsgGUID: m4jQR8CVRwWPoUXE1OvuVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="130171332"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2025 03:45:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Mar 2025 03:45:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Mar 2025 03:45:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:45:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cnVeyb/RKrGoGDTxu3ioDSJzezPMw2DS5/9QcsqtKIYj4RMG9Aef/fa92Mcrd1tp61pYDZXcf60cqFXqc0z5hp/Rw7v5UPWu74D8hjdH/5e3ctxTDrBl5mlhiqGbKoiinx5iGxppd4abWHsnhODnUk2P2sKmMlCtjp2WS9fcz/+0wZSVgKbpcgPhYqzSfE2Des848lHXnIBCT8sre7J953KXEUXkomQfL9Q5hfJA/DvBKyiDLBQ41vO/Nh7Ml48vt6L9qnHYEJE+hJzM7521bYZGy2G/u4+0n0uit76IbZv9JbsJmsaNy02obntFnh9/hdnqqJH9ys27WGAmI8/bKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7yciZvsf31fKQByKDrp8JapxK2XWaDbu/7l0lACaow=;
 b=A17yyF9tWc32D1iEWIMWj95QqoOOYPJffIG2D/mLDQsCZ5avO6LP/Wy3NRVCCh6Lex8rY+9Fy/WpLlMUad4g4CW+qS+L2ylQiIVZ8+l0GVB69KXWw1lBJZ6CmPi/uDcFpMxlLQvkGcJ/jtYbgovE7mx9ITB1htYWdMjnwBELd/ufRC0LHyiBolVXaZE//fDDbMoL9MJQ9Gu06tgD4yx7xocParVRMbeMDhZe5BYub18n3C+LV3HQq2PN8K+1Wk5phqD1pXg98sUrR3ReSzxAluFCOk8hLnzj6Dbzu3KdRypP79xK+lqzg7ACnjd3w7qzRePm5jSMU3j6HEbRc46bNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:44:52 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:44:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v6 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbmQZr4pSOJvvtDEik7yYsl2BlVLOB9Y2AgATiyUA=
Date: Thu, 27 Mar 2025 10:44:52 +0000
Message-ID: <MW4SPRMB005659EF9CC5AD4106AAFF53F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-6-animesh.manna@intel.com>
 <35361c9ba4ab85e9f703e590efa8e3a3ef1e2065.camel@intel.com>
In-Reply-To: <35361c9ba4ab85e9f703e590efa8e3a3ef1e2065.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: f78eef2d-c5d6-4e70-538f-08dd6d1c67fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?R0ZwZXVGRnJ0VDJrR3BLU2xSVDJKTG5CZWplQnVMaFV4cXd5L3hjMStQTjB0?=
 =?utf-8?B?TlpWTHNFd3NHWnE4UUJjampyQTNpd2ljQ1RjY1ZoaEdnd3BYUGwxckprUEFK?=
 =?utf-8?B?WkwzT2RVYmwwYzFHMmRLV0MzQjAwQXlYaWdIMUdPMXhTL1luR3RqdEpzcW0x?=
 =?utf-8?B?TVRzeUNqMVZhbFhaWEU4LzVqT3ZVZVVWZE04d3VLdFZDQmtXb3FCRlFrNlN5?=
 =?utf-8?B?Nnc1bFd1ZjhqNVBvTjZHVldXUE9oV012eDZqZ1ovZDBGQmtUODc1MDJoR29T?=
 =?utf-8?B?Y0IzR1ZBS2JmYjk1dnRiTXdKMDZoKzN2SGthZTNTdU51dEpRMEpMQXBVK1c2?=
 =?utf-8?B?WFNRbUFjL1U4bS9NMjdHTUE1TzBtNXByS1l2ZDhXNExNNWlGRFZNNWFGanpu?=
 =?utf-8?B?WVNTNmFyVTFhdmIva1hIUkZJNzdnQXVBblRqZWN3M1JiaklFK3l5dmhsMWhC?=
 =?utf-8?B?R0ZacHZzQUxaTnRtd0t3VWxwc08wU0tFVVhwZzN3RDAvVnRrTUs3R2F3QzBs?=
 =?utf-8?B?czRpcXJObC9ISGRRZG1TT3pDUXFKSTB5WUZaNjEyaFQzZFJNeGordDc2aG9E?=
 =?utf-8?B?Q2MxMFJtRUhQWHJLZWg0ZVMxODdkYmdUTlNFcmRaRVREempCOTNPeTFNUmNK?=
 =?utf-8?B?MlEydG1aUDJSc3hnOXFiTHhOSE93ZFlhNTNTWmw1UGI2ekVoSVZySE5iNTR0?=
 =?utf-8?B?YXRoVUd3cTM4UmhPWW94NStKbFhSMFEvcWFLK2kvVk8wRWVxbFJSRXJLck5i?=
 =?utf-8?B?S05rQnlBcFY2SERNdGF4R20vc1d1R1htQk5KcC94WHViOG1oL2JDanV5ZmhH?=
 =?utf-8?B?akdHVmdOZUxVc0hXeFFYbUdiUG5TRFNsY0Q0dDlCWXd5aVVneTNLS2p5NUQy?=
 =?utf-8?B?MFY2TTM2L2tGR3ZpeFRjeFkzOUxTSDBZdFVhamYweFZqdWMwamtWSVRqeU1l?=
 =?utf-8?B?V2s0dDJJcGRFUlpxYlUrMlNTVDBhT3FnV0NvKzF3UHZ4b2ZPRGN6c1hSeXFL?=
 =?utf-8?B?ZWVjbUFWcjE5ZkZLWmlrd1ExZldWN0pxYWJuZFBmTElER3FhbTBIVU4xcEZu?=
 =?utf-8?B?TldVVVZHdWhVWUV4QXFuaG1xUW93aDdkeGxYVWtIbHhPY0pxeFVLSVVEVHRZ?=
 =?utf-8?B?d1ptQmdrdFI3YVNueTZGTUY3ZUpzNmFDdlVvY1lVM2tITDNnMWJOM1BYbTJO?=
 =?utf-8?B?ZGFyOHF3WGtWYTlBV3JKSEJtNzlQR2lNYXlYbjJ2b1ZWNEkrRHMvVll2Zzly?=
 =?utf-8?B?SktPaUlIbFpuRmtiR09VYS9MSXZ6SENKQkhLRXZ3L2owKzZwU2ZMRU5hNDhk?=
 =?utf-8?B?bENERlBhdjJsVkM5bzFBZXpVNHZyd2JsZWUyWWpWbkwydzA3S2REWlNTYkVE?=
 =?utf-8?B?YURJamVrYTFkTnVJbjJuYWdoS2dkUXhKeEpXU2YrTmtQdVY1cGtPTXRCbFVo?=
 =?utf-8?B?Zkc5Nk94ZmxZRjc5ZWVRQ21heUsrYkV6UmN1WlNGeHRJYzZaVGJaeU01NUdZ?=
 =?utf-8?B?UUlOSU9UaXo5WTlLMTduc0ZvempnZWVPanB6M0I0TEZFeVFLNXhtWFhXclhH?=
 =?utf-8?B?QXJybzZEREw3TTlEbjFlZGNuTlZ5RXNyVkN1UHZwbVY1Q0EzS3NnWGtFVFBD?=
 =?utf-8?B?eXBsNXhTOXZkZm5ZVU5Vcm9pdFZsSEEyVmdiNWlKSVNxbzNDUFlGZlpTc2xD?=
 =?utf-8?B?ZStDK0dJZDltb0R1T3dDamJmSUZtQjF3K0NsRDFscnA2WmM0VThtVWo2Tmts?=
 =?utf-8?B?T0ZoYkxIUDY5R3QwaWROcmZKM1BYNDBRU1lOV1lwdGJ4UUtMb1hkVGpHTEY1?=
 =?utf-8?B?MC8zczRoeDdpWHFZa1J3YmhYRHpNOFRoN1hEMWp3OEZiWFppc09tVUh2b21Q?=
 =?utf-8?B?VUtCbXhOQTE1cmdBdlBVcXhYaENIaC83VEpISDlGaGE1Wjl3R2xoR2tTWURZ?=
 =?utf-8?B?UmYxVkFZblVCYjY0N1VGL2xvSTltVmxFYVBMU21SOFFWMUNYckpCbXgrRmZi?=
 =?utf-8?Q?HrO5AHnAR+bAEbENc0yvVnGSPIlXcA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEhNcmUzOWJrTkZZZldsWVVpdWo3MWhYcnVYdGdkL0M1TnhZa2NwVnpFdUxL?=
 =?utf-8?B?K2ZQTks5YzB4U2tGRE81MFBWZm1VN2FPekVLeDBQMVdVaTRYdlJoelZ0V0c3?=
 =?utf-8?B?bGlCMXJKT0tyeis4ZGZsZkdNUytmdm1mWmpuNFB1SXZRN0RRajhFcXFtTkd6?=
 =?utf-8?B?K281UUtzeVFqUHZPYldhWXpqVGk0MUp2M082WjZzM1FmUTNNL1B0NjFscFdy?=
 =?utf-8?B?WlZZeDREandDTDVmZzZsR0ZZM2JXYXBSbTRTUW1tUjgzbjBVRlBpTkowTm9R?=
 =?utf-8?B?NmxNQTZGQlkzYlJvUC9oT0JUOHd1UWoxZVNDbnlKY09qWEpDMERBU0lQV1gv?=
 =?utf-8?B?cGtQQjAzNkFjMUpRcjJhWCtYT0YzTmp4Vzh3MDhMc1VseHZ6by8zWUhCOVFo?=
 =?utf-8?B?UExrVG1Oemw1WWw4UGF1M2R4OWpmKzYwa1hKdFBhVHpaWXkxYXkyZ2M0Wkor?=
 =?utf-8?B?ZWhvTnliTjczTjZrazlkZTZjQmhoOEZybUZKM0IzTHZteWxHUUlLSVpjQ2Uv?=
 =?utf-8?B?UWRiZStHVDVGRTFyQk9ybGo4Nk9yaHJwanRxSVBUditsalc5VG9wSHZBMDl0?=
 =?utf-8?B?VW9mby9KbjBibm0rTGFFQXNMbzV3akZLcnJ0Yy93c1praEhtM1Q0ayt6TXdL?=
 =?utf-8?B?N1VmZE1yWld1TXBTZ0NheHlGeUJQcW5XbVhlcWNyYzZBWDFQcFBxbFM4cTRy?=
 =?utf-8?B?dUtmZ2JlSVNvZnlCYkljelJwNWNCZkYvSFJaTVVIdEMvN0JqK3dVdDF1blhN?=
 =?utf-8?B?ODlKZnVONVdzdHllQm90dm41WjZtTUhRZUlMMmhVc2FBSHpZZFZiVnI3SWJF?=
 =?utf-8?B?Q2hDcjFtNGNybGtHQVRBd2RkSm1rVE9HcGlFVmc3b09KYWlzaEdxdnEyYUpk?=
 =?utf-8?B?RDBTM0NQQW1leHdBMCtKY2hjbGQ3V2lEcTNFRThPSVVqYzRxRHhuK1dsS3pp?=
 =?utf-8?B?VmlCNWkwT2x4eWpnMzJFQnpGOVIrS2V1Q2RMa3JVaHlwM29FdU5HcUlSQ0ZF?=
 =?utf-8?B?T3VDdFNPOWpkQ1FiczBJZUVKQ0hyNkJaWmlWeW4zN3pucktKdEpINlJhK1kx?=
 =?utf-8?B?TDZYUjI1TWwrSGFyWDA4VFoyYUZLcUtzU1B0RjAveGtoSldXQU5IVnBUeVpG?=
 =?utf-8?B?K0FGakd5OHB1eWNoS3NpVU9wWnhhclFpMyt2blVUSzNzZlJlbWFVV3dTVTl6?=
 =?utf-8?B?MDhvUHF1RWlQWks5aStINkxZeXZibWV4K29PdlY3SXlmSHVLSi9FU0dINjNF?=
 =?utf-8?B?VUxzd3pQcmd6M3BTdmFyYmgxRGN1SDJzcXRjelI3ZVZuYjhMVEZsRFlOUDV0?=
 =?utf-8?B?cjlPd0F6ZnVkWGNiQ0RXWDJoMmdIckJ2UGwxbmlhRkhzY2YzbCtvUlVPTGsw?=
 =?utf-8?B?aUZxWDJHTlBva1pKcWhVZ2U1SzJYZWNpeUF4WjcvWFMxQWx3azNKa3I0SWNL?=
 =?utf-8?B?VFNlRyt0dEYzcVRUeWo5aTh3VWZXZndJMkpWWWlyQ3RJN0hQd1VJdDcwWHVn?=
 =?utf-8?B?UUxCTzZ2MTZrd3hpd0NOS3NyNjU4K05PK29FL2F5WE1RZi9jeEtwL09Fa0l4?=
 =?utf-8?B?aS84S3lod21PUWx2UFNpQ1Y2VUF1dUxQa3FkNUs1OFBFVTBraVZoY1ZNRXd0?=
 =?utf-8?B?ZmpUMzhuTEl1bk9haUU1N0dzL1c3WEpOZWVtbkZhZGlkbEF0MThOeXFGa2ps?=
 =?utf-8?B?QjZuaXM1YmUxVy9OOFFGMmMzRGRYbkFTOVY2c3hqSUk0bWU4N2NUNzNoZWNp?=
 =?utf-8?B?RUpUK1NldlZvc1lzdHF2TSsyQmZCWWptNkpCY3RRT2RPL0tQTzJ5TFhlOHRP?=
 =?utf-8?B?U3ZtSzQ3L0x4S2tEeVVObHk0VUVjQUl0bVgyNjVmM1NiZEFNUnJuc24wUHJE?=
 =?utf-8?B?REJpK1NVWHA4S2pxZFRtNE1PZU1NbVRhMDVoRmxSRHZiTmNmSklhVVM4SS9D?=
 =?utf-8?B?SWhzdUxUZTFrcGdDWFYwTGNtKzExbjJRWFNzZXl6dkdxRmh1YlBHUWl6SFVS?=
 =?utf-8?B?RFhZSmlzM2J2bUhIWk5IaGoxYXRseGo5cUxUR1lXNTZOZEZTdzlhM0dRSmpZ?=
 =?utf-8?B?d3BLL2djNTF1dUE4VmZVSHZSazNNT3lTbzdsSm1qZENJQTdTa1piVE1QeHQ2?=
 =?utf-8?Q?cqlo9gZ9f0CM2lO/8fR56o9QQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f78eef2d-c5d6-4e70-538f-08dd6d1c67fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:44:52.6892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fgnzFv3eikBcF9WO3cVIKTeLfPivzWX+NMJsnCoakq2EptMGURrynug+SEjhBg8cO/iPM9B1YOSGhkXZ0Ig0fQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMjQsIDIw
MjUgMTozOCBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2
IDUvOF0gZHJtL2k5MTUvbG9iZjogQWRkIGRlYnVnIGludGVyZmFjZSBmb3IgbG9iZg0KPiANCj4g
T24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiA+IEFkZCBhbiBpbnRlcmZhY2UgaW4gZGVidWdmcyB3aGljaCB3aWxsIGhlbHAgaW4gZGVidWdn
aW5nIExPQkYgZmVhdHVyZS4NCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4gdjI6
DQo+ID4gLSBSZW1vdmUgRk9SQ0VfRU4gZmxhZy4gW0pvdW5pXQ0KPiA+IC0gQ2hhbmdlIHByZWZp
eCBmcm9tIEk5MTUgdG8gSU5URUwuIFtKYW5pXQ0KPiA+IC0gVXNlIHU4IGluc3RlYWQgb2YgYm9v
bCBmb3IgbG9iZi1kZWJ1ZyBmbGFnLiBbSmFuaV0NCj4gPiB2MzoNCj4gPiAtIFVzZSBpbnRlbF9j
b25uZWN0b3IgaW5zdGVhZCBvZiBkaXNwbGF5LiBbSmFuaV0NCj4gPiAtIFJlbW92ZSBlZHAgY29u
bmVjdG9yIGNoZWNrIGFzIGl0IHdhcyBhbHJlYWR5IHByZXNlbnQgaW4gY2FsbGVyDQo+ID4gZnVu
Y3Rpb24uIFtKYW5pXQ0KPiA+IC0gUmVtb3ZlIGxvb3Agb2Ygc2VhcmNoaW5nIGVkcCBlbmNvZGVy
IHdoaWNoIGlzIGRpcmVjdGx5IGFjY2Vzc2libGUNCj4gPiBmcm9tIGludGVsX2Nvbm5lY3Rvci4g
W0phbmldDQo+ID4gdjQ6DQo+ID4gLSBTaW1wbGlmeSBhbHBtIGRlYnVnIHRvIGJvb2wgaW5zdGVh
ZCBvZiBiaXQtbWFzay4gW0phbmldDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jwqDCoMKgwqAgfCAzMg0KPiA+ICsrKysrKysr
KysrKysrKysrKysNCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaMKgwqDCoCB8wqAgMSArDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMo
KykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMNCj4gPiBpbmRleCA1ZGYxMjUzYTZiNmMuLmRjMjQ3NzI3NDNiOCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTI3Niw2ICsy
NzYsOSBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJaW50IHdha2V0aW1lX2luX2xpbmVzLCBmaXJzdF9z
ZHBfcG9zaXRpb247DQo+ID4gwqAJaW50IGNvbnRleHRfbGF0ZW5jeSwgZ3VhcmRiYW5kOw0KPiA+
DQo+ID4gKwlpZiAoaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5sb2JmX2VuYWJsZV9kZWJ1ZykN
Cj4gDQo+ICpfZGlzYWJsZV8qIHdvdWxkIGJlIG1vcmUgc2VsZi1leHBsYW5hdG9yeQ0KDQpTdXJl
LCB3aWxsIGFkZC4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXINCj4gDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiDCoAlpZiAoIWludGVs
X2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gwqAJCXJldHVybjsNCj4gPg0KPiA+IEBAIC00MzYs
NiArNDM5LDMyIEBAIHN0YXRpYyBpbnQgaTkxNV9lZHBfbG9iZl9pbmZvX3Nob3coc3RydWN0DQo+
ID4gc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4NCj4gPiDCoERFRklORV9TSE9XX0FUVFJJ
QlVURShpOTE1X2VkcF9sb2JmX2luZm8pOw0KPiA+DQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAraTkx
NV9lZHBfbG9iZl9kZWJ1Z19nZXQodm9pZCAqZGF0YSwgdTY0ICp2YWwpIHsNCj4gPiArCXN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGRhdGE7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGNvbm5lY3Rvci0NCj4gPiA+ZW5jb2Rlcik7
DQo+ID4gKw0KPiA+ICsJKnZhbCA9IFJFQURfT05DRShpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJh
bWV0ZXJzLmxvYmZfZW5hYmxlX2RlYnVnKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArc3RhdGljIGludA0KPiA+ICtpOTE1X2VkcF9sb2JmX2RlYnVnX3NldCh2
b2lkICpkYXRhLCB1NjQgdmFsKSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IgPSBkYXRhOw0KPiA+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19p
bnRlbF9kcChjb25uZWN0b3ItDQo+ID4gPmVuY29kZXIpOw0KPiA+ICsNCj4gPiArCWludGVsX2Rw
LT5hbHBtX3BhcmFtZXRlcnMubG9iZl9lbmFibGVfZGVidWcgPSB2YWw7DQo+ID4gKw0KPiA+ICsJ
cmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gK0RFRklORV9TSU1QTEVfQVRUUklCVVRFKGk5
MTVfZWRwX2xvYmZfZGVidWdfZm9wcywNCj4gPiArCQkJaTkxNV9lZHBfbG9iZl9kZWJ1Z19nZXQs
DQo+ID4gaTkxNV9lZHBfbG9iZl9kZWJ1Z19zZXQsDQo+ID4gKwkJCSIlbGx1XG4iKTsNCj4gPiAr
DQo+ID4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IpDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7IEBADQo+ID4gLTQ0NSw2ICs0
NzQsOSBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gPiBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiDCoAnCoMKgwqAgY29ubmVjdG9yLT5iYXNlLmNv
bm5lY3Rvcl90eXBlICE9DQo+ID4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gPiDCoAkJcmV0
dXJuOw0KPiA+DQo+ID4gKwlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2RlYnVn
IiwgMDY0NCwgcm9vdCwNCj4gPiArCQkJwqDCoMKgIGNvbm5lY3RvciwgJmk5MTVfZWRwX2xvYmZf
ZGVidWdfZm9wcyk7DQo+ID4gKw0KPiA+IMKgCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfZWRw
X2xvYmZfaW5mbyIsIDA0NDQsIHJvb3QsDQo+ID4gwqAJCQnCoMKgwqAgY29ubmVjdG9yLCAmaTkx
NV9lZHBfbG9iZl9pbmZvX2ZvcHMpOw0KPiA+IMKgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCBi
ZWY1NGIyMzI3M2YuLjBiMTA5YWFjNTMwNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE4MTIs
NiArMTgxMiw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gwqAJCXU4IGF1eF9sZXNzX3dha2Vf
bGluZXM7DQo+ID4gwqAJCXU4IHNpbGVuY2VfcGVyaW9kX3N5bV9jbG9ja3M7DQo+ID4gwqAJCXU4
IGxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltczsNCj4gPiArCQlib29sIGxvYmZfZW5hYmxlX2Rl
YnVnOw0KPiA+IMKgCX0gYWxwbV9wYXJhbWV0ZXJzOw0KPiA+DQo+ID4gwqAJdTggYWxwbV9kcGNk
Ow0KDQo=

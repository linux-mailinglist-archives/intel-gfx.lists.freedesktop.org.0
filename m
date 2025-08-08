Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B44CB1E45B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74C010E8E2;
	Fri,  8 Aug 2025 08:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQMVUmzg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BF8E10E8E2;
 Fri,  8 Aug 2025 08:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754641626; x=1786177626;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mqgq0XObViyHnz5Brt2lULbQeIE5C/HUEZP3sK81ML0=;
 b=VQMVUmzg9C6B2mRcsj/CsWPeu5RLVA85gSfipWEAxtL9iuRzzJK6FE/Z
 FV6pgOMWy2nkVE2cVA8QOi95fAzka58ngazI8FbOd3HMKHiQPuOzGLli6
 Pgen/nrcq/paP21flsXKUSLHFtfahiuIEFzfP3+fm9u3K15A6XA8P7SMC
 lTzrEXam/87uhlPE466Om3R0eg0egFOusUJlHaQdXpAZYp1kkvOrfYew4
 VutCSbwm/EHyBq6wK4PXd24AdBvedyai5tB4swd95dNPnHuMMI2upUlbM
 7pCOKP2vAGEygdzjP3IJJPRE02Cctvw5lpFO5B6MeJOwhsgoRYv5emren Q==;
X-CSE-ConnectionGUID: /KjLusAuRbOVv0kP+gcGeg==
X-CSE-MsgGUID: m+OcefaFQs+ClzPeafdkHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="59601809"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="59601809"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:27:06 -0700
X-CSE-ConnectionGUID: lnODcbIfSyaIhzDN2rOeVw==
X-CSE-MsgGUID: BnWDA9EjTvGSPyVY2oxFoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="196105105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:27:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:27:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 01:27:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.60)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yDYBtKTVgNU2DD86l4aqWuI/tf54sa6bG6DzAl+uT/zd88H94DGpwOReW8BHOGB8p2S54u1sRgxvgLT+eLH0xgP5ky+/sO6jSd43iXW9+QEKE361YQY7eQ/w8lGVC0FRy2qqYtWl9u901EmS9La9Mra5dijMvPvPNnSbjvTFJHR+/gvZiaErBXqCQbgVwE2RLlMmfAVuz17LP+imEfyTMSLAo+9Q5ZT5dT2obr8SXDKuz5TIS4At6xVQr5kg6u5bSFR7pkbNqoo/cKkGP9WZTAi1IVtbhLkYINRztqfrUS4gPEOj79uWB6WbqN3APmVFRFzxb1CXnXX9sWwhUNWjaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mqgq0XObViyHnz5Brt2lULbQeIE5C/HUEZP3sK81ML0=;
 b=B6fHQPIVc+aE8ZtXQ26crdR+tfEIWsdSqM8gnx72GMBOIC1lK3GZYpivSN0rAZ/P6b7NWh1RIrIu3trIIZiqdVHjiWIYtJhsA5EPplaBvy/np90H0ydxTbQTzp/BrWkznip2kIK0S9LxBR/8VfIO5p/e12I+sw2YxG848brHxXd6Dbqv2HvJebz+wvmZZk7kIzWFH1DaB4l+TP1Vmv/ZAD6pHCmYURJWOPhqNq+rwKsgR6WFfqRJapDWIrdt66KH9ezoVOePaMHlYNkHP4Oc8wQM/ENiuw4o6nbCEK2AOHJwL4akxTkPerZ0Afrsv2HYK+CrpseIHswEongQCz6fUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4694.namprd11.prod.outlook.com
 (2603:10b6:208:266::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 08:26:58 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 08:26:58 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 17/19] dmc/i915/tc: Report pin assignment NONE in TBT-alt
 mode
Thread-Topic: [PATCH 17/19] dmc/i915/tc: Report pin assignment NONE in TBT-alt
 mode
Thread-Index: AQHcBd1yBuX3fAjTnEm62PO+FjLvRbRYcJjQ
Date: Fri, 8 Aug 2025 08:26:58 +0000
Message-ID: <DS4PPF69154114FAADCF6A2C52FDA7E9A69EF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-18-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: 1a6fe5e1-f2eb-4b0b-9cab-08ddd6555756
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?N3BRd1lVaXRyTHdZZThoR3d6OTFZRExFck5PRDhQVDhNM0I5VFpLa0J2MEJQ?=
 =?utf-8?B?eGg0OEMxeG9hRXBBMFNiSjQyd3FlczFucUc0MDVtbWZHaEFIT1NaWEZSY3JJ?=
 =?utf-8?B?RTJuQU4yS0xsYTdoOXhaMTdQYVhvRVNqRVBZMGZBOXNMNGJjVzVMNHVMbDZz?=
 =?utf-8?B?QXVnRk9IVTgvaVBFSC9pM2dpQ21KTmdZOTNmVWdTM1R4bU92bUtqY3FVVERK?=
 =?utf-8?B?K0U3ZW5VNEZhWVNxblRBam9jZnlPZE53aTQ3QlFiNjMxdkNsV3J0QzhuWWZj?=
 =?utf-8?B?cm9EL3pzb1NON3N3bWdPeVZSeEtrbndGeVlmZWtpY2pYZVZ6Z2h1a040cVh5?=
 =?utf-8?B?Z1lsSm0yamk4cExJS1Z4Vmhzclh0N0hxT2RuY1p0YnM2akNERGUzMVJ3Q2x1?=
 =?utf-8?B?Wi8vNmhsbndrQnVtR1BMMzJiVTdXR1ppSExUQVhqTUVRQ1UwUk5MNmZCY1pj?=
 =?utf-8?B?a1B1Z1BwWno5UjNzblRVZkFSU1RiTEI3Si9Mc3Nab1JramVwMXVTODV3Tjgr?=
 =?utf-8?B?UnhxdWd4MHlvMmZESmh2ajNQeWNGcW1FL2tqYVVoY3d3WmZNRWtqM05TQzlQ?=
 =?utf-8?B?NXc4WEVYR0phRGpxMnVQS0ZBNWNDNGc3R3JZRFhvajZuMFpSZDFQS3Vqd0hv?=
 =?utf-8?B?NE9NQktReW1OKzJ5MkUvamhpaUl2VTU1MHFFaFRETE5NMkYrQWU5a2ZRZDN2?=
 =?utf-8?B?aTZ5ZzVzY0VwVXF5cEZ1c1FuTjF5RXE3SnNYaW5HVUNoY3N5OUVkNExOQTVB?=
 =?utf-8?B?YnFpUVdaWm1TQmpNblRITXhOaUx1c0NadWI4SnA5QlBTemVhdm1iSDZYb1Rh?=
 =?utf-8?B?b2hEc1d4eUpwV1o5TGMvQUlpNmV3alo1Z04vUzZCQkhFMlN2WEhhUlFiRHVr?=
 =?utf-8?B?SDkxVTdMME5SS2gvRnVJbTJJYmFla1JqUTVGb2FhR0QvMFR1ZDA1b1lmNHMz?=
 =?utf-8?B?b1VJRDFGK3RYOTBSQ0dKWWdzek5paVg1bW1GRGpidVJVNDJKMHRQRS9XZS9o?=
 =?utf-8?B?anNFOEYrV1ZLVmdYWFJRWVNCV2NuZy9DR3ZKSXZSUDFGOGV4NjlWcEcyN3h5?=
 =?utf-8?B?Y2h3STVHblpacHJrUzBRYVR2ZktIV1NSdHQwanhUVjJBVDZGY1NjUW8xQVVR?=
 =?utf-8?B?Vy83YWxNVEZ5RTZYNXRDMk95cFZUNVU5d25DY2tRQmdORmpyb09OdzVmSFAw?=
 =?utf-8?B?QVI2a1NpTnUrQzFERGIrMjd5dXZIWlYvZ1k4NndwYmtuT0R6aDE4UHZyOHNP?=
 =?utf-8?B?Z1k1MGNEVlF5WWhYVXB6VXY0YnUxL2dPcHQzeWhSNjJqUUcvVzhJemloSGtB?=
 =?utf-8?B?MGNISWpVVW1McWpucXRGR0trUTJ0N3QvM2dwT3JvYkU2V2FLWTd4YkY2cmxZ?=
 =?utf-8?B?NGdqZGVYSFQxWkxBUmNaZS9ybUJ5cWhVUXJuM0hyd0tqamlWSWxZaHVQcmJv?=
 =?utf-8?B?Sldncm44QktDUHBtNmlLTXExRzYrMkJxM2VHZDJFYnJCVTJrb014eWRUTGFG?=
 =?utf-8?B?bmlvc2NKVE1qNmU5N1JCdWlLeVJack5ZVmd6V1ZXMVhGQ29aVSthQitDbEFL?=
 =?utf-8?B?Zi81MlZ6U1ZjcU5ncXRqWTM1clJxTFBkWmxFQnlkcDYvd2Rpd3RSQnVBVW9X?=
 =?utf-8?B?VlB4TmNBU2ZpeEpab0ptOVVSeTJ2VkJmU0NlRmhEOGtPS084Tk9mRUNlaytY?=
 =?utf-8?B?bGNYVnkrZDN5NlJMKzNaUm9qUzF6bGgxVEw0eEI1VG1JN0t0VmxkcFZSNWp4?=
 =?utf-8?B?VFJ4VzdtdXlMYTI1NWpiM2xBRjN6RXB0ZW1tb0x1QzhZL3ljb3p5azN5QTZD?=
 =?utf-8?B?aWNzUkJPaHZwYkloSWgrSGQwdUhPdkovdlVTVDU3YmFmR1VISWhpazBIclJx?=
 =?utf-8?B?SmtMa08vd05ORERQUG5Nd3ZaZTJYbzF3YUFLUXdTSjJFa3J4bE44UzZ6R292?=
 =?utf-8?B?cnI1R1Z5aS8wNHZXMUV3Ry93Tk9oZzBtSk1OZVBBNFZZeWFiVkFhSWkvUWFZ?=
 =?utf-8?Q?msAHRYPJ2oNMHEpxNtdJZM36OUa9Fg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1dBL0VaZlRrTk5xcm03UDFZdGg4d0JLei9MRHBpTmY5d0w3VGt4UzlKN3Bs?=
 =?utf-8?B?cGxZUldCNEp2U015SW1waGZ5Z2xLSlN3WGRNcmxMWnhXNmc4RkdFSmxmczNo?=
 =?utf-8?B?MVdmeFRNSFhGOGcyWUVLcG81SC9meXF2ZHVZeVNQOTVva1pWdUExUWxaRUE4?=
 =?utf-8?B?QUZaU1ozbGhmREdvbWZnZzN4YWJodlNsTUREaUZ2b1BhY0lMVjBrMGt1RTgz?=
 =?utf-8?B?SHMrVGkySnBHY1NsUjNEYmxsZklFWkdmNFhEblZOaEkrVjAyMnN6TUR0cjgy?=
 =?utf-8?B?Q0ljUG5uVTFSSFNPbzVXY01GVitGMUlqbU9sa1cwZmp0VENUQSt6UkFxZzZM?=
 =?utf-8?B?Z3Jpay9GVXVhMUgreC9XZ1Ivc25mV1JicDBSU2haV2RiTnZ2Sm1xNGFzM0l1?=
 =?utf-8?B?eEZrMko2ZFpQNGVmN0d3RTIrd2huaGhkVWpuMlh2Zm8xNHY5dlIySFJ1aWRD?=
 =?utf-8?B?TVVlVWVIL25vYWxjSXB0QzNiZExwcWJnS3dzY2IrMzJBVkdvb0RZREM3WFFO?=
 =?utf-8?B?RFZvS0hrNjJnQ3A0R1NKYWhtSENleGdRTHhmMnZuNGsrV0xZODZQc3o4aVQ1?=
 =?utf-8?B?ekhhaHdtWThLdnllU0l3ZFo1NnkrK3VKTEgvZURMZ2lyTjh5ZU1DdFNBeEtV?=
 =?utf-8?B?N3RxWkpMdk1YUGk3VC9HWXMwZFFVL05rUHdRR1g4cFIvVFc2dFFtZmh0eXU0?=
 =?utf-8?B?aEM5RHVNVEJJRk9PWHl4R0xGUmlEOWlwYlo2bzBhcllHNFF2cytqVXRuK3Q4?=
 =?utf-8?B?ejhmQ1A5bDdxT0M0K3p1cHMydmd0L0tnTDB6a096WitsblRMSFl3dkY5NHow?=
 =?utf-8?B?NExzTEZtRmJVUW4xOFhMaDJoWE9XYnl4OERjeWZFenoxeisyNDZaSEQ2ZjZ6?=
 =?utf-8?B?cEFDa2dXNXBxRGwybUxYZ3hXaEh5MThhWE9KMVJGNXJzTFpDU3ZTc2lXeUFP?=
 =?utf-8?B?Z0ZtT2JaVXFVOHJqMDl3SnFCNmIzTWFtTEozZWpOano4WXhuMFQ5cUxzRVNZ?=
 =?utf-8?B?ZGVIc2NDZ2hRTzFaODRITHhFcnJXbzVlekhoUmhId2l0UGt1MzdRUGpobktr?=
 =?utf-8?B?UXhpZzdzazBIclowVHVyZ1Q3TjIxdXFhb0hRQmVLalNNNGFHS1pFVHQ5cGZy?=
 =?utf-8?B?TXIxbS9RYWR2OUhvTlc3OGxUZmtBcVorbGdJeTMwY1QvNThJUG5jYzQ0T0da?=
 =?utf-8?B?T3Ewdmo3K0ExWjZHbFovNTZlc0IzK0dtb3VyTnFaYlJiKzEvK0VYdmdUdEZY?=
 =?utf-8?B?eDErTXg4QW5DMjIwbForQTZJS1BVeS8xcytpanduRnlGbEl2R044L2J0S3JV?=
 =?utf-8?B?czNyOTZvWFVJQThyWmkvaVZRc2g0Si9KQW81Y0h6c0ZkRTFnd05yT1FveW5i?=
 =?utf-8?B?L1c2UzZEaEV3VXdOZkNVUW50R2NkMVZMTklscVVVSStpbWxwQzVWdXRRcDFE?=
 =?utf-8?B?emtYSzFLeSs2MGd5dG1mS1VOR3J5WitVSk05UXI1NVVDTHdvY3JvUGFPTmFP?=
 =?utf-8?B?aGNHOE5zWVJ1cVVYdk52Z2xncnFiUTFCMEMzZ3ppdXk3RnFCS2RXTm1QRk54?=
 =?utf-8?B?cGFqdHZTRzJCdkxyNDd5RlZ4TWtHRW4vZXJFelpVUlJEYzlVaEw2N2Urd0Er?=
 =?utf-8?B?UjBXb0ZQUERIVFk4b05qMjJFOGdVTnF2V0d1TGxaelIyOUtHNVdmdWhVdzFx?=
 =?utf-8?B?c2NrQ2hkT0Q1Q29kZ3NmYlB5QVZZVkJzZDYycUtiUXVTT0VDVjBtOFFFYnlt?=
 =?utf-8?B?c1F1cE1peFJ1aEU2MDMvODJvcHk2alJQZVlIU0lzTkVOTlovMmltaTBxMzhk?=
 =?utf-8?B?UjR0V1R1bndqWkxBbUpMc0k3elYyQyttd092d29TeDllYXVCVzJLdmd6aUxS?=
 =?utf-8?B?YXlMT0cvRnBobXpmbVdpWkFUY3dWK0NicEY3UVlpalpEc1QxQnVOYjJNMi9x?=
 =?utf-8?B?d05jNzBwZzR4WGswS1Z2MGk1dFJUSTRZNFh5WGk2c29VSWVqeVV6dElUdEpy?=
 =?utf-8?B?Q25aV1o2Z3psN2NDaXdqTVA4empxMFVRY2hPWkpwVld1YVU3UnFvaVMwQXdv?=
 =?utf-8?B?cmx3K3pPZjNhNmdHRTBNcUI2cFozU0RvRzM4TVJZbGgybXNBdUh1VkpLVDZ0?=
 =?utf-8?Q?kDrxSFjT9/4nAv8eweIWXWW/8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a6fe5e1-f2eb-4b0b-9cab-08ddd6555756
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 08:26:58.2257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cAznuzc5Ep3CysC4GG5cqDsQ/dUymOI23xztHdpDkt6NaMBGwf7htyVT7tywa5GSdXQJcEnK4s3cDvSsdXicuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxNy8xOV0gZG1jL2k5MTUvdGM6IFJlcG9ydCBwaW4gYXNzaWdubWVudCBOT05F
IGluIFRCVC1hbHQgbW9kZQ0KPiANCj4gVGhlIHBpbiBhc3NpZ25tZW50IGlzIG9ubHkgcmVsZXZh
bnQgaW4gY2FzZSB0aGUgUEhZIGlzIG93bmVkIGJ5IHRoZSBkaXNwbGF5LCB0aGF0IGlzIGluIGxl
Z2FjeSBhbmQgRFAtYWx0IG1vZGUuIEluIFRCVC1hbHQgbW9kZSB0aGUNCj4gUEhZIGlzIG93bmVk
IGJ5IHRoZSBUQlQgRlcvZHJpdmVyIGFuZCBzbyB0aGUgcGluIGFzc2lnbm1lbnQvY29uZmlndXJh
dGlvbiBpcyBtYW5hZ2VkIGJ5IHRob3NlIGNvbXBvbmVudHMuIEEgZm9sbG93LXVwIGNoYW5nZQ0K
PiB3aWxsIGNhY2hlIHRoZSBwaW4gYXNzaWdubWVudCB2YWx1ZSBpbiBhbGwgdGhlIFR5cGVDIG1v
ZGVzIC0gcXVlcnlpbmcgdGhpcyBieSBjYWxsaW5nDQo+IGdldF9waW5fYXNzaWdubWVudCgpIC0g
cHJlcGFyZSBmb3IgdGhhdCBoZXJlLCBieSByZXBvcnRpbmcgcGluIGFzc2lnbm1lbnQgTk9ORSBp
biB0aGUgVEJULWFsdCBtb2RlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IGNkNGYwMTc5
YjhjYzQuLmQ4NzQyMTc1Mjk5NTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMNCj4gQEAgLTI4Nyw2ICsyODcsOSBAQCBnZXRfcGluX2Fzc2lnbm1lbnQoc3Ry
dWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCXUzMiBtYXNrOw0KPiAgCXUzMiB2YWw7DQo+IA0K
PiArCWlmICh0Yy0+bW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpDQo+ICsJCXJldHVybiBJTlRFTF9U
Q19QSU5fQVNTSUdOTUVOVF9OT05FOw0KPiArDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID49IDIwKSB7DQo+ICAJCXJlZyA9IFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KTsNCj4gIAkJbWFz
ayA9IFRDU1NfRERJX1NUQVRVU19QSU5fQVNTSUdOTUVOVF9NQVNLOw0KPiAtLQ0KPiAyLjQ5LjEN
Cg0K

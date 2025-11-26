Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEAAC87EC7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 04:18:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C738310E4FE;
	Wed, 26 Nov 2025 03:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RzsY7phl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1734610E4FF;
 Wed, 26 Nov 2025 03:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764127130; x=1795663130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xrebF3oryl9dE3Ux/mrTQBM0GscZuhHoW9juh0jgWg4=;
 b=RzsY7phlwdsD/ZtHzVh8ryWW3Dlc44HH4XqXlET92hMiIUFYF2D7CfqP
 fSREVLZqjVUfVUNgs2a3YFPoEYxp2mwbPjsX+dIdCTinwOgCPdoZaxkVe
 aMEDUswS1kNjMpXk2NwnbXsHn+oxDM1sG56gYXcjMC22dcQBWmUv8xRfs
 T9xfyFaPtsoGzQs9DUml7PYWp/DhauRaFStK8C+G6Z2W1dxYdC0F3QxfO
 H4o7YXED/ZSvz4lh90VbIBrcOB2ZOeDITX9CrzilACvb1zLvIOS3f/Lhl
 KVZaIVMleABeCAmL/dlZTBeKUTP8rO6rbn9ZY8YC8hgLI+tTKft8c1kHN g==;
X-CSE-ConnectionGUID: +lNa5FqqQGKSRsRLs5i8Bg==
X-CSE-MsgGUID: Yo7zygw5QGaYAG+XwRjxrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66103031"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66103031"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:18:50 -0800
X-CSE-ConnectionGUID: sPUBGiC9SJagj5Knsl8UMA==
X-CSE-MsgGUID: MY8Qvsg+QRanGzT75iqjnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="230081983"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:18:50 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:18:49 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 19:18:49 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:18:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qrVROS2LsCOjgwjLDySzOdyOSoH+5fub0KoEPbRgivMTLZzaBv0fwbXxg8MnfaUwvDngRvaxMmbZE3SiRFlkD4Ttrl75Awzbu7fEMFbaQ2sRVvW3kkK2ivAO1yBc3W6smRBn86zLcWYbM7gB7zhO+T1RQLpDh1w0fK4tFYIyUsTYRillhCGdSmCO4Hr7nCZSGE9ZrlbSv1dXHJb9Dm9unLhBTFTPaYLsVoiw0mTBJMRtqUKETnGpR6UFhIKRclAlUWzIDrR/Lw9pXJSoBw6h3dJSHFaVJ37q4tYBOgd9i5LIkgIuuA9ijDax41+lDk2Y3QvLNStJKGkvVwLsj1aSxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t234ZsJIn71nle7attnSm3eNBMmts2OAS8S9UGSx57Y=;
 b=sx9CTCzNoP5SXqbwHKaqYnqljcwzVCfrOYFE6gEZNElF5srKgL5TxzWgOyydYy0EE+1dp+4OGy1vB4x0ckPk7v86KSmRNDRRbD2/qVgMOQrluEm2xScUa7sU21YfYAs7untxClXkSJ77Zys8swgf8F3JEBk+2I5TNXniaD8NNW3++Sko3CxhfzNLycTloYeS9yyyo11XMXi1QhGVHElphieK+NQWWj6HUkBpZN7G3hkyIcJrnYDQECzxQeLT1DLsIIewzYCdTfO8MzjyTAUOFUkZ+bspx63IPHk54BlhhAgR5HL1d6F3jFZmH3qIpXNunM//A8YmjCdHdu7cJSMJog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 03:18:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 03:18:45 +0000
Message-ID: <1c6e6b37-8258-4274-a96a-9826790cf87d@intel.com>
Date: Wed, 26 Nov 2025 08:48:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/18] drm/i915/dmc: Add pipe dmc registers and bits
 for DC Balance
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0164.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: f6cd4184-87dd-4808-bf2d-08de2c9a821a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bE5QcWtFVW1iWWFBY3pUVnVnaFlyMGNONjVtcElXNlk0RTI5Nm9KUGxTUnB1?=
 =?utf-8?B?d1JJMkFJTi9YeU02T1E3Z21zaUdjelg0YXphU090eEtkOVNMS0pQWGNRWit6?=
 =?utf-8?B?ekYzTkx2NCt5cGNZcVhHOGdQWjNBRWlvMk0vUmJ6TE1GcnROK293RVJJU3RQ?=
 =?utf-8?B?NWRwNEZBL1J5WWZXekFwcllyZGNOaS83OUVCN1dhaXdmUWtpNXBoc2hJR0x6?=
 =?utf-8?B?M21icTRHNHZSSUlHRUxsS21Ia1lPZStZaElaNTh6RldxZlVPYktEZ21aUlN5?=
 =?utf-8?B?ZFR4anlWNk5RSUg5QnhqaFl4azN0Rm1xVU9iK2JrOEpTQ1VTbVJuRjl3M05X?=
 =?utf-8?B?ekljODdVZ0FXYWVxNTR0cFcvYnFXRWxmZXM2NllmOFMyc2FDRlNUSmQ4WVdP?=
 =?utf-8?B?Uzk5d2JtOWwzLzRVSEo2TzNLWUlZbHBPK3YrbVdUVjFVV1g0NFZFR0F0RzVt?=
 =?utf-8?B?QldBbkFKUXQ2V3drQVhvZWZ0T1lGSVN4c3hOTTVUV2ZXNlVXeFJyaWNERWZj?=
 =?utf-8?B?a3ZWRXIvNk9md09Bd1dncGlacTlkYUdTV2daSWtHV2RCOHMwQ0VYMzY3ZUdY?=
 =?utf-8?B?aFJYY3FsbGRLS2dNM2U0VU1LcUluMUp5REFtTDZrWEl6elZFUUsyR1lVeDNu?=
 =?utf-8?B?bG5uQ2pWNytTN24wYTJOQUVHdjRtQ0dxZ3dkUlN4bUZseFBoU3ZGMGxBOU5V?=
 =?utf-8?B?dWlFRG4yWkFWV3dPa3RwbWJleE41M254V2lsNHpKR2IwZmM5NXlaVnd3TzFu?=
 =?utf-8?B?WnhmR0dDaWc1VUFsRG9jU2FUQ3ovam5CanNwOG0wbWw3TDZuUVo5dThpUjI4?=
 =?utf-8?B?ZUdmMmVxblM0UVBEUmE5amEzSGppQUZ0VzRPSzBid0pyZVNvRlZyckZvQm9u?=
 =?utf-8?B?elVoVElEVXh6WDZLamlHcjRORHlrNENQY0ZTYnJzT1YzRnl0cTN3ZFRlUFZZ?=
 =?utf-8?B?VTBaQ2dzMTlDSk5admpGY2pkQWhLMm50WitodGdLTVo0NWhrZGgzc01OTVlW?=
 =?utf-8?B?aWJNZEZIbVMxbG1waitaM1dxZ3V4REg0cFdoMVhUMjAyM3pCNWRNYlI4U29D?=
 =?utf-8?B?TWxlU21KMCtRVEtQZUxqS0pEN1hPclpoazduUCtpeFN1N0J6MHhKL2pKRjdC?=
 =?utf-8?B?N1BKTFVqWk45UFB4V0JiR0wrdFJrb2xNMHBYZTFoU0tJdDc1OExzM1puM24z?=
 =?utf-8?B?bzMvaFFzUTF2WlRYZWNlNGlKcFp0TXEzdHBQTUZObDlOcCtrME5URU95VmZG?=
 =?utf-8?B?YzlYYmFid09aYXpNWmsrMVgxTXJKZTRvRWpHaWtlYW1EcWUzREFoMWRCRFdx?=
 =?utf-8?B?SDFSRnh1cGRZVSsxUjZrUlJGemFUUDJOUEpwWEFHZitwM3J1UTF5d0d6dHEy?=
 =?utf-8?B?WURqanFvY0xiMC9lMVRnZnhRdE41VElVREQzaFFqWTdRVEdqQjFQWlRvbVJm?=
 =?utf-8?B?NHNwTW81aGJLcGJZN0lyek50MWhVMU5iaTErTE1MTDJxUTZZcUxZaGpCZUp5?=
 =?utf-8?B?YjBzOC9MOXZEc0RvRG5lVnJtTEtUOVd2MVcrcklnMW9jOWxHcnVsUjlGMG5O?=
 =?utf-8?B?ZWpzekgrSVlSMTdDb2l5OXgyamlaQWJ4UHRPTWhHVE9uOGFTeGZaS3dKcjhs?=
 =?utf-8?B?QW9uQWxRM2ZxcHo4N2xPWGYyYmdHSWI2ZTJsd1RoYVBKY01HSlI5NjJaTmRO?=
 =?utf-8?B?M3hrTTRvTEdHay8vbmc3dFJhOHhYYjZoMkJydXhhTHI0NmRkdTJxUnVIK01D?=
 =?utf-8?B?MHZJdVZNaEN5a0N1SkVkNEhpaWx3Q3VEM2MwMCtZU2dDaDVjdXJVd0FoZWVU?=
 =?utf-8?B?d2NlQS9VODI1WkV4a3h1ZzJUdEdnUUNsRkJxZmVBM3VmVUYrd0RlSkw2YzJz?=
 =?utf-8?B?OHFHeWVJSFBSL2NTeEIyTjRHUyt5bkVNODBIdkVONzBhamlCdG5sSmlDS0lL?=
 =?utf-8?Q?V/MvK4D8UCFKMfqnqku5O8K3NoTctdtH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rk1KYkFUTmFDSS9JbHpBUFVucGVPVXIzRUNoU0JGTkljZWVTeUhLM0xvZ2VN?=
 =?utf-8?B?M1Q0dDJkMUFlYWxBKzZUWHg5a1psYWY0Q1V3eDNGcS9iMVQwRUVwNnJrdFRQ?=
 =?utf-8?B?ek1LcGlkYlZ1TWoxS1NkckNnbkpucmNocTdBUUUraERzM1V0S2lWQmg3dU1O?=
 =?utf-8?B?SmF3bTRzVGdRemxHczA0Y0NjTlUwZDM1Q3ZDVEhpQXpTWVgvR2JOTHRFckdC?=
 =?utf-8?B?UmQybXFXZmRpMTNVYWdNdk1GNEVFcHpLYXlBdVlGK1NCYmowNHMrZlZlc2ZO?=
 =?utf-8?B?QUQxUWxvMDIzcjV5ZktGNis5Mi9KUDZOeG0yR1dYT2g3WXdxSzNlMFowZnE2?=
 =?utf-8?B?bG1zQ1RlbFFHQ05SREpVeGZhT0grT21ZeG40Sm5pUzAyNWRac1h1eUxEaWVZ?=
 =?utf-8?B?VTNkbHY5RVpCZzJ6eS9UR1VTd2ZKWXAwM1krMVQvYStlYUdNdytNOVRDemJM?=
 =?utf-8?B?eUl1dGdwblBTZHF2cjFzVThuTEdiemJCYSthYjRJMmJOK2ZUdFU3WksyVERl?=
 =?utf-8?B?TXJmbFhwZjdKYzhhRnhUK3V3UHdKU29jOHhSZS9Zb214UWRpVlUxSklnYXNn?=
 =?utf-8?B?WTljOG10bmlHVU93dlp4R1pvN2xyR01iSW15OWI0Z0cyRi9xNTFxU3lHRFZ2?=
 =?utf-8?B?N3BIWFVkcHNlNDkya08wSytZd1FVUTNwSkpsUUJMRFRxd3FhZ29ZOFFpaEd1?=
 =?utf-8?B?aDd5MFdodzdoZTk0OU8zTndhdCt5U0lpMGdoR0JGT3kzYk90Y2VLQkZoc0ZV?=
 =?utf-8?B?MnhuTWhhLzNVd3VmTzJmSGR4U2pjRVJxRmpHYnRCZkdXQ3VyV2ZWa3RLRkcr?=
 =?utf-8?B?ZWRzWUJ4d1pXSk9PMEQ3S0IwVDFpS0hFUW9tRDRUamhKUHNkVG9ab0pETFln?=
 =?utf-8?B?VHd1ZTU0dVdqdlJiaytJV3lONTcvN2xJWFpLNmtxeUtaelpSZWJwNm5KWFNj?=
 =?utf-8?B?MkttSDBJOG1pOWdCR3JCTFIwQmhoSEhINEdVVW4rVEdUL2hZNFJQVk9TZnBI?=
 =?utf-8?B?M2t1d0R2dmZySTZqVkNqM1BqeWRaeUJBUkJucHozU1hUNGNoNVVHZDMvNS8w?=
 =?utf-8?B?M0R0cXF0WXI5TEhFZk5kczZuYjM4M2pQVkRqUkxtOHpLL0JBblZ5cEsrOWdi?=
 =?utf-8?B?eUFuRi9neHYwMm01L0NUNXFGOTRnUWc0Y20wcW56NGtaNTdzM2tKWllNb21R?=
 =?utf-8?B?Mnh6SHRxQ2xQOGFidEVsc280bVJHUE5nS1FHSXUyYmt4ekduc0lhaCs3Tklp?=
 =?utf-8?B?MW0wVzZTWjBIMmxZRDZIUzVxc3J4elNFcTlSVnlOcXNMckdvbEFmY25QYmd5?=
 =?utf-8?B?d1BzNWNWVFhPbytYMkZMdFRGK2poc0JaZi9CbkpPWG9TNk8xUjRTTEZrYUlI?=
 =?utf-8?B?dVhlbHErZlk4aGtCOWcwb2FHMERzTEkxQXB4OUh5SDNSalhyNEMzSUJhREt2?=
 =?utf-8?B?MUZYbGxDaWxHWGhEcGxhZUZyVmFXTytCNk1GYXRldmVmN3VWY204UkhqQmtZ?=
 =?utf-8?B?dWdDaVNaRytWQ21nUnpndVp1N2pIV3hVMld4Q3hVL3FEYStpLytla2t1dUdN?=
 =?utf-8?B?VVhndmlGTURCZGhxUXpEWnpmTi9qYzQ5MFJvQU1hREg1dDRmNXZjcWwvNWJk?=
 =?utf-8?B?RGEvRFQ3c29qWnd2OGJ2T1Nka1kyUzlsamdzNHFIVjRqZUdRYlJqY1Q5KzJG?=
 =?utf-8?B?Z2EvZ3JDUzlyL0lsTW5jbTBzUnJ3S3dhUEFTelRaVHRiUEFrdE16dEhmRnVW?=
 =?utf-8?B?K0IwRmlSWHo2ZnZXeExORnRGdGN1MFpQekhOVlJhT28xa1Z6WEhlbElBRE1p?=
 =?utf-8?B?amc5TzRuc3Y4V3FyREtiZE1ld2xLalhxaHdWMWQxUVQ1ZWZkNWFjU29qWUxx?=
 =?utf-8?B?V1ZvWmxwWWtyTEFHZzhsMURUUVNUQ29XV3d5RjNITC9TRHN6WDViTkFSUW56?=
 =?utf-8?B?eWJHRDlNNlh5Ti85OFE1UFNSaFRZcmcwc2gzbWJaUkdHRTBKejJpdDlwMXBx?=
 =?utf-8?B?QXdjbE9rTWEvSmpRYWxhSFpVUWtVTHhkcWREUjBWZU5iemRoc3A4K0FUcHBO?=
 =?utf-8?B?Qk1SaW9CVjVXcjA1Vk50eVNqdXZrQ3BMVkVvSEgxamZKZEM3SjQ5NUhmb25h?=
 =?utf-8?B?RVVCcVMvZDJlU2J3MWhIdk93ZHFMRHRBS3ZoNXNFdVl0VlNpTG9PNW1zS2lF?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6cd4184-87dd-4808-bf2d-08de2c9a821a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 03:18:45.5594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OwsokNfjknPTSMEjdbvj7qmQ+iqxQT0F57vtL1eOcobWQdTYbxOiNDYLHeG+rUHlinbyjxoDxxL0ot2QylOIKgB7/QMDxZWJjx5R3oBOqKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
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


On 11/17/2025 11:14 AM, Golani, Mitulkumar Ajitkumar wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add pipe dmc registers and  access bits for DC Balance params
> configuration and enablement.
>
> --v2:
> - Separate register definitions for transcoder and
> pipe dmc. (Ankit)
> - Use MMIO pipe macros instead of transcoder ones. (Ankit)
> - Remove dev_priv use. (Jani, Nikula)
>
> --v3:
> - Add all register address, from capital alphabet to small. (Ankit)
> - Add EVT CTL registers.
> - Add co-author tag.

This is not there any more.


Regards,

Ankit

> - Add event flag for Triggering DC Balance.
>
> --v4:
> - Add DCB Flip count and balance reset registers.
>
> --v5:
> - Correct macro usage for flip count. (Ankit)
> - Use register offset in lower case.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 60 +++++++++++++++++++
>   1 file changed, 60 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index c5aa49921cb9..38e342b45af0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -584,4 +584,64 @@ enum pipedmc_event_id {
>   #define PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6b8)
>   #define PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6c0)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5f1a0
> +#define _PIPEDMC_DCB_CTL_B			0x5f5a0
> +#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
> +							   _PIPEDMC_DCB_CTL_B)
> +#define  PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5f1bc
> +#define _PIPEDMC_DCB_VBLANK_B			0x5f5bc
> +#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
> +							   _PIPEDMC_DCB_VBLANK_B)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5f1b8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5f5b8
> +#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
> +							   _PIPEDMC_DCB_SLOPE_B)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5f1b4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5f5b4
> +#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
> +							   _PIPEDMC_DCB_GUARDBAND_B)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5f1ac
> +#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5f5ac
> +#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
> +							   _PIPEDMC_DCB_MAX_INCREASE_B)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5f1b0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5f5b0
> +#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
> +							   _PIPEDMC_DCB_MAX_DECREASE_B)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5f1a4
> +#define _PIPEDMC_DCB_VMIN_B			0x5f5a4
> +#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
> +							   _PIPEDMC_DCB_VMIN_B)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5f1a8
> +#define _PIPEDMC_DCB_VMAX_B			0x5f5a8
> +#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
> +							   _PIPEDMC_DCB_VMAX_B)
> +
> +#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
> +#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
> +#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
> +							   _PIPEDMC_DCB_DEBUG_B)
> +
> +#define _PIPEDMC_EVT_CTL_3_A			0x5f040
> +#define _PIPEDMC_EVT_CTL_3_B			0x5f440
> +#define PIPEDMC_EVT_CTL_3(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
> +							   _PIPEDMC_EVT_CTL_3_B)
> +
> +#define _PIPEDMC_DCB_FLIP_COUNT_A		0x906a4
> +#define _PIPEDMC_DCB_FLIP_COUNT_B		0x986a4
> +#define PIPEDMC_DCB_FLIP_COUNT(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_FLIP_COUNT_A,\
> +							   _PIPEDMC_DCB_FLIP_COUNT_B)
> +
> +#define _PIPEDMC_DCB_BALANCE_RESET_A		0x906a8
> +#define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
> +#define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
> +							   _PIPEDMC_DCB_BALANCE_RESET_B)
>   #endif /* __INTEL_DMC_REGS_H__ */

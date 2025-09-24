Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181B4B992A2
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 11:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20E010E6D3;
	Wed, 24 Sep 2025 09:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgoDRXrR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109B210E6D1;
 Wed, 24 Sep 2025 09:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758706431; x=1790242431;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NOmrLNvLXaSE8g9Y+69m2A2Mt7phLzINT8+8vVyQRq0=;
 b=FgoDRXrRKuwmGpAYtsw5S8CcuUuj6sBWPKrt8BBrXU+8b1XQdhUnn+C7
 X6cyJ3KsppvGzhXK/Qrmn2NQlm3G5l4on2/NSWfBXr+Z/zrgaIj2pyOe/
 tu18dgAHKnFXINr09UUKM6dADBmDOVyb6V51nsyg3zywRiuSoDsPyHQbf
 Mh3nKnPHqeAUYwGnkOz5Qk2IxTAchQc2hxPTYuZdGAzKa2tYUvT7i5DYa
 CBvk2oeNKLIDO9Lm96NFSCztVCkBxdFHk71r4JZtEvCxfSLmZOfQ32elv
 PUqGEx09HC0IjsHfd7TsnpKyv06NBwlGmVZdTn0FDk393YJZhz2pep6tZ A==;
X-CSE-ConnectionGUID: IK8iALIPSO6rCmf5Dekuvw==
X-CSE-MsgGUID: GhCh24NHRgG2yRwqksJB4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78434834"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="78434834"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:33:50 -0700
X-CSE-ConnectionGUID: NCrdGgFMSmKBIL6OawuzNw==
X-CSE-MsgGUID: sdmimlCcRyK0L3dufLxhaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176931204"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 02:33:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 02:33:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 02:33:49 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 02:33:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hVD+LSD4EJbOM+Fk69TQiVwDxB3tmo7wpyBYp0Za7OgJNlu4Qjt5dW5lgYAxnpfSSHSqRKKxojMJFuZpm0HWxcc+7y60YfWhUT0FGnK2sFXvO0J/WoRniJxCTSIiYhTyNkAXG/UMLirTepyoRvv2V3u/S76uMz8bS9zgz8hJxx0L7Z9tvCEmuAcz46nq09v7yjYbJqUNhoj1cbZWe+5t5AOn/90pnwXDv3kGUMNJmcl3xOSvRqMlv+VF2fWLfd/Mupdf3BgsfgLKASoTsK6wJW7+Sc3mOMikRS6WdXkAMLrUGzPsydbjfM5AOo0Pa67PCIOVPaCvzUOKtCSKv/1M+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RsV4MxsSgUfoGTujZwM0sKJ43etH6E/RdNqnxdDNYjA=;
 b=Jol+2QZr5jwfOwBii/edJg+mClUuXZ6TT2mjgGQ0+8sqfvtabBmD8Woy5vPmyXnhnSXzmtF7nelZykjRrvQcPr/nvXNWsqOUIgefM6ThApckL8+y8vCIhSY008YdYU10g+b33njj+ZWP69G7WHh2vJ1kc/J0RxyVNBQaf/AFyGxK94tiuDYMMJqDAuh29FMFiPtJLyUq4+bI5o0XcjiubdVMzeSI1Wb9+9MSDxAPzA5qArgGSVTea6/yF2NrQKgeTkRUaEgJ5BGAO5VC006sFd3EfzZKSS234aKu8w0CkXAG/Vj/yOVrEuZ8zR7USqEakGSfUCrxG0u7/t0/k6nBbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6908.namprd11.prod.outlook.com (2603:10b6:510:204::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 09:33:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 09:33:45 +0000
Message-ID: <42504659-11d1-416e-99fc-2e62bd165e4b@intel.com>
Date: Wed, 24 Sep 2025 15:03:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/9] drm/i915/vrr:
 s/intel_vrr_vblank_delay/intel_vrr_scl_delay
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-6-ankit.k.nautiyal@intel.com>
 <aNKrC6CZmNZ2u-rH@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNKrC6CZmNZ2u-rH@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0064.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6908:EE_
X-MS-Office365-Filtering-Correlation-Id: 7751602b-d206-44d8-484f-08ddfb4d752b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2tFeGJtdUxCb0lxSnF1UXl3cnNjSitrRWlpNUVTQzVDYXBJTVRXRjdKVmtp?=
 =?utf-8?B?bFUyK3JEeDBBWFNZdUZtcnk2VXVMNDBrSmJJVkRFU2w0bXBOOWJWanpOd0J0?=
 =?utf-8?B?TzYwZGtJQ09JemFrM2E3Rm5mZ1kzOE5pbEQzUVZtSVloSDJENTJMZkpjZmE5?=
 =?utf-8?B?VUttL1U3anBvSzh6U0FtOGdTZ254aHFSOGM2Q0hpTWxjYzdLSy9ZRm9WWS85?=
 =?utf-8?B?UngyZVlrS1R5d1A0V1EvaTVYZWo1MEF3b3l4WlVKeXZBMWFEZ1orQSs0WlUz?=
 =?utf-8?B?d0pzaHpCSTZRVnJrOCt4eTNaMmRWaWM2QlFlL0ZkRmxIdk1UYytYeWJqWmxG?=
 =?utf-8?B?dzZGWjNjcTlnQWIxUUFkQzVuNEVJVE80TkdBQzlBaUhRcUpwMkpVOGxQUFJ1?=
 =?utf-8?B?RWxxenI1UzliUkFoUDhUZDc5T1dxemxJdzdWbFV1R05RdE03YWVmK2RNMStO?=
 =?utf-8?B?RXQ5dkdkbC82T0lvZVFmdGwwbTIrczlQUStLNUxnS0tHQm94Y1pHaGJpWWwr?=
 =?utf-8?B?NnNQaU9XZmVlcnNqK09SSGVBVEJRcnpORVVsQ01kcTV2YlpTR3kvc1Arc3A5?=
 =?utf-8?B?RHlHS3Zva3VmK0NvK0F1bXdobnRCOWN0QUoreU1SVzNzaVYyazBzTGtBNEVE?=
 =?utf-8?B?ZEhVbVdQMmpaTUFiRTF6eFFWVGVkRjZnMW81dUJwcmhhcnVNSkhwTEtxaEh1?=
 =?utf-8?B?Z1Zic2sxakJVT1VDajRTU0FpaGpvOTMrNnRvMkFZSGJhZEFmdDFWYXdkTUdn?=
 =?utf-8?B?YitKNVhEM2pGRjBMTVA1NW5TSmEyUXBwVGN4elMvbVIxSW1wZ2o4N2NpV0Zz?=
 =?utf-8?B?RStteFVqV3BZTWxicUszZWVhdE94NEZqdy9IK1pBZjdLWWhTZ0IwWmplaWNW?=
 =?utf-8?B?ZGVoRkN3Q3FyUnNjSW4xeEk5M21WUnEybDZkdU0wUTVOcTh3cXNmeGo2bVJ1?=
 =?utf-8?B?QXJTSTNCVThNTlVmNGtFQmh2REtlY0h5NUhaYW92OW0rOGIxaURJK1A4TFht?=
 =?utf-8?B?UmMrcDFET2p5L1EwVDJXMnlhWFpSaDNCSmpVamZNT2pMQ25pWCtLWG5GRUlp?=
 =?utf-8?B?Z1hRQTRBait2aUxsMm5Vc3YxT2JYSldOVk9tNFA5eE16RWhKUE5DZDNwclJ0?=
 =?utf-8?B?MFNKMHJPcU9KeHliVjJVb0dYa1FycXlKaVlWZlMyTCtjd0s3UjNuYzJsUy82?=
 =?utf-8?B?UlVLUEFKUWpsWEc1VGdyNXhRNmMrSnJKdG1kTDV6d3dWSGFmVFBKWDdLR011?=
 =?utf-8?B?ajEvZk1EL0pIWGRobXRYcTdaZm1QbXFYZzJ6YnZkeUhZLzlwTFM5c0pVMTRx?=
 =?utf-8?B?MVczR1dJdmxPS0tBY2FicHhJOStFM1dNaC9Xc1BzYWxTZWs3RjVkN0h4Qjgy?=
 =?utf-8?B?cU1wdCsrbmYwNno1eGNZWDhSa2VmUDdMNXdDd24zdHlncGZoZk56TWV2Kzkz?=
 =?utf-8?B?U05yd1hXazE5NEh3c080bDRXa1lPd2Z4MXhUMmtha2tsSEhOVEtuNDRZOTZK?=
 =?utf-8?B?SGhvM2tQNmtZdmp5MGJuVDlMZnVNdU5GT2tNTWhMc0hFbnlwbFNINjkwY0Jo?=
 =?utf-8?B?bFltQmNqZnZ4Snd0SFU3K3B3enQ2cFRiVTVIWm9KVnBKM0RQWnhScHAxT0My?=
 =?utf-8?B?REFsb1R5MU9aVk5LdWMzWlZCOE1qQkt0VzUvdEN5M3dLYnVrY2t2RjE2Mmto?=
 =?utf-8?B?eVc5czdWTmZxdGpLeDNIQ3IrUWZVS3pTYjVHQ01CVDh3TDZuT1VINjA3QWlh?=
 =?utf-8?B?TjErOUtqengzdjNDTzZaenMwcitrNWQwNGQwcG1JQzRXbXFjcTBqNDBzTjZ5?=
 =?utf-8?B?ZlRZODFjampzUThWNnkxL2Noa2NBUno0YkQwN1paRDlnUzlOYktoWEt2SFht?=
 =?utf-8?B?cUM2Q1kwRkZiYm10S2ZmWSt4ZENOYk9oYzB3dmNwNGxQZjNsKzZPQmM1clpO?=
 =?utf-8?Q?eo72bhfjOz4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkJlSUZUY0RhaXBPdXhMVnBCUW9NLzdyWGZrU0VUVlpDam9TcnkrVGtMT3N2?=
 =?utf-8?B?QnMvWDVGUGl0R295S212NkhJV05ZMUpldFBXZ05XbVRXZDBlNkJjMi9BQmcw?=
 =?utf-8?B?NE8rSCt5Z1lLUnhXRWlURTRYWThsbHBLc3dqRVZMYU5lYTBqd0tDUVphN1g3?=
 =?utf-8?B?T2tMZnBhUUJUZlJlLzJvcXBzVFAwTjk2b1pENTFZTGVmbDBjY3k3bGp4T0NT?=
 =?utf-8?B?S3N2QUZrWmdZSWVuMFJTMXRCNVZ4ZzJVd2lvSnd0Kzg3L1RVNGg2QXFtSlRK?=
 =?utf-8?B?RjMvWG9ORzdtUVpJNHBNakEyZ3NvU2g5OGZFaHJQR3J0MW02UVJVWDlRZkVF?=
 =?utf-8?B?Ymh3M3k1cFpCSUhpM095R0ZpcDFBZzBiZUZPdGR3RFdHaTZHZ3lwSHpHcHZm?=
 =?utf-8?B?T2oxT2YrMTBabENNV1R1SlJKNHpSSERXb0tGVmdJc00zY0ZnWVROMjhQV3ov?=
 =?utf-8?B?QnNSblZrMXdocGFiaHNYN3NZMVBlWXkyaGN1TkdoRGllTitJcnpwRkRxcFVs?=
 =?utf-8?B?Rk1FMjVhcS9PT3VVYzdSMjcvbVRXc1h0bVQ3NjIxaStWaU1DTUF6WS9TNmhO?=
 =?utf-8?B?N1FDT0NxNzJhb0IzY3J6OFNFWlcwOW5ZQTFnTXo3N0tManlrbFVLZHI0TW1s?=
 =?utf-8?B?dEt3ZkJpVHU4Rlk1bC93Um1hK0FiYjBweDVaMFcwQ0RWb3lyZ2JKdktINXdE?=
 =?utf-8?B?U0tTNVF1Q3U5V3RjbTNTdGg2c0thK2JnWk1sQ252TEJrT3JMOGQ4TGduNUdr?=
 =?utf-8?B?TXpWS0wrQWlGRHZKTHJFK1BtSlBIK2xxZjRqVFB5RXdxSTdpRDlPWGJzdFlh?=
 =?utf-8?B?T1NHd2tMZFhKUGRQU2xrL1BxTi9iWEFiUGhMaUN1OS9mZy9jVWVlSUZGQy9G?=
 =?utf-8?B?WVYvd3gxQ1Y1YVVQb2gxMUk5KzNKajRRQW50TU01QjBDNktMSXl4V3Bvd0dV?=
 =?utf-8?B?SXl6WFRTc2d6aWVzWml5aFZKS0VNcWtCNGgvQkZRdGkrUlFHRm1KV2k2MFY1?=
 =?utf-8?B?WTNBdjZlcDA1ZGZQNEpvdnRxbjhQMXZmSGJEVC80VXpQVmgwSVBHeCtNOXZ5?=
 =?utf-8?B?UEgrbjROM25aZkRnR3BVaHJZVXFwVGNsSXEyd1I2ZnlKTG9pR3dLR0szZXdz?=
 =?utf-8?B?NStTYWxTVVU4KzJQN0kzR3JlU3ljK3ZHb21JSGEzTDJXQmNUcEpmbDI4RFhR?=
 =?utf-8?B?SEtsMU5TZXRjWUhwY25TeFhBdk1QbElqbmlDNElEUXR5UkJnamtWeEZZdUF6?=
 =?utf-8?B?UEUvQlJvZWR2MUNnVkdsbWhIM09NblhVK1FINFhEQkVPdGlMak5iaE5IN25C?=
 =?utf-8?B?US9KbDZuYmRLak9hUmt3b1h3RTliL3JYajJrWXluOVUvWVJ1TmQrK2czNWJS?=
 =?utf-8?B?U1pPQWxXNHFwS2ZiVnhGcDg0bk9jWGxwS1FkdldnWmFlWXV5V3AzaUx1bjRm?=
 =?utf-8?B?VGw5UytsZ25XN1FVTDZMRmNGNU5LOTRMN0NEdyszT05OSHJKbzIvS3gvQzhy?=
 =?utf-8?B?U1pBQlZteDUvUlpTVkVqbFZVT25Qa1FlMm9DcmpXU0FSNXNDRUpPa1dXWDNs?=
 =?utf-8?B?UmZFSnhwa1B2VVZCby94NUVWTnF6TWdST1AxMnRUYmdQZEZ0TC9Hc1Fudzcy?=
 =?utf-8?B?MnJ1SDZDSDJZajJ2dFNWOWd1QlhMdm90Wnl3b0hsNnEyZEM1RDBhT1NoMEJz?=
 =?utf-8?B?Umc0MnBpZWs5aUJncUdnSXBpQzIzSTJMOHU3UFh0V2tnZGhXSG1EZ3dQUHRJ?=
 =?utf-8?B?ZHVBbU0waTlSM3BpSDlFQ3pRUzBsRHljTkNraytHcDdhMTc2akFTTGRsa2tZ?=
 =?utf-8?B?bTBaejlvbkYydmVTQkxDQmYvaGpkdEVidG1JMGVWQyszRjE5Z1BUZXpJdnJV?=
 =?utf-8?B?TjQrMkd0MDNvSUVKUks0T25HWjFBNyt6YkU3RFQ0Sk92QTZmY2R6cFBkY0VG?=
 =?utf-8?B?a1RTN28xSkJrV2pRM1VyelREU0tud2RsUllRSk14ZlVpb2wrVlRXSXhnSEZX?=
 =?utf-8?B?WGpJSy9aTGtGSkZreWtSZGthRlRVNUoveEdJMGFQenMreW54SnZ1Y3BlbGtU?=
 =?utf-8?B?dmdaZ2lOdjhZTXQxR2p6bml0T1NYbHlDT2pLMzIxM3lkM0VzWlg1NjNnaEFJ?=
 =?utf-8?B?R1p2QjRwN2wzTWRuTUVISEV1emFvYjhwQ2cwNHhRVUlEVzZ5bS9WZFVWZndh?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7751602b-d206-44d8-484f-08ddfb4d752b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 09:33:45.6412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzK6PY9t6rsV5ODk9LIWY34RXVQI5f7qfV+NiOxI4x5OpPNuJocHdCJj+nPFYRp5EWQxjKMgJO36TdNAUn09QHdOxtORklSjJAHW0AfjDXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6908
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


On 9/23/2025 7:43 PM, Ville Syrjälä wrote:
> On Tue, Sep 23, 2025 at 06:40:39PM +0530, Ankit Nautiyal wrote:
>> The helper intel_vrr_vblank_delay() is used to account for scl lines
>> + extra_vblank_delay (for ICL/TGL case) for:
>> - evasion logic for vrr case
>> - to wait for SCL+ lines after send push operation.
>>
>> Rename the helper to intel_vrr_scl_delay since we are interested in the
>> SCL+ lines for the VRR cases.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 2 +-
>>   drivers/gpu/drm/i915/display/intel_vrr.h    | 2 +-
>>   4 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index dee44d45b668..ca31e928ecb0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -128,7 +128,7 @@ static int dsb_vblank_delay(struct intel_atomic_state *state,
>>   		 * scanline until the delayed vblank occurs after
>>   		 * TRANS_PUSH has been written.
>>   		 */
>> -		return intel_vrr_vblank_delay(crtc_state) + 1;
>> +		return intel_vrr_scl_delay(crtc_state) + 1;
> I'd skip this renaming for now. I think after you've added the
> safe window scanline wait you can replace all of these with
> crtc_state->set_context_latency.

Hmm alright. I will drop this patch.

But the intel_vrr_vblank_delay() is now just 
crtc_state->set_context_latency + intel_vrr_extra_vblank_delay().

Do you mean we don't need intel_vrr_extra_vblank_delay()?

Perhaps you are right, with the wait for vmin safe window to end, will 
leave only SCL lines before delayed vblank.

So the one extra scanline which gets inserted for ICL/TGL will be 
counted in the wait for safe window.


>
>>   	else
>>   		return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>>   }
>> @@ -723,7 +723,7 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>>   		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>>   
>>   	if (pre_commit_is_vrr_active(state, crtc)) {
>> -		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
>> +		int vblank_delay = intel_vrr_scl_delay(crtc_state);
>>   
>>   		end = intel_vrr_vmin_vblank_start(crtc_state);
>>   		start = end - vblank_delay - latency;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>> index c15234c1d96e..9441b7bacd27 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>> @@ -681,7 +681,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>>   		else
>>   			evade->vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
>>   
>> -		vblank_delay = intel_vrr_vblank_delay(crtc_state);
>> +		vblank_delay = intel_vrr_scl_delay(crtc_state);
> I was pondering about this case especially, but I *think* it should
> also be changed to crtc_state->set_context_latency. We don't want to
> perform the commit while in the SCL here because then we're not in
> the safe window and the DSB we use for LUT updates wouldn't start
> until the next safe window starts (== next frame's vactive), whereas
> the double buffered registers would latch already in the upcoming
> delayed vblank.
>
> But performing the commit while we're between undelayed vblank
> and SCL start should be fine since that is part of the safe
> window. So we don't need to evade the actual undelayed vblank
> when in VRR mode.
>
> The only exception here would be the LRR and M/N cases since those
> perhaps still need to evade the undlayed vblank proper. But we always
> drop out of VRR mode for those types of updates so they won't be
> taking this codepath anyway.

Hmm ok so replacing intel_vrr_vblank_delay with 
crtc_state->set_context_latency will work for both:

-the wait before push clear and

-the evasion case

So will add a last patch to just use crtc_state->set_context wherever we 
are using intel_vrr_vblank_delay then.

Regards,

Ankit

>
>>   	} else {
>>   		evade->vblank_start = intel_mode_vblank_start(adjusted_mode);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 1b90eaa6a776..40e256bce3cb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -92,7 +92,7 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
>>   	return DISPLAY_VER(display) < 13 ? 1 : 0;
>>   }
>>   
>> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
>> +int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 38bf9996b883..b72e90b4abe5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -35,7 +35,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +int intel_vrr_scl_delay(const struct intel_crtc_state *crtc_state);
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>> -- 
>> 2.45.2

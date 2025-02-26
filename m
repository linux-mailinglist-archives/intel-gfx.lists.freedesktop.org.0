Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA92A464BC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EED10E935;
	Wed, 26 Feb 2025 15:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/7JzQMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A26110E935
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740583822; x=1772119822;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8yL88PbOA+zSw3Af1bVHRxbnQ6MK1ICFLQ2Joazwyl4=;
 b=N/7JzQMmQrhZ46fv81+0JtQis2D0FF6/nwbkGv4Chca7+9ydL4UyOzgM
 UE4UtUO8xkGA8hYY6+hP+oOjp+BYaX5uixsISPWLLZXF0zYm2mjcGaLrd
 zlybZPQnXi3qOcw3oiH5h41rZeXQAe1QPt/BhXG/1AN7V0TmkRytZWuOY
 1iPeUOWhaRsrAvIebWFdxmKaFl/jteP1R1+0ysEtXSvJS8ZrdkEC/F/ZU
 NP+0AfriIWE04ENZ+GvrZJKz2eF33OyzUMpSQn8JAXI0cGCHj24z58iTE
 vU5TeKKDsfEWa6kBOsEaiu053Ur0tZKmncyUR5BPKAYTYEpRgaf6JV2W3 g==;
X-CSE-ConnectionGUID: mohQQFNNQeSaMadrXocZKw==
X-CSE-MsgGUID: orz7y1FbQFyT+zQhpHz3aA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52851564"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52851564"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:30:21 -0800
X-CSE-ConnectionGUID: AhSO4ELgRYuGZe+7jE+hJQ==
X-CSE-MsgGUID: KRZZOT2CRN21XcDQyZ9TOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117229809"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:30:21 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 07:30:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 07:30:20 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 07:30:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SKY4wSnxZ+mcYIFBhdwNpZipvfE7dNksc7NqgiM5DLmbSkkt5g0xjUQi8eNBJKb8WY41uLh1UNxXvEyPBjlvuyqrKdYY+99dPOeIwIC2v3NN4Kc07hHI1updOp6jlCE7HoXnvwVB731YVXgLTmo2/mjn7tSX+qmJqsnIeOznsGFz0RlaqaiJ58Lsm8pN7pdEQmdVkfbeOWPwK3oKGIZvIB02I4G0wSwuGNzRmP5oI6plwVlMFJQpW6FF1WiCFoch5rCopWwbeoO9h4r0FQXil/f07sj76dS0KtYNTet2ZX6iZxq2Dfo5mA65jRMv3l3x5ATBRcFpiyDnzmxO0K1+Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8yL88PbOA+zSw3Af1bVHRxbnQ6MK1ICFLQ2Joazwyl4=;
 b=HoL/YLNFutJ3T1ppVFY2v1W1WOYT6w11YDEsY4xsjmLe254+ube+vwPgeunIHUExKhSphya3NPtTc9fVJZb0WVokpU+MGfPSBWKfAmycNPU7hfwHVS5MfB7QN+dvFC4dXhWqfu6eG0A2Z8mjQm3Ue6TdGCvChZV3PniVALcw5Rv/6bYvzukMQ7t+9OYGYuidrJsScYD3NFBTG+LGALF00Xm3eoLEkrZkClXhOytJEttw/Uf3mlJ9RKwYOpCJPFfM5BUdqu4DC45itYmnUgha/8hEDOwkJoHpPlxiSeJnQFflV9YiaV+aV0gMoZbBS6KgjZJXFQQDazazdjjNbaGLQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH0PR11MB8167.namprd11.prod.outlook.com (2603:10b6:610:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 15:30:16 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.018; Wed, 26 Feb 2025
 15:30:16 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Fix pipeDMC and ATS fault handling
Thread-Topic: [PATCH] drm/i915: Fix pipeDMC and ATS fault handling
Thread-Index: AQHbhuHZPWsAiSNNdUmG7bJYCL+xj7NZuOSA
Date: Wed, 26 Feb 2025 15:30:16 +0000
Message-ID: <245ba68c2b49917b1dd72bba30007334dfb2f1e9.camel@intel.com>
References: <20250224173017.29500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250224173017.29500-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH0PR11MB8167:EE_
x-ms-office365-filtering-correlation-id: 3710c524-8cd2-4974-46b3-08dd567a789c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Rmk0Zm9IVmtYc3hDTnZGWm54ck1lTmxjcTU2eTYvUXpOakhEUW1MRjRWR1Nx?=
 =?utf-8?B?UVNEL1lkVnlvMTVnaFR5UGJDS1NxcmJXNHVFZ2o2eVBrclk0V3h5dGlydmxT?=
 =?utf-8?B?ZktWYWxrSS9PS1o0QWFoTTc2eXZ6SStxaFRKczBrK2Q0OXh3cDBNWUJseG1F?=
 =?utf-8?B?VGhhNU1WWE1HaDVDbmFWQzBNcmJBR0FOMmpxcnQ2Z3ptQnlpRnVwYVYxcW5j?=
 =?utf-8?B?cURvTE9ORzFjYXRyRTd5ZVdjMWcySnZHeUlYcmUraGh3RGgrT0RvQmdTajJv?=
 =?utf-8?B?QUxFTXVVdlJFUEpsSFpYazVMTjRHdHdrdm9pWkd2N0wrTjRuTmoxMVNFeGt3?=
 =?utf-8?B?VXpQWm1jRlgxcVNmeHFqQjZ6bm9FUVR4bnQwODRTV0xOdVlvQXY3K0ZHbyts?=
 =?utf-8?B?WW9nc09SbnRDSytPd204SDdIMFFLTGtQSWtobXRtUE0rbDBDejBGUWJTbmpy?=
 =?utf-8?B?MVI4aDF6MWNwS2ZEUTRnQUlTWmg3RmlPaXZ4T3o4dENFb3drb3lEdnBBVnU1?=
 =?utf-8?B?R3J2OUJTeERNZWgyNFE0b1E0SGg5ckJ0THh2Qnc5K083SG9iL2phRW9za0dP?=
 =?utf-8?B?SEtyQ0NsdVlZQzJnWXBNZ3hvV2dieUZ0V2lhMGZra2Q0Q0t4aWxwZEowNWJm?=
 =?utf-8?B?ckUzTUhGc0pLS0tESnhjVTNsWkJTaVMzQXlUZWtpNHdUSnl2ZFY5bElVU2NU?=
 =?utf-8?B?NTRSWFNmY0tnNld5WS81SU5uU0ZRZjZGRE5kamFxeU5TcmJQY2JCc3VVVEU5?=
 =?utf-8?B?NHBBcUVJS1hCeW1XK0NRR0hFbTRQREFmSnROSkV2eWUwb0NOTXp2VFMvTzc1?=
 =?utf-8?B?cnExdVRuSDI5aUdGMFM1RnpGL1JDczVKeEh1L1Jwem5ZeWhjbjBudnpKVlBn?=
 =?utf-8?B?WHFGZ2EyRzhUL1hoL2FwZ2dvMWlOZGlMbUIwQzJadTFsTmZNOStEOGREUzVw?=
 =?utf-8?B?K2Z3cFF0UG1vWG83L24yejJJNEFoUTB5VlExUktoaWl1ZW9NeHdxUGNZWHZY?=
 =?utf-8?B?dUJaTTdYUUVmeFJxM3hGZ1lPMDl2U2NoR3RFT3FIanR3aVpNVlpTTS9rQ3I5?=
 =?utf-8?B?RUJjTGcyQzhGcExpTGhueVZnRkNRSkxCdkNxd1lpOVJ0VVlnMGpnZE0wY1o2?=
 =?utf-8?B?Ymg1N1gvdERKVllHcDVpSnVuK3RkQlVlQzBXNU5hV2VLMUtpbUxrUVM2S0hR?=
 =?utf-8?B?MUgzVFBBKzJ6Q1VCSnZ5ejBjdWE5Y3hKbVdxSVkzdDBvVDc5RFZwRTRUTk05?=
 =?utf-8?B?b2haeU1INWM2MlA0WWd0NHF1aEF6WkJQQmtSS01yZGIyS2o1MXBFQVB0SzhW?=
 =?utf-8?B?MHFzMHdNa2FjaW5OclVlOGVCbG1RN1BkcnJMSHFnKytMakhERCs2b3E2ckhh?=
 =?utf-8?B?VFZ4Q3RvZjRObUhueGtSUW1ZeDcxRnNtY2h1eTVZK2ZCeWNxdS9PSlVWczlP?=
 =?utf-8?B?WDRVMjRsTy9LN0FGMzJvSVZ2V1E4cDc3THR5R1FWUEtOYk1heUtpdDM0cU5B?=
 =?utf-8?B?cGlvMmJMSUJORWpjZmZoSWJvNWpTMDMzVHp2d3UxRWtKUUhlV2d0Qi9adXc5?=
 =?utf-8?B?NzRlMmtWd2NZWVBPTDlhdmlLR25mWFNkREVMUUUvWTd6a2w5MVllUXA2MEZG?=
 =?utf-8?B?OWFVNmt5TUVzNS9jT1FHODFicHdrQmUrSUx1SWZKUStTRm1PcXpSSHBmRENI?=
 =?utf-8?B?V2lMaDVmMEpOZmtwc1V2T3IzVmpBb2FnYjVjdE1tcWRpNHovYW1udHVWM25V?=
 =?utf-8?B?bytSb2lXSUViVi9lQTRxQVp0RDMwR1JKL0JsTmh0bDVQcHpISVdMaWUvWUlS?=
 =?utf-8?B?NVJ0RCtTNXRITDZHT0hBOTBBK2tuNHRPcUc5WUNDUHRzNlM0NHdBYkZ3QU1V?=
 =?utf-8?B?MElaQ1JOTUlXTThBM0hBamt2UmFmNDVaSFkxeDAxOXBnVG8xWVJKQWlvWkE1?=
 =?utf-8?Q?g3PeUD9bpZepLKC8JhNrp9E0nX36fCvE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGFkN3NXZ0VHTjFUWlFWcThJMmhCVnJGTTcrTEMycVI0d29mUlhjMXd1QmI0?=
 =?utf-8?B?ZHVveHpyVzc5VldlK1VDU1BqV3hUNVNYOURwQW8va1FaVjdpMXR3cHBTOWhH?=
 =?utf-8?B?L0lzTHJnQis5eU9EMG1BY3NvWFFnR2pqSFNpcEk0Nys1MHpqcG1ya2pVNmxQ?=
 =?utf-8?B?U0loejhMTDRuREtXaGtVczBCdTFPcVJRU2dxTjhRaUh3L0ZseVBlYjd4UlJt?=
 =?utf-8?B?RXZ2Nk5DU3JlVllZOVBLeFdCaktiQ1hMWmNOOFhRNzFOd1gwMTlkZGNmNE5t?=
 =?utf-8?B?KytsWWlETSs3eDFKNU1BbmVnaHlUdEJycEZ1cnVscUQyZFpPeTNpUjFaOGRV?=
 =?utf-8?B?RnBhMXZwOTNwbDIxczZMSkR1S2pNaVNMSXpwTHFFVTFua2JnZ0pVdTlSdC9h?=
 =?utf-8?B?ck5ScndTZ0hubnpDcU5RV3pSSnl5d05hRE95UjBnWi9WQllkSkFqeE9qWDMz?=
 =?utf-8?B?WENCZ2JjVStNYnE4blhNU3RjeElEeFRzVWtjZkZ1bTR1SlVqM0FjZTB3Z012?=
 =?utf-8?B?OUpNWS9KSlRTcUZBb1RVbkxQVUVlcHZhSzBXZ25IVTJaa2Q1aDJYZlVKNE5o?=
 =?utf-8?B?Y1hidFlNeEx2bmdNbThKNGlIR24zUjRiUVZFbk9TTXpOc0hNSVo1MS9vWCt6?=
 =?utf-8?B?alJvNWRhTUc4Ky93ME5YbnRPcDJKWlZNYVRIcXpkRm9wSXd0SjNHL0NiR05h?=
 =?utf-8?B?TjV4MW4zVmpyUHN5bTB3SkZXRGxoY2ZTbnlVOVVLd1oramJpTGZHUjZqc01K?=
 =?utf-8?B?MWZBVEUrWVJmSyswTnV3ZTF1cHRtNStYcEh2a1JidGpTNkorWGd5MjZqQnpR?=
 =?utf-8?B?WW9MeXdyWXhOeDRZNm1mVWhsd0sybFNxWEpoWndoNzVTb0cvSFNMeHlKTGtx?=
 =?utf-8?B?QjBNd0NmT2NFMDN3aFFlZ0h3S0k2SjV0YzN6YmxyaVQ5a0dYdXg0ZmdQWjd3?=
 =?utf-8?B?N1pZMW5YeERnSHpmMHpxeDdqTFhHWmZ6bGM3UzJYSjdKUXlLcUFHWXFkNXdG?=
 =?utf-8?B?ZDJyUmM4b2ovQzlGWHFSUW9XRktTQnF6SmozbXN4WTMzZDRNTEpBemQ4Q1pk?=
 =?utf-8?B?YVJ4RmtVVzRmcUp1VDhibURkZjN1VzNjWUJVZFBYdGFzVjVnektWaFUrOEJo?=
 =?utf-8?B?K3p6ZSt0QXN1TnBsK25MVUsrNysvUllWTjFDdWVYR2NYcWNUaWh1ckMyQlhk?=
 =?utf-8?B?djFOakc5SEg1Tzk4MUhIeGtSKzhGQmZmdW5peEVXb3FMV1ZwNG9zTytGQTQ5?=
 =?utf-8?B?MlJVOGlQWTViOHpKeVdJSFJiT01ZcmFZcVJmZGt6TGZoRm1UTjVVSk16aVUv?=
 =?utf-8?B?L0JKdEwrN3Q3bytQYzNwZU1tdUk0L2RaWVEvSWIwbWQrcGwrT25SaWxSeWNS?=
 =?utf-8?B?aE1CTTBQR1Z4b0NXN0grZDVaZWVkZXFtR3ZZMXorcEFxenBleGVHRGowTTFW?=
 =?utf-8?B?U1lBN1hXRjRmMEt6Q1J1VElKTnVTcEtEQjZDcjVWRWVpV2R5bExHMlNDZWxz?=
 =?utf-8?B?eUZyZUE3eTR4MnZKWk5nZ0lla2V1NWhKbzdWbHo5NEliV1FVdWRlOTFHUWJn?=
 =?utf-8?B?Qm1YdlQ3d1gzWUtEMlRmeFVwMHhGbWp2YVp1VWw3L1drR1UxL3l3Q1lKM0Q4?=
 =?utf-8?B?RVZ0cnE1QVd2V0xNckhIbERva0FqNnp2RHIxYnlVRzlETG9ORWx5QkNUUGF2?=
 =?utf-8?B?NmhwUE5UTXBGbUxaVHhyeUZCdlJuSk9TQ1lUcVUxQ01Zai9RVUNqZ3RZZFR0?=
 =?utf-8?B?cm5LUnBBSVJwL2V6OWtURFNHanZHVzgvTG5vTlNCS0tPdVd6b0JRNzlMZWI5?=
 =?utf-8?B?ZEZDb3dOSnAvRDV1NEdvRG1nZlNTR3lnVXVNSGI0RENhUWQzOEJuRkdqNXNO?=
 =?utf-8?B?OWFWZzQxSGsvMWxOZjRYNUJTRDZnRy9JYldBWWZIT2tZNG11OCtvV3dDV3Zl?=
 =?utf-8?B?M29qZThPWFRqalNmWmt2MmN3SFJTT1Zic1FkR2hhN01ORWtQa2p6a0JnRmp3?=
 =?utf-8?B?UHg4SmRsU3p3bWVtblBjTWtRWWRHa0JhNWMvdllldXB6RVB0UkNCMkhOVGoz?=
 =?utf-8?B?MnNkMzhqL3gwWmEvWm0wZGMwb2s4WjVQSVROcCtTTnN3R0RCQi9jQXdoVlFY?=
 =?utf-8?B?R1RHeEVZT0NjNlNEbkVoOFdEblc4cDJOdU1jeG1ibkg1Ykc1SXUzM3ZnZ1Zy?=
 =?utf-8?Q?UQVFXlP96gt62f+Kn6ft+Ms=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CC5E8AE422693448B01EA3B012C1494A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3710c524-8cd2-4974-46b3-08dd567a789c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 15:30:16.5559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m44ngMVaxYlwLq6njS8QNW52Dibdw7wAHKlhKnCyoNGjvqxEcWnPSLQZ22DHw9moXRi9OXoZpkTLrxL+kTA0LJOFUuuNxhZStBdhFjxYVQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8167
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

T24gTW9uLCAyMDI1LTAyLTI0IGF0IDE5OjMwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGZhdWx0IGhhbmRsZXIgaXMgc3VwcG9zZWQgdG8gcmV0dXJuIHRydWUgd2hlbiBp
dA0KPiBoYW5kbGVzIHRoZSBmYXVsdC4gVGhlIHBpcGVETUMgYW5kIEFUUyBoYW5kbGVycyBhcmUN
Cj4gcmV0dXJuaW5nIGZhbHNlIGluc3RlYWQgd2hpY2ggcmVzdWx0cyBpbiB0aGUNCj4gInVucmVw
b3J0ZWQgZmF1bHRzIiBXQVJOIHRyaWdnZXJpbmcgd2hlbiBpdCBzaG91bGRuJ3QuDQo+IA0KPiBG
aXhlczogZjEzMDExYTc5OTk5ICgiZHJtL2k5MTU6IFBpbXAgZGlzcGxheSBmYXVsdCByZXBvcnRp
bmciKQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfaXJxLmMgfCA2ICsrKy0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGluZGV4
IDk5ZmI3ZmM3YmUzOS4uYWEyM2JiODE3ODA1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC0xMTAxLDcgKzExMDEs
NyBAQCBzdGF0aWMgYm9vbCBoYW5kbGVfcGxhbmVfYXRzX2ZhdWx0KHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLCBlbnVtIHBsYW5lX2lkDQo+IHBsYW5lXw0KPiDCoAkJCcKgwqDCoCAiW0NSVEM6JWQ6
JXNdIFBMQU5FIEFUUyBmYXVsdFxuIiwNCj4gwqAJCQnCoMKgwqAgY3J0Yy0+YmFzZS5iYXNlLmlk
LCBjcnRjLT5iYXNlLm5hbWUpOw0KPiDCoA0KPiAtCXJldHVybiBmYWxzZTsNCj4gKwlyZXR1cm4g
dHJ1ZTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGJvb2wgaGFuZGxlX3BpcGVkbWNfYXRzX2Zh
dWx0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKQ0KPiBA
QCAtMTExMiw3ICsxMTEyLDcgQEAgc3RhdGljIGJvb2wgaGFuZGxlX3BpcGVkbWNfYXRzX2ZhdWx0
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBlbnVtIHBsYW5lX2lkDQo+IHBsYW4NCj4gwqAJCQnC
oMKgwqAgIltDUlRDOiVkOiVzXSBQSVBFRE1DIEFUUyBmYXVsdFxuIiwNCj4gwqAJCQnCoMKgwqAg
Y3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUpOw0KPiDCoA0KPiAtCXJldHVybiBm
YWxzZTsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGJvb2wgaGFu
ZGxlX3BpcGVkbWNfZmF1bHQoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGVudW0gcGxhbmVfaWQg
cGxhbmVfaWQpDQo+IEBAIC0xMTIzLDcgKzExMjMsNyBAQCBzdGF0aWMgYm9vbCBoYW5kbGVfcGlw
ZWRtY19mYXVsdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZW51bSBwbGFuZV9pZA0KPiBwbGFu
ZV9pZA0KPiDCoAkJCcKgwqDCoCAiW0NSVEM6JWQ6JXNdIFBJUEVETUMgZmF1bHRcbiIsDQo+IMKg
CQkJwqDCoMKgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lKTsNCj4gwqANCj4g
LQlyZXR1cm4gZmFsc2U7DQo+ICsJcmV0dXJuIHRydWU7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcGlwZV9mYXVsdF9oYW5kbGVyIG10bF9waXBlX2ZhdWx0X2hhbmRsZXJz
W10gPSB7DQoNCg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 510E3A5BCB8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 10:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D9E10E555;
	Tue, 11 Mar 2025 09:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PTSiVxn+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC25810E12A;
 Tue, 11 Mar 2025 09:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741686666; x=1773222666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ei1q9AC7eToNpM1vF6rZY2F3L4o1BVzCaeY0dKKdyl4=;
 b=PTSiVxn+sjWVK/oVmx4uDOBc308FmAm/FmWDqbhJ59iyGH8ML/nnfe2c
 U2Ziwoi3hLEs5MVJ2QuisNi0OEOv9C50oqe9fSN8Lg6kDMoKN/IU0Ll34
 0fyu851QVgVMuVJBNHFvtEmDdDxTTZQoEopP9jBWfkMDlJwi88BXAg6EX
 Vt+jsE1B4HjYjJRY2s3Yv2nWsfaC7URBg3TNEIFvA4yfrSRLt+VO+ypu1
 /L+TYFvxaxcU+RBxV6SMuNcG8Cie2TxiF3viW5uDKdeYufw6nyIdybXRj
 +KpQVgnFsSNvtDVGRBKJj+yNqNqF9wVbmiDGkdvvkzlvvlkrF+GCMqVR0 Q==;
X-CSE-ConnectionGUID: RyU7a5qVRKC7bJXLcBs+xQ==
X-CSE-MsgGUID: nA0BYTRBTWyUqKNRZODIbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42593076"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42593076"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:51:06 -0700
X-CSE-ConnectionGUID: QRxC04uOSnuel+3NqhQgHg==
X-CSE-MsgGUID: i9EmDi5mRO2eoLBc1WAnEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="120300044"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 02:51:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 11 Mar 2025 02:51:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Mar 2025 02:51:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 02:51:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y/V+8El1b3ODLdVGzvpsiNaaWXyJupVbc1LNV1btzbKFxCnC9rcv59GsdDyb4iCnIt2Z/Hij65sZvNdCFa37dlLx0Jrh5OIk4SqDRdYW9Bw3P7UwOIOkwmuICNcGVwW/zsdAn5nfdyU5el1luFVzbf7CsWwnLuDObKb0dFHVYUZxGcVRJJD5uPCDW/Vd1DNtl9uhiDYu63ijArYWaZx8kWNZk2gS3Yfw6+f6feWehOe3wBXefDzLbDvYZcHOfrdGMdwR1h3DXv8i2KqQgqiI3HglSvKTAOXN66DWsjqXJwLQjr0tQIj4duLSnHogpWZNt4dDr1vrFyNgq8HGP5F/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ei1q9AC7eToNpM1vF6rZY2F3L4o1BVzCaeY0dKKdyl4=;
 b=hJJRjpYXhwyUcEOwQLrfnP/hFWaa/Qx3JYKMdI/I+0RJdGsBn8ouLUM2OUaZ0X8GsJqlNnjgDouzifJ/euIVYNZl/iVWmW01a6seacjIeIcd3bW0pcsL/+eIB7HB5vDOeyU2SD6JAsuRXqbDRa4r1UudxV9ti0FMht1ySzdeuYxQ6/IG3RsQCHAPoKoEM4DiIj0mTUR7LgaHX4UwC1N+vLy9kG1yxscNucGSwBB8tS/0dlnfQgkQcUbNXFaJEkERBEOvDCZRAxHwr+us3F/FcHyZRzpP5/cLcIZBvPw1spQUURlK7D75yWAA5Y64B7Jo0F0Z2RCQNkk7NoQHrWLa4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8494.namprd11.prod.outlook.com (2603:10b6:610:1ae::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 09:50:56 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 09:50:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Thread-Topic: [PATCH 07/11] drm/i915/dpll: Change argument for enable hook in
 intel_global_dpll_funcs
Thread-Index: AQHbh1yq4JyZgItuVUCB42FcAT9wP7NnxWwAgAXncQCAAAFRcA==
Date: Tue, 11 Mar 2025 09:50:55 +0000
Message-ID: <MW4PR11MB7054EFB7E39262C0AC918696EFD12@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-8-suraj.kandpal@intel.com>
 <Z8r9UHTIiz1sagXs@intel.com>
 <SN7PR11MB67501F98E743BC9F39D0B6E9E3D12@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67501F98E743BC9F39D0B6E9E3D12@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8494:EE_
x-ms-office365-filtering-correlation-id: 1ea83c98-4eb7-4384-03a3-08dd6082381d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RjdCbE9lU0F6SW9UMmtleXlCNGVjM1kzU2VHMmZ4amhFZVJ2QXhSYUJIaTlL?=
 =?utf-8?B?MXZNbXNtdW9jNnNqOWU1ZE5LdVRoRUptdElxejhkMFU5bms4Q1N6bEMyQWFI?=
 =?utf-8?B?NmdWT1FNdmRrNThzSUdwOXpBWHB0ZXJoTUNoYVU1bmhlZjNLbnQzTFZSUHlZ?=
 =?utf-8?B?bXpKOXExQ3dEMWhZNk53RjRncGc5MXErOGJ4RW9FZnJTR0sxbldDMHZuTnJt?=
 =?utf-8?B?VGxISzk1ZlNncnE5QlBRMDhBZkhmODZJdlNLaGd0Zm4yVytOWGk2cXBhZlJW?=
 =?utf-8?B?c3VvaXZEc3NEemxLdXBabWNHWFdBcUhKRkdQRSt6ZUJJRUxjSzczMkllMDNr?=
 =?utf-8?B?TmMyR3dnTlpRZ1IvMldYZXNtMWg3ZVJUQnp3NXlHUmdCYmVYZms4STljR2Vt?=
 =?utf-8?B?dVFHU0hqZzZ5bzd6a2t1U1pFaUpvWTUxWlFybkVSUjJJNDNYbDcxeURGRXJF?=
 =?utf-8?B?TktMQUtPcEFxNkROS0wvOUVrY1V5MEhlVHVWNThCTWM0ZmlCOHZ1SUp4blln?=
 =?utf-8?B?c3NZQWdYWTRjVWtmM3lNQ1JhVUxLdVdHTnlWMUFSZzhIWkJqY01vdG9SM2pL?=
 =?utf-8?B?dEk0TGZYWFNBS0tpdkJTVExpYmdEaitVc2tWMFZUek10MlBSYnhjekRBTXFi?=
 =?utf-8?B?RDRSRjJxYkVYcDNsa0UxT2w3Tzh5TW9XUWdtNjNld0lZUUtuL1hLM0FQd0h6?=
 =?utf-8?B?TUg5bGxGTFY5dE5ZNVo5bHV1Q25JQ1Njc1dNakM1ZE5ERjlJZzFqNmdoOG91?=
 =?utf-8?B?Ky9lQWZpb212M2xvK0twcjZtYTdqbURXTXVQVlpxVVBqcTBvMFQzYzJHV01Q?=
 =?utf-8?B?YkdQYmx2MmRpaEdVOXlYNHNwNUdKNHJIRENVcFVFSkFIRGYxL0p3UGpDVFBN?=
 =?utf-8?B?Tk03bFpKOHpDeEUvc1dodEN2WEdHbXlIWnd4b3BSZzk2eE85Uy8rQ1diQ0Mz?=
 =?utf-8?B?TXZ1eEFJVlJYUkZFZVhTOXlydXFRNnQzdFdrUXl5MHdpQmhHTnFUK2QySWxV?=
 =?utf-8?B?dDd1RGZQKzZwblRZYVEvV0xMb01SSnQ2N055Ujh4ZVJCdmhTUVhoVVJNNHZF?=
 =?utf-8?B?YlFJYnBqeWZuQlJYbFR6dGlOY05zbHZyd2lldzRLK3BoaXBEZ0NRWDFKei9J?=
 =?utf-8?B?dlNaM2FncmVuMVBiZmJVUjE1c0VZR3hpc0grS1BtaUl3cXo1RFN2VFN4aUJL?=
 =?utf-8?B?eGczdEJFblZQR0FiMnRhMitHNHRlczdPK3dyYzRXRWFYR0RqaWh0ZnVCS0M4?=
 =?utf-8?B?WVJ1VFI0NnhwNENxelBZNjhjYVpjRnltVWQ1bkh2Tk9sd0RPM2QvbkN0RXl5?=
 =?utf-8?B?bFhzN2Vyb0Q3L3RjdTFLL2FESFlpcHZiODdZV2FSWVNTOWtsV1NpRTBXR1JN?=
 =?utf-8?B?VjhRT0xBeE4vcHZ0em1SSEE5UmVtb1JOeklnZ1F6eVJpZHZmRlJmRFNjZS9s?=
 =?utf-8?B?NFJzZWxGUFJhM2g1Ti8rUFlqaStmN3J3Qzg4cVhUTVFlSEJJOWpXK21xZjh6?=
 =?utf-8?B?WC9IQlNhalhBSE5sbk4vbVl6M3lQdjNtb3p1MlpZdkFkTVIySVkyeTNGUWVj?=
 =?utf-8?B?QkVNa215T2t2ek1YdVVQNzZxVFVKclFzaTRvMmhSdXoyejUzQmhQL3ErOUxW?=
 =?utf-8?B?YVV5K1BXZ1J3MnppYmt0WXFkSUtzSkthMUt5endMcXZzRWVGWWVUSThwd3pU?=
 =?utf-8?B?b0x0dE5TREdFQXlFSklkZjhiMzZPSGZIUlFkdk1BWWVLUDVBcFF5aFJzSkty?=
 =?utf-8?B?VUNJZ0xlUDlHOG52Mzh6cno2L3JWWHlGM2FHWW55MzJqWWZnVmdhRWtGY3NB?=
 =?utf-8?B?Y2d3ek5SZDI1cXkrdzN5QXBNR1E2M1BTMDhweTR6TTl3Q0xrU2xPU0tndkhT?=
 =?utf-8?B?UzNYYkxZNk5rOGxiLzVqak9rU2ZwRHpVTEVPYXAwQmp0TTlKUzRoT1NBTnhk?=
 =?utf-8?Q?1ftJ1kIWMqVyyPCnp4E9d0HA7LPNKZm/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnF4M2JxN0UrU0xqdlFHRHl0dGhNdmt3ODFsRk9RT1RpRUxRWEphVTVQNldJ?=
 =?utf-8?B?RHVCbk1ycXplMHFPN29Udm9RQTd1UFh2QXhydGlhOXBsMVljbnF3VEJBYmsr?=
 =?utf-8?B?M2UrZkltcklsYi92QW55K1Y0bEl3Wm0ra2Ztcm5CbVROd0E3MzZmRlo2RFJz?=
 =?utf-8?B?V2Rqd09DdWhNYjFUS1Jma3dVemxxUjJnaHh4M1pZNHZ3NlRNTG9ZdEc2d2lC?=
 =?utf-8?B?RVkvYnQwOERnMTM5Y1VVVzdGb2lvS1FQbUt5cklXRU5CalVQWTg4ajdYVDdG?=
 =?utf-8?B?TWZZenFNQldhMy9kQnQ2K2lsZm5iYTk2R2RkUEk5dXB6OEVzelVwY2NlVm5S?=
 =?utf-8?B?V0RNb05uNUxyVERkUDBPb01XMHJlNzBPeGFLZE9SOENWN3lRRHNFNDZuOEhF?=
 =?utf-8?B?cDdzU3VGTmRBdTlxRTVEM0kvR1lXZFRBNFBCUTZxcFJaYUd6anpFU1dESDZl?=
 =?utf-8?B?UFR5NzJUMGU2RVluYm9USlNjcjZUQ3RSamRrSThtOFFRT1I0cHV3eStzYjR0?=
 =?utf-8?B?UCtVY1pwdHVUWWFZd3cvL3l4emxKQ1VGdEtWWEVjeERVejV1QVNiUDZEOCtx?=
 =?utf-8?B?Znh0ODZoUzQzbHoxaHZ5Rzl6akZXb0pwMnBmN0lZQnZnUU9RK25OdVlFTGZP?=
 =?utf-8?B?S29RbllUR2dKZzl1RmVFdlllMUVQUmhRTkNGOTZMeW40d0llYUd1M0tjaXI3?=
 =?utf-8?B?V1ltbmFqeFZYSklaTUpNdHBMb1FVbDQxTzZNMFgvVERpUy9LbytlcHBIMzdt?=
 =?utf-8?B?K0l4d21KNUxsWktNWnhDWXRRelBMNXdCeXJ2Vkg5ZkpsM0R5VlJOQzVjbkZT?=
 =?utf-8?B?R2tValo4TmpManpyUFF1YnlpQ25XN1paaURRN0lPajNURmNxYmVteERvMjRG?=
 =?utf-8?B?Z1k4bXMraytZQVptc0EyTEhHMS9lSzZXQWtNZXcvZlR0b2RZNXBqRTEwR1I3?=
 =?utf-8?B?aHdJZnI2ckdSenBzRWFKWG9HUmtlT3hEUFpON3VRUlJYc2FUWnBtQ3dDTmNY?=
 =?utf-8?B?OFFhK1VUdWYzMFJ6cEtTVmNwQlR5QjNDZEJSVHRQdFFzRDlVYmtvUzV6NDlh?=
 =?utf-8?B?c01QTUFsNEluK1V0bzdsb01WamRQNXd4VWw5eEZVMnRPNm8yYzVESFh0RzQx?=
 =?utf-8?B?M1NGaE9JR1J4bWUvUXB6SENYYVpvNU1laEtwTVBXWXdNRXBHZGlrS1haNW9r?=
 =?utf-8?B?aEVrWDBwUUsxYUU5QW5hTzFPOXp3VFZXYXFWRE9MTVh2OGdNYXlscWV0N3Uz?=
 =?utf-8?B?ZytUdU1WYUhPdWhvU2g5NXFqMkF4YnBGTktoU1dKdjlja09jT3g5b2pxVnNX?=
 =?utf-8?B?TTBxVW1jTXdYMWFFNFBWbEQ5OVpGdGhOM0dqSXg5WGxFU0NQcmkvQUJiSVE1?=
 =?utf-8?B?dWxRdWxVQnpIcDNhdVJiSG9DRS9KYnpCVUxkZnl1SFB1cTVURExwUk9qcWpj?=
 =?utf-8?B?bk1QTVJaY25XQjVyUHRkTHk1MXJYcktkdEFEL21VbjZaaHdFTjFwL0cwK240?=
 =?utf-8?B?eTRYQ1QreFpzT2pOOEtzMlJranIyOGdDSTdNWml6KysxVXE5VUxyZjVZdWps?=
 =?utf-8?B?Z1ZhVVRIRmFycjNCeGFtSmsrbEpEKzZuM3dWSnFPTEpKTUNOTDlpeFhjOTBQ?=
 =?utf-8?B?Rk1rL2RpMzVXZzF1SWI5MjNBaXJLa2NlODM3SWlDaGJtdStIUTNFTkU5OHZK?=
 =?utf-8?B?Q1NHN2RER1JQQ1RoaXpNTWpvQWV2VlIzaFdnQTRGajNXVnlEK252aDUzb1Ev?=
 =?utf-8?B?WEZacjUvT2JZbldCZDVrSzFTc3FXbk8yV2QvUnNXUk9BRFA5WUJwRkFvanhJ?=
 =?utf-8?B?Q1dWOU5ZWldUclhKYjFUSm1nMGF4Mk9hazVEdUFCUGk0SUY2d2ZLdC9TZTZ2?=
 =?utf-8?B?akx4WEgrb2dDWkpwTko2cERXR3grS0JESnNBSEJwek9rZ3ljcEZNVnNWcUlw?=
 =?utf-8?B?VTBqcTQwbVhBQmhLTmkwd01KZ1NPdjdUc1RKZGFvSDM5cjZRS0tLYmhKQXdr?=
 =?utf-8?B?L0FiOVJKV05WdkxrdnFRcys2elJYQS84Y0QraVNsZk1KM1IzT2hZQTRlbVZ6?=
 =?utf-8?B?eTNGRjM5M2lMNWtrSXgvY3VmSzNFR2h3RTNhVFYvRG93amhkUXFWY0VkejNy?=
 =?utf-8?Q?Yrj9oJicxylWh0NDgUqCuFEBg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea83c98-4eb7-4384-03a3-08dd6082381d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2025 09:50:55.9299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QyY2wOyWFaKrYe+Dv+G4wHJTGWxaWSqnNFhZXJCZMjBQeL8UxqV9eiDYDxwbN4b6QxSFCl8r4YGzkL6f4G342g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8494
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FuZHBhbCwgU3VyYWog
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCAxMSBNYXJjaCAyMDI1
IDEwLjE2DQo+IFRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBOYXV0aXlhbCwgQW5raXQNCj4gSyA8YW5raXQuay5uYXV0aXlh
bEBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47DQo+IEth
aG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENI
IDA3LzExXSBkcm0vaTkxNS9kcGxsOiBDaGFuZ2UgYXJndW1lbnQgZm9yIGVuYWJsZSBob29rIGlu
DQo+IGludGVsX2dsb2JhbF9kcGxsX2Z1bmNzDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiA+IFNlbnQ6IEZyaWRheSwgTWFyY2ggNywgMjAyNSA3OjM2IFBN
DQo+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiBD
YzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOw0KPiA+IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVs
LmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBLYWhvbGEs
IE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIDA3
LzExXSBkcm0vaTkxNS9kcGxsOiBDaGFuZ2UgYXJndW1lbnQgZm9yIGVuYWJsZQ0KPiA+IGhvb2sg
aW4gaW50ZWxfZ2xvYmFsX2RwbGxfZnVuY3MNCj4gPg0KPiA+IE9uIFR1ZSwgRmViIDI1LCAyMDI1
IGF0IDAxOjM5OjIzUE0gKzA1MzAsIFN1cmFqIEthbmRwYWwgd3JvdGU6DQo+ID4gPiBDaGFuZ2Ug
dGhlIGFyZ3VtZW50cyBmb3IgZW5hYmxlIGhvb2sgaW4gaW50ZWxfZ2xvYmFsX2RwbGxfZnVuY3Mg
dG8NCj4gPiA+IG9ubHkgYWNjZXB0IGNydGNfc3RhdGUuIFRoaXMgaXMgYmVjYXVzZSB3ZSByZWFs
bHkgZG9uJ3QgbmVlZCB0aG9zZQ0KPiA+ID4gZXh0cmEgYXJndW1lbnRzIGV2ZXJ5dGhpbmcgY2Fu
IGJlIGRlcml2ZWQgZnJvbSBjcnRjX3N0YXRlIGFuZCB3ZQ0KPiA+ID4gbmVlZCBpbnRlbF9lbmNv
ZGVyIGZvciBQTEwgZW5hYmxlbWVudCB3aGVuIERJU1BMQVlfVkVSKCkgPj0gMTQuDQo+ID4gPg0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMgfCAxMDANCj4gPiA+ICsrKysrKysrKystLS0tLS0tLQ0KPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCA0NiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3Iu
Yw0KPiA+ID4gaW5kZXggYmQ2MjNmZGRkZmRjLi5jMzlmN2Q3M2E4OWYgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+
ID4gQEAgLTY2LDkgKzY2LDggQEAgc3RydWN0IGludGVsX2dsb2JhbF9kcGxsX2Z1bmNzIHsNCj4g
PiA+ICAJICogSG9vayBmb3IgZW5hYmxpbmcgdGhlIHBsbCwgY2FsbGVkIGZyb20gaW50ZWxfZW5h
YmxlX2dsb2JhbF9kcGxsKCkgaWYNCj4gPiA+ICAJICogdGhlIHBsbCBpcyBub3QgYWxyZWFkeSBl
bmFibGVkLg0KPiA+ID4gIAkgKi8NCj4gPiA+IC0Jdm9pZCAoKmVuYWJsZSkoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gPiAtCQkgICAgICAgc3RydWN0IGludGVsX2dsb2JhbF9k
cGxsICpwbGwsDQo+ID4gPiAtCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfaHdfc3Rh
dGUgKmRwbGxfaHdfc3RhdGUpOw0KPiA+ID4gKwl2b2lkICgqZW5hYmxlKShjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqc3RhdGUsDQo+ID4NCj4gPiBUaGlzIGZlZWxzIGxpa2UgdGhlIHdy
b25nIGRpcmVjdGlvbi4gV2Ugd2FudCB0aGUgcGxscyB0byBiZSBpbmRlcGVuZGVudCBvZiBjcnRj
cy4NCj4gPiBUaGUgY3J0Y19zdGF0ZSBzaG91bGQgb25seSBiZSBuZWNlc3NhcnkgdG8gY29tcHV0
ZSBhIHBsbHMncyBzdGF0ZS4NCj4gDQo+IFRoZSBwcm9ibGVtIGlzIGhvdyBtdWNoIGN4MCByZWFs
bHkgZGVwZW5kcyBvbiB0aGUgcGFyYW1ldGVycyBwcmVzZW50IGluDQo+IGNydGNfc3RhdGUgd2hp
Y2ggYXJlIG5vdCBhIHBhcnQgb2YgcGxsX3N0YXRlIGFuZCB3b3VsZG4ndCBtYWtlIHNlbnNlIHRv
IHRyYWNrDQo+IHRoZW0gaW4gcGxsIHN0YXRlIHNpbmNlIHRoZXkgYXJlIG5vdCBqdXN0IHBsbCBz
cGVjaWZpYy4NCj4gTWlrYSBXaGF0IGRvIHlvdSB0aGluayA/IEkgZmVlbCB0aGlzIHdpbGwgYmUg
bmVlZGVkIGlmIHlvdSBuZWVkIHRvIHBsdWcgaW4gdGhlDQo+IG5ld2VyIGluZGl2aWR1YWwgUEhZ
IFBMTCBob29rcyBJbiB0aGUgY3VycmVudCBkcGxsIGZyYW1ld29yay4NCg0KSXQgc2VlbXMgdGhh
dCB3ZSB1c2UgYSBsb3QgaW50ZWxfY3J0Y19oYXNfdHlwZSgpIGZ1bmN0aW9uIGZvciBjaGVja2lu
ZyBkaWZmZXJlbnQgdHlwZXMgb2YgY29ubmVjdG9ycy4gV2UgY291bGQgcGFzcyB0aGUgcmVxdWly
ZWQgcGFyYW1ldGVycyBzZXBhcmF0ZWx5IGFuZCBleHRyYWN0IHRob3NlIHBhcmFtZXRlcnMgZnJv
bSBjcnRjX3N0YXRlLiBJbiBjYXNlIG9mIGNydGNfc3RhdGUgY2hhbmdlcyBvciBpcyB1cGRhdGVk
IHdlIHNob3VsZCByZW1lbWJlciB0byB1cGRhdGUgdGhlc2UgcGFyYW1ldGVycyBhcyB3ZWxsLiBJ
biB0aGF0IHNlbnNlIGl0IGZlZWxzIGEgYml0IGN1bWJlcnNvbWUgc29sdXRpb24uIEkgZG8gYWdy
ZWUgdGhhdCBhcyBzdWNoIGEgbGFyZ2Ugc3RydWN0dXJlIGludGVsX2NydGNfc3RhdGUgaXMgbm90
IHRoZSBpZGVhbCBzb2x1dGlvbiBlaXRoZXIuIEkgd29uZGVyIHdoYXQgY291bGQgYmUgdGhlIG1p
ZGRsZWdyb3VuZCBzb2x1dGlvbj8gDQoNCiANCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRw
YWwNCj4gDQo+ID4NCj4gPiAtLQ0KPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+IEludGVsDQo=

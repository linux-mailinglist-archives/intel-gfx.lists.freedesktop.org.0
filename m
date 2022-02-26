Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9928C4C57FC
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 21:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A1E10E2B5;
	Sat, 26 Feb 2022 20:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5DF10E2B5
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 20:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645906974; x=1677442974;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=nJHACN06yxijiOPua7Ar9S9b0OmVgIA86Urze9sXd6g=;
 b=fMCvBM5IJ3NR0Tu6DkS9OxQDu1oE3ImUXxJsSigBsWcQB3FsZDzWCduK
 QXxHr5ntgez2fNAcQHsVisnSQdpWI5kg4AqLbKQxKWEOtX9Rjvbi7zl3A
 WD8Sf46TGfpBdm/qap4UmFCsdWMo/g+QZ26ReYCQ7FaL/mEBeH7c/xAL2
 2NkBwsX5YXtIW7VMll7eqb88hMxT8+ff52W2z6wOImmdT62D4XIceU7Fm
 QZ/MEIPy6qEuAqmN+LDYvY4pf7ZA4Dtv+JzzihyClNWqewohzw9EiCWM+
 5Lmr4La+kY4tkDOolVUmk84c5MSA5Eqqb3i6Q4meiYKeoCaXAj6/c0aGL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10270"; a="236187341"
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400"; 
 d="scan'208,217";a="236187341"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2022 12:22:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,139,1643702400"; 
 d="scan'208,217";a="640476969"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 26 Feb 2022 12:22:53 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 26 Feb 2022 12:22:52 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 26 Feb 2022 12:22:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sat, 26 Feb 2022 12:22:52 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 26 Feb 2022 12:22:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eaZV0DSnMH6UxBerex66dTXE/YnRXgfhQF1YgSGT1IknncV1sXwhCL5vOM41Cb6m499TI5A/Euex6pyHmc8gRNVi8U9pcIZPhT7P+g3bSO0Gy/7+BX8ISXNQBGcTBZ+P8vLm8i+wxXog4+NLEchExuxjZaRIoiyteP0tT3vLT9mTxECIjAox3rZm0/SLqdDh2jkZIUrws7mNdakcM1QB5k1HxVX9b5EOzP6HHpdXyqn9kydQGhnKeQovJuHRB/PZ3NBlZQUvfb6yzdI1vePMSeEA3VfqORgfBlJzY/TPMLdkjhMZ/lOb9N73dDUajQObzMSPgvvneMJwhOQ84zcUpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjf8BfFk553OL5eCSHpryGqxy84BMn6R7qR33x5dTNY=;
 b=hF4kVXoVGowjeb7cxJszyrcAPkhmQw5bMuqhG08mDH29QMSnjstYvCnnObYqLUeuqNyi9lFeK/AontcugrV1d8Jw6nfzEW3whSPzx43EOGmSKPHDzFVs+82uwk94vpX35eIAAaa59BCF43LAotmsyRMY6SbZ/6p9xxp9Jkn2kgQvZT+0rLjWqjzNa/MAlEtUf/5EOBdCd5KmPlLMnvnFzyFIyuWeECqFuqiiElWudikbB2J8Gag6+2Aply4IPYYHBFU/eShEkJRAs+BTn670hGE1bICBCeUsaR+bGrA1wnTJRc0MFdkH0r2knOs2W7jWXtdu3/TXkRS60YfJdP15Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 DM6PR11MB4123.namprd11.prod.outlook.com (2603:10b6:5:196::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.25; Sat, 26 Feb 2022 20:22:50 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::46d:4904:af57:729f]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::46d:4904:af57:729f%2]) with mapi id 15.20.5017.025; Sat, 26 Feb 2022
 20:22:50 +0000
Content-Type: multipart/alternative;
 boundary="------------jAl6DkmNrcMAQEYq7HXyZc0V"
Message-ID: <7c19fb65-f134-73f3-b984-cecf6ee640ca@intel.com>
Date: Sat, 26 Feb 2022 12:22:48 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220226095541.1010534-2-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR03CA0342.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::17) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5188735a-b08c-45cd-4c73-08d9f965c2ca
X-MS-TrafficTypeDiagnostic: DM6PR11MB4123:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB41238F4E0D5702D491F317948A3F9@DM6PR11MB4123.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OWtfwBZWpRUdLsrkKES/ThLhXmiHuh4ZSW+mwMIV0iOfRnfaupeIirlJMcVwhlnfJ8eatzwRts4oCsGkX3IGKUwWF8oRIYA2gE2Fks2Z+/ICBnSxkrf0Sl5g55jhZyxaYAiuMvFeedXgzBMBpBX4kqSC7xeyaUYfJjQ4rYyHo+mTGqCwF1GYFYXN4/BZmOr+lJQfhiWiIiKA6CeiqKszfmfQ6GII7tvHCCkrQcPnkRkADEcX4JEa5S3+0DVRFar1u63AHXDE+aX0uPHwe84S0kpnIEMUJgNqsO1yn3tA9JfKAEu6II5na7C+cDxi2GceqMy6gV4bsNv2bnqanWDg2LKHbah7+oMptTBuwupMSRnmVutK2hDEa0F90lYdTLRcp24uXGLwQfmbvD/D/y4DLcZz5skE/8NvIcZ6c7HVt5ObOzanLBgLP/oPWMaOIks2IbZ2ZK7PzOksIYdZC2kF1tCmwrCRG+UCBDRGM2yWNlhrnz86O/wWsSKUiKr8aKc6f7+wtVtGJN+0EfvRVnlpmxhDYMeUIWNwQj5KxIbsv5OAa1gLS6px8RZqm1zCTX9pmrDaWnmJSp2TfO+Yd1jSCK78+PoJvjOGH8G7WpkXL54tDNosr6X47P5z9l8zYYrPzJWR9x/zI7zDSG7o8vE3owe2MucZxRO+iE/N+2+lKVlgI86FosBktMi9LBBrXVwWCfKKkVabwi589dSMio6y62F/usnXmEIHX22NwmVSjAs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(53546011)(2906002)(33964004)(66946007)(66476007)(8676002)(66556008)(6486002)(82960400001)(316002)(6916009)(508600001)(5660300002)(31696002)(2616005)(26005)(186003)(6512007)(36756003)(8936002)(38100700002)(86362001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVRlS013WUxkeCtkcXpWRUlXZk9nblFnOTFjUzBGSGhpKzhDSEErbThjTExW?=
 =?utf-8?B?eTgvRDIwMHpuY0o2Z1hzWXRMSlRHUUduZ2tVTThOd056UTd3TnJLZ2I0aGZt?=
 =?utf-8?B?enN0STNSR0ZyaTNYQ3Z5MnV1TloyTG4yQTFHeFVJeXlFdEJCQ3NkdGs5L0V3?=
 =?utf-8?B?RFdYSzEwQjhFcGpVYlp5eXZ5a1Z2QkQ1NCsrYitPSlQ1TWo5TTNVU1N6Ky9r?=
 =?utf-8?B?ek1vTlZzTWk1YXI4WU1ZZnJEREZaeURMYXBicnJXOW01alJLcTJJRkFNM0Nv?=
 =?utf-8?B?aTFqckRORGlJYnRzU2M1ZmtRYjU5RkNlayt1S3UxTFI2VlJBc2pRczBjU3pL?=
 =?utf-8?B?bmpNeElEZkhaSjh5S1A3eU0xa3dVMjlqWUEvczUrYWxDbHdoOWRkeURuSEhn?=
 =?utf-8?B?STFqOW1LVEFaN2tvczkrY24zckhtSkx0THZKVmVYdGZSbEVQUlNPa3BJZldN?=
 =?utf-8?B?TUdJSTVCc0xydk0xYXVsRGhEdEx2QWpXeEhJbWpzdEt5Sk4zTnQ4UFNndmlL?=
 =?utf-8?B?ZjNXSXFkR3VnZE1jb3NPdFEwQ2VYYXZ0UlZFeUMxbFR1Ri9XWWszdXVXNzZz?=
 =?utf-8?B?aFVlaWYrU0pYVlJIMG5VTkVtVmpubEJyUFR6cFNnd2tqcHg2WkxmVUh4UUZw?=
 =?utf-8?B?dEs0OUhLKzY0MmhIeEZBcllGTWsydGRuMHAyOEpkNGhwRFI2SlVUbG9TOFFl?=
 =?utf-8?B?TFJRYVl3SUhvaUFyOU1WeVIrQ2N2eWp1QStiN0E0M1hiRHdKWmc1TlZYTDZ0?=
 =?utf-8?B?RVlkanQ2ZVhJcXQyZjRhV2V0N1ZGSDJDd093TWR2Q1BnMGFSYkFCQ3p1YStQ?=
 =?utf-8?B?a3RUVVUxS0t0enhnZXByUElUS0I4eDBVZzZCYjMyQWd4ZVM1SER5cUtmaGNV?=
 =?utf-8?B?VjdlL2FuOUR5eHMrRStRc1M3MGJZeVR6QkFKaHlCTkdOOVhlZ21WV3VYVFdq?=
 =?utf-8?B?dkI0QkxhRE9KaitIbDdvNFMyUUhLVEtCdERWaVU1NmFPcGxuMFF1Wlh3UDZC?=
 =?utf-8?B?NklmRnV2VWdCZktqbjdFcGRqc29yOFcwOUh0REVSOERla2NkUlNWaWVWazdh?=
 =?utf-8?B?TmdoaGtLNzRLd2V4RW1mRW9odVhtQTljUExFS3lUUndTT3NaMTl0MDIrdlJG?=
 =?utf-8?B?cmtKeFBpQXg1TnZmdSszcUFGUkNMa1FEUTNWK2NVczJNUDU3U0tTVFhiclQ5?=
 =?utf-8?B?enA3dnVlOXFieFUxclBKeFJjMWE4OVNYd3U2M1RjTGpIdmtnK082YXpLaTl2?=
 =?utf-8?B?MU9XU2JaMlE5Sm56VnJuaXVuWTlQaGg3MWdLMTIyamJkN3RiOGs1dXhQVGJn?=
 =?utf-8?B?MTVhMDliUmFQemErdEliZGY4UFloNm5mOVQ5VDNDY3dVSGZFQXUyR2VYSXZZ?=
 =?utf-8?B?OGNNemdXWGpqWkpVREhzVGlMQnYwQVZlSzU3bGovN0FhNkUvSHo3TmtXRXFS?=
 =?utf-8?B?ekxDK09LSmtabXo0S2kzRGJEcm1GOGFodklxbW1ZSDhLOGdnY1VpZHR4R1dx?=
 =?utf-8?B?SUtwNnk5UzJTSWxZMXkrb0paaVdyUU5BZGpXc2pZUFFLUG8rdTNBNGpENGMx?=
 =?utf-8?B?dFFZdFBYcDBQdThSdldHNUlpVmIxTG9LSnNPZm5NdFhvTFBEaW1VZVoyYU9Z?=
 =?utf-8?B?Qms4OTYyaUhiQ3NOK01jSEtGWjZZVFlPZURqL01ZL2k3eWJVWURWWHFtVVlS?=
 =?utf-8?B?WElUTzJ4NzdnbXQrNHFRVkJ6eFNYdlljYjl3WldRYVdsdU40OCtUeUdPbnVM?=
 =?utf-8?B?UjUveWF0U0dtVUNtVVVDdEtvS045c0d6RUw3MWMrVmJsdXB3c3VMR3ZidTdX?=
 =?utf-8?B?OEoyQnhEUGE3Q3B2bkFOYWRXbDBncnNmSUZoMm05cGRPWkMxODMyMUczb1pV?=
 =?utf-8?B?SXd3Q1JqUnM1QUh6RjEvbjhTSDlCSGgxYTQ1djI5R0NSdnd0MDB6cDYxMVpQ?=
 =?utf-8?B?Y05JSTU2amZURWZNcmJEZXRBUnlJQmpSUVk1K0tObVVtanVYWXAxbUs1Q0Jk?=
 =?utf-8?B?SjY0VnZKMFRNYStndE9ONm5aRkhSbWtVVHk0SXUxajAwNGtMYUVUUDZtcmk2?=
 =?utf-8?B?Qlk5b3ZiWnpuY2c1Z0ZTKzV5Q0pmSUQ3SkhCOTgwN2VuaVdMNHBvMGRGcGEv?=
 =?utf-8?B?Q2tjd04xQ2V3cEFpdTZQdmRaNXVoWElJNGVzWHV1MTlCcG8veGdPc2NITzRp?=
 =?utf-8?B?K3pRbjRlUjcyREhjejlJZ1JoM3Npd01CdS9wZTFyRGIweHJjSHgzUXJNS25N?=
 =?utf-8?B?QUhZYVNUVVA3TGUrTHMxNVNyWTg4UXVZeTRYcXdObTZ4UFh5YmFlaVJQWDlI?=
 =?utf-8?B?L2NSOTNzL0JFWSt0STFiWDlLOGIwWW5ZeFF6MHhGSzRKNHZZNDFIdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5188735a-b08c-45cd-4c73-08d9f965c2ca
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2022 20:22:50.6405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VUL/oYr9yDPEe1iXF+V7y7gSik30YJ25EWZS8ycrQQVLnUCR0BN3wE4GSQPfk5CueBSga/9vgyERqtseH3QKjQR/OsDLKwcVtR1ppPe3guzfdPvtjTjSrIT8lv8cSbTU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 01/13] drm/i915/guc: Update GuC ADS size
 for error capture lists
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

--------------jAl6DkmNrcMAQEYq7HXyZc0V
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2/26/2022 1:55 AM, Alan Previn wrote:

> -static void guc_capture_list_init(struct intel_guc *guc)
> +static int
> +guc_capture_prep_lists(struct intel_guc *guc)
>   {

...

> -	/* FIXME: Populate a proper capture list */
> +	/* first, set aside the first page for a capture_list with zero descriptors */
> +	total_size = PAGE_SIZE;
> +	if (!iosys_map_is_null(&guc->ads_map)) {
> +		file = shmem_create_from_data("guc-err-cap", null_header, sizeof(null_header));

Alan: CI caught a bug - above line was triggering memory allocation
i completely forgot ... will fix to match the other ADS err-capture lists
in this function - i.e. intel_guc_capture will allocate on first boot
and cache it.

> +		if (!IS_ERR(file)) {
> +			shmem_read_to_iosys_map(file, 0, &guc->ads_map,
> +						ggtt, sizeof(null_header));
> +			fput(file);
> +		} else {
> +			drm_dbg(&i915->drm, "GuC-capture: failed shmem for nulllist = 0x%016lx",
> +				PTR_ERR(file));
> +		}
> +		null_ggtt = ggtt;
> +		ggtt += PAGE_SIZE;
> +	}
--------------jAl6DkmNrcMAQEYq7HXyZc0V
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <pre>
</pre>
    <div class="moz-cite-prefix">
      <pre>On 2/26/2022 1:55 AM, Alan Previn wrote:</pre>
    </div>
    <blockquote type="cite" cite="mid:20220226095541.1010534-2-alan.previn.teres.alexis@intel.com">
      <pre class="moz-quote-pre" wrap="">-static void guc_capture_list_init(struct intel_guc *guc)
+static int
+guc_capture_prep_lists(struct intel_guc *guc)
 {
</pre>
    </blockquote>
    <pre>...</pre>
    <blockquote type="cite" cite="mid:20220226095541.1010534-2-alan.previn.teres.alexis@intel.com">
      <pre class="moz-quote-pre" wrap="">-	/* FIXME: Populate a proper capture list */
+	/* first, set aside the first page for a capture_list with zero descriptors */
+	total_size = PAGE_SIZE;
+	if (!iosys_map_is_null(&amp;guc-&gt;ads_map)) {
+		file = shmem_create_from_data(&quot;guc-err-cap&quot;, null_header, sizeof(null_header));
</pre>
    </blockquote>
    <pre>Alan: CI caught a bug - above line was triggering memory allocation
i completely forgot ... will fix to match the other ADS err-capture lists
in this function - i.e. intel_guc_capture will allocate on first boot
and cache it.
</pre>
    <blockquote type="cite" cite="mid:20220226095541.1010534-2-alan.previn.teres.alexis@intel.com">
      <pre class="moz-quote-pre" wrap="">+		if (!IS_ERR(file)) {
+			shmem_read_to_iosys_map(file, 0, &amp;guc-&gt;ads_map,
+						ggtt, sizeof(null_header));
+			fput(file);
+		} else {
+			drm_dbg(&amp;i915-&gt;drm, &quot;GuC-capture: failed shmem for nulllist = 0x%016lx&quot;,
+				PTR_ERR(file));
+		}
+		null_ggtt = ggtt;
+		ggtt += PAGE_SIZE;
+	}
</pre>
    </blockquote>
  </body>
</html>

--------------jAl6DkmNrcMAQEYq7HXyZc0V--

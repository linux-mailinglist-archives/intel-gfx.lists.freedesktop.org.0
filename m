Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BC03B6ACE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 00:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1337E6E59B;
	Mon, 28 Jun 2021 22:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E21A6E59B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 22:05:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="207986105"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="207986105"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 15:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="425279910"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 28 Jun 2021 15:05:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 15:05:27 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 15:05:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 28 Jun 2021 15:05:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 28 Jun 2021 15:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzumZJ9v1py99fRXabKtYd5He3iQ/iFrque/Uqj37PT6JbHHRdlZqzNU21GalAtTuveVNnO0suLxBJFQQw0wZ5wUtrtVsv0O+QgubAyhWhP0dcWmjFjQCNXfVXiffXL9kscdZzYqOhr0fJuOuAutBNhIDINkFVORUlKkNDlQH+0c+qLYWp6iqt8SV8sPt0MyyDqMKHp1KoftR/FI6Nei/xuNhPMMYOMHf4w3u/S/ubGYckJZztsBZaYjOvHn+4emwfTWAwcz20d4Pbii1cjsigS64jFLrKJQUuAvs4WY7oCP2kTsz68lLnrtgBzsHWxat5XXkRK6HzypPFgYJavasQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRif1jKShgOZQPTXYMHGzwMMFhvTEYeTeY/JWhirV+M=;
 b=j7zwwhA6SoITpo02w2ZpVq6ztXwBuE/UqGD6H/Zi4LXVajleayqpjmWK+ASDI4HBd0/5ytMwW6id/yJ/b3estNuhS7eCepDi+NRcZA/6SV1h4txRKTHPqLzWDGgcqIRlXmuN0iaWm87mWilMNMFiTccwy4QO9hAVp324bEc17qS5+xgHlu1QMLfhwEkXM/eitu8uRdqsxlqQUUWlVmGsJ5jgJgG33tKqP7Vn5YFBGnvQDCKbEEPN5T5eyzqA9qjrzALn0qMHr4ud4/wdmUYhETSFppHaSi0bYsY2CLRg7yLrL4mQ7X28h9NFOkctlhitjs6OA6EGFDgg30so9JTLQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RRif1jKShgOZQPTXYMHGzwMMFhvTEYeTeY/JWhirV+M=;
 b=yeA201bSa6Bo+4tcscai3ek46h5tpBWlzYQaAGaS+nhOmq/bv/X4DCNU8d1zVi1PjrN/q3UJR1pFpudEa9vF9faizfBBWzUy65OCfAJyzRmpMD3W98Z4Or9D9N7hql1iVkIWj02/yNHp9+yHe04+cQDK73ZzoprTyJlxbWN8yVc=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Mon, 28 Jun
 2021 22:05:24 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244%2]) with mapi id 15.20.4264.018; Mon, 28 Jun 2021
 22:05:24 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915/firmware: Update to DMC v2.03 on RKL
Thread-Index: AQHXZveCL3vwceX98UeB2b3lgtolAasqBXOA
Date: Mon, 28 Jun 2021 22:05:24 +0000
Message-ID: <9eba21f3ef1c797b64ca76b00ee3da1cdc1b7fe2.camel@intel.com>
References: <20210621234515.9433-1-anusha.srivatsa@intel.com>
 <20210621234515.9433-3-anusha.srivatsa@intel.com>
In-Reply-To: <20210621234515.9433-3-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2601:1c0:6901:f5d0::f185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 026b2d5a-82e6-4945-ac73-08d93a80d48b
x-ms-traffictypediagnostic: CO1PR11MB4785:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB4785694A262D1DB8F207FF3CC7039@CO1PR11MB4785.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:551;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TkCJtAlqjwWp1TfHe7zsmEUlRNDdokMyIrlirKscj+x8PVWkFr/AB5xRoIMUgA9dBCvy1RRFqRXxx5BzzceTOdHf9j2Qs/NmjwLVck1vo4hkh4CuF/sFPlldHy/EUlBqZt/yk2G2AGSDr8wap08jMOl81JC6aSdlHg53Os2PB6gAubfNogule8+uW/fkEVeXB8XDh5jENA5Vz45UyG+krXbaE0f6U/kj7cKYt+nYcLO3/qaJwIFQCnKu+ps7Oit7tmsryHbRMV6KjXosxt6V47QzCKUS7O6jtGPRDRZ4tUtNiCtXQiPJYxtgrM0YYx7OOjtfqLQzzlT9A+gFaUy12Qks99XJytiblwpumxkKC/x2a3AoSDrOUD0fjUYZIEOumTDaJ+qQe8JERB7q10kKBKgsbyblRXGcWrLBB5eL1/OLZlm0AudoSVshGMNiaXOa7lMeZ1qkU+leEk0kZFzIczxC1SCVe19LNMoxgBDDKmZ6SzdmubeBdVh8QoI31pJ0Q7Ewz5jAptK/hWL/Qw7euGGewiXAAJ8cED/ZGlkvB+dry85QPRAjsXyhUJq4A2rYfXt8RvB9/BEUKQn5/KsicYl/Wg/5YEXdOBfHs3fheVQv2tZymPtbaaYjkFP7mtYSlZ3ZkCSyhTSp7dBj0R9xBQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(136003)(39860400002)(376002)(66556008)(66446008)(71200400001)(64756008)(66476007)(5660300002)(186003)(36756003)(6506007)(8676002)(2906002)(38100700002)(66946007)(8936002)(86362001)(83380400001)(110136005)(2616005)(478600001)(6512007)(122000001)(6486002)(316002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1JhVENuVHQrSXk4Sk4zYkZDdWo3eENFeEExQU5ZTWhRWGZDVE5IWFFEQ2w0?=
 =?utf-8?B?czZ6OU9iUXJLUkc0NU5yN1BodXB0VUxHQ3AyUDZVV3FWY2RNMlp5bHZxNnNU?=
 =?utf-8?B?NU1QVlMrdmJIdXNRampuSy85QkZGZWt6WGtIWWZNR2RRTWF4bXE5YnMvdjZ6?=
 =?utf-8?B?VmV4WVNkY0RkejIxbzR5VUZjS3luK3RVK2t6RC9qVlFxaENncm5uWnloOXBY?=
 =?utf-8?B?L1F3U1JBVm9MeVZTdmY5YUYrM29KUG9NM2tNYnVXVUdQZHJLVU1uelord3Nq?=
 =?utf-8?B?WmF4U0p3azZLcTBGODJPU2hjdWcrTjlWYzZZL1VQNlhXVFZkejNPY1l6UFhx?=
 =?utf-8?B?c2JvMVU0cGFWbSt4cFNXMU5MZDlZMFFEUi9DekJpKzBvU0EwUXRyb2F3dk9G?=
 =?utf-8?B?UHRDODlhbitzZzREMWdMQyswVFBoQUhDNW9McEp6cEUraFhIc25mVDN0akVD?=
 =?utf-8?B?Z1BQZkRLVHBWb1lsKytsMHIwQmJDZ2Y0U1d5cWE3akNYdEk2NXM0UnZOb3RN?=
 =?utf-8?B?S1Z4N25VK0tOb2dZdTQyN3pMLzZHZkhocUhkcmRDUlQvblVtV1hXQ2k3QTcz?=
 =?utf-8?B?cUNEbHBjQWFTS21idzNnRjErbldKMjZVMUF4WU1YMHkySGFrOFNUQTJUMGpX?=
 =?utf-8?B?bERWODBrdFgxa0ViZU82K081alAycFM0YlZEWGJ2dGp5UDNiRm1ET3NPOU9X?=
 =?utf-8?B?Z21tSWRkckpZKzU3ZHI2VHBFSFlxUzZGb1JhSytIK1JwRHlkR3M2YjVVeEpv?=
 =?utf-8?B?dzJ1M0ptZ0hLUTh0REdxcVpicERvdkdQd1ZYN0YwMGNXVTI2NEh5Qkd1eERB?=
 =?utf-8?B?dW51SkgvaXYvQ0xMeGdzUmozM0NrdmU2cHNmZUxhN1gwK3FPRjg2R0NENlZy?=
 =?utf-8?B?OWNoNVBxbHV4S2dlVE1SOTVKYnJvTG9lYVMxOFBmODJDS3hlTjljSkxXN0NE?=
 =?utf-8?B?K0lTbElPbjB3UGRkaEJSdnFtS1hzVlJHY1hEOTlwZFBpWWR4Y054ZW5KdWVK?=
 =?utf-8?B?UFkyYWNoOFFTbVhLMVpJTkZlRG9uam9uQXVER1d5LzBvcnhZR045SGowQ0xX?=
 =?utf-8?B?clY4SlFhYnI2RUt4WGtkeFJjWkpZd09BSWpFRTZkdE1mM3U1MkZRUUNqVnIy?=
 =?utf-8?B?eWdrek1mTlZnQmNDUm5kQXgvL05PY1dpUHFWVHJZeFY2NTZRazBRTmxva2h5?=
 =?utf-8?B?a2pvWW1vajRhYWNiM0ticXJOQmJrVTlXcEdhTDI4NzkxS0NXWWx3R2wrejZK?=
 =?utf-8?B?bWZPMFRsVnFmTE1rMHR1VjJlOWZRbmxzeDUwN2VQYVBYcXAvL01PZXlUOXZt?=
 =?utf-8?B?dDRVcTg3UmtoZjhFY2t6MDRFVTkrSjZzRDU1R1V2MXFIR1F4OEdvUWcrZTln?=
 =?utf-8?B?NExTL1FyQ1llTnlNQVdCc05oMTdGKy93THl3WnJ1MHcxTmtjUFd5dk9pc2xY?=
 =?utf-8?B?ZzlnMzNlRjNsdHNzN0J2OXJrY2t2anpXZ0RYVkIxVUM4NlM2MGlWaFQyam9Z?=
 =?utf-8?B?N2JKY2U5RXJNZE5jRklMRmtZc3Jkdmw2WXpzN0c2WXJpT3BBV0hvQ05Iano4?=
 =?utf-8?B?QWQ2VVlES3MvVjNBbElnSWlaak1sbXh0L3JObFFSKzBEUkovSHNOZUZYZHpE?=
 =?utf-8?B?UFpCTXlRZlRqZVFoS2xKdGhjc29NemNvKzQ2UWo3Vlh6dUlwdUVoTlRwc2Q4?=
 =?utf-8?B?c3g4UGp6UTh2R0w1NmlQVFlSYUtBYWtzVmJuY3NXSlNSV042V3ZSbHgxRGRR?=
 =?utf-8?B?SjZETnRkSFMrL2ZnNEtrVHRXWHFFUUh1RzgzWHNwNDlLL1JwK3l6VlBndk9Y?=
 =?utf-8?Q?3vzUuKwnHcXgYIc4DezsTzmCnNskhiPe0b3hY=3D?=
Content-ID: <B64FF49A9DD73945BEA62CEA54B33418@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 026b2d5a-82e6-4945-ac73-08d93a80d48b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2021 22:05:24.5037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6DwoCGzTrIRg8oRRLn7c1GgJXWoT9ROWKG9Sm2rwhV69WulZF93thRUDEey/JwaTNtKwVcEZXK6MgH9UEFIr27jGLKrHN8ATTH3nFetlK8Smj3dwtYBZYIE5iDtT7g5Ff1uHHlk1WcXQuahfGE1A0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/firmware: Update to DMC v2.03
 on RKL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-06-21 at 16:45 -0700, Anusha Srivatsa wrote:
> Add support to load latest DMC version.
> The Release Notes mentions that this version fixes
> timeout issues.
> 
> Cc: Madhumitha Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Patch looks good.

Reviewed-by: Madhumitha Pradeep <
madhumitha.tolakanahalli.pradeep@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 1d47f43ada51..45b7515e6a91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -53,8 +53,8 @@ MODULE_FIRMWARE(ADLS_DMC_PATH);
>  #define DG1_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
>  MODULE_FIRMWARE(DG1_DMC_PATH);
>  
> -#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 02)
> -#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
> +#define RKL_DMC_PATH			DMC_PATH(rkl, 2, 03)
> +#define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 3)
>  MODULE_FIRMWARE(RKL_DMC_PATH);
>  
>  #define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

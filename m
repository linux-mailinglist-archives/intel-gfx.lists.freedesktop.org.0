Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AA5900058
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 12:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E34D10E151;
	Fri,  7 Jun 2024 10:09:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RRqqNj0M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920FF10E151
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 10:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717754972; x=1749290972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UW9bqm0zuHjjZHZ49OX2YWU6Go4aF4j88yPNYdiRlCQ=;
 b=RRqqNj0MRfFVhwmg0BI9zbnQ03EOnopejS2czFg6RNuLYjtoz4k70Xhg
 8ojzC/+zM8Nvtl13Et0C3oevMU56VoURPjjoNdJktBbEM+Wp8sG2bR/A1
 t5ZuwFxFjKzdy93bpvyZLGwv1wWb1HtnldViMKT5n2+IOtirw5j7BrCwQ
 m+CagP2baL0Bw5vVQ3GzgBB5jNehyHyRY07eCYMsRMSc4jTJvpPycmeZJ
 /bAIs0ueEntKiMFSChfmWpTWMyhHPxZy/DILcFSqtC8S9PNhgBe40mpK4
 nIIw8Dpz/eI54dhAyIsQQjKDERDd9ACPIdeLsnKScG/x+iz7l91tyLOJ7 A==;
X-CSE-ConnectionGUID: DOwPz4GMRPiWd9aiVFH/DQ==
X-CSE-MsgGUID: 4B2dVjCQRm6KdUXmZxTR4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14585360"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="14585360"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:09:31 -0700
X-CSE-ConnectionGUID: ABad98ZdSzCqCyDSgFZahg==
X-CSE-MsgGUID: 0nfFm+MzQbWcssJwRCsJuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="42692817"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 03:09:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 03:09:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 03:09:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 03:09:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csh/pCZbRMGSAOdiPpkIpKgrPLKDspd71vVhu5VDTd+AP7r3xen6nEMZCwpShoZJ8yZu+FdeOpaudVVlQiE2lg3sOOpSQE9lPqR6NzgljLRY2hN6KuQkOY3i/hNswDEGCtByswPiwxWwcDsaAN77e+JuS8L7Qnf0n1DvbUsblPD1FKJvyx+J1L/CPcoEbCd6wAlvKDwrb2OiLgNQ8j7G+fSIpdBm20EpCojMON7xkLh3Kt5HqPk0IUJ9voLFq7O8cVnj5jN8kvpsamlOZca+PyB+ZJidAh05oh3qMWYvgox3I228SCW2J8ydlU3bPtd7p8EC/zMjw3HPZj5a3lWUSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UW9bqm0zuHjjZHZ49OX2YWU6Go4aF4j88yPNYdiRlCQ=;
 b=kCvG6Xu47zizHj68rSFh8b2p4yhuH/jarClZ3+M9GzTRF685FHPNCzfx8HdgMkzS8ryRrU/CChAphFN9nHoj6iZtrTZFEHwnElKlzUxMFqQidaHTouJ5NuZEK6CnVsDU+Uqq2Sm2XRzP64zqTu++urOG55yvEp7fv7IKgtxfHhY8cSnin5Wg/LPme+wU56SwAxGvwoUweZgs3nLxp6gnO9VBy+q56QAWZ8b6+nFNBYfXFBc7NZBjOXuh0Kj+CzcS2SZQjds6gbBlaikBwr6VJWKqVy/Mdtw305O+g/y9RZ0BpNUlbnzqSkund4DcUXgjkCUeGCiDbY70WOkcjl9XhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8666.namprd11.prod.outlook.com (2603:10b6:8:1bd::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.35; Fri, 7 Jun
 2024 10:09:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 10:09:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdsIUoGo+1NESwzwj69wwgrLG6zW5ggAATFICAATOIsIAAAXuAgAAAuaA=
Date: Fri, 7 Jun 2024 10:09:28 +0000
Message-ID: <PH7PR11MB59817199FD450B51364D9DF8F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
 <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <60a3055fc15403eb21cf003ff67c64a0bdebf7f6.camel@intel.com>
In-Reply-To: <60a3055fc15403eb21cf003ff67c64a0bdebf7f6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8666:EE_
x-ms-office365-filtering-correlation-id: 90940c8b-9413-46b2-bb60-08dc86d9eac0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?SHhZZVZnaFROU2NIS09mdmNVN3h2MjBiOEhQZ1paSlVFbWIxNWJZRnFFdmFZ?=
 =?utf-8?B?cTR4YWZYaDdxbzJxQjM4MGJMbUlLN3ZZOUtFNmFHeSs2NTJFWWVwUEh0dExy?=
 =?utf-8?B?NHhTZmdoRng1UmtmNGRNOEJ1MlY0ZksyOVp4U09QdW5uR0tReCszNVNLdVRz?=
 =?utf-8?B?R3V4WTFPVHFrOENpZGMzejBrd2tjODJZYVhVcXVjYjZGa3c4dGxPM04rVnJV?=
 =?utf-8?B?aW5iWXhENnZ4VWtEMEJOcHFCV3VWRXhEWGd0eTRjMnRRdG83RThyRXl1REpt?=
 =?utf-8?B?NVZLOWxLQzNTNWdlMlcrYnB2amRURG9WWUJOV3Z2KzYyc09XS2JrWW8xWDN4?=
 =?utf-8?B?alhCYUdpRVFrUzZPQjloZXZTVExDMlZyVTRUVEF4SzJ6a0lBTThkVTlNTUZv?=
 =?utf-8?B?cGMwWld5RGV1KzhIaFFQbTlZWjBOWHY0M0gyRjY0bHpDRTZJT3JsUDRaSXpH?=
 =?utf-8?B?UDJRQkNOMDhkOGZYMngyZTlhZ3hTRGpYdEJVTFFVWm1oQUl1WWlWZjYzLzUw?=
 =?utf-8?B?d1dkSWlxL2ZoMEs3V2k0UmtBNkQ4a3BOanFsdkRQM1NvT1pVM08rdDlieUpt?=
 =?utf-8?B?eFZpb1NBcG5YVjYwTWdlV3gxSG5GYmJ2U09KM29kVmFWQ0R1SHZ0L2JTU2lM?=
 =?utf-8?B?MlVjYmZrWXNMSm5hZUp4bnhYRHhVTzBFOHJNam5YdkVCUTUyNnlCVEFJb0hS?=
 =?utf-8?B?Qk5FKzdwMS80amxqVURMMkl5aFgvYk1DcEI4UU1MbEI4eW1oM1NsVXJYSkFo?=
 =?utf-8?B?TGM3ZXhvTitaSXN5TUFmUWhWOTdTaHVMU1ZkTkMwbXl1aTNaL1F6QUJpeFAv?=
 =?utf-8?B?UklrVG1JUzdNRjlsN2ZZYjA5RWZsSEhCeHd0WVhvbCt3N3BvSWJSQ1NLMHZ2?=
 =?utf-8?B?YVlSRjBVYUR1TGhCUERZVnRNUW5Fd2F4M2dOa2o4Y1BDck9iK2RaNzVyVHZP?=
 =?utf-8?B?L283eENiZldTM1grbEdkL3U0S3ArQlQrdjdUUkV0UHRmSU1SK2JwWFUyaEdS?=
 =?utf-8?B?NmdWa2pkRnRNZWdlakpXY00yUFNCQjVmc3RzcFRFR0hWcGNRU1lyYm5nNTRq?=
 =?utf-8?B?b3FLbmlraFF1Wkg1TUc4dEp0aTZMVGdMYnV1c3FUY2c2MzQrWDRUQzA5VWt2?=
 =?utf-8?B?bEx6VXVVcHNPU1Z2SDA5dU44TngzR2p2TUlEbVVGbFczWGMyTUxNUnNHbmZP?=
 =?utf-8?B?ZlFHWHBvOGJNZVBqaklrZ1pGTjZ5b21Jc0NXUDEzbWY4Rmh2Z281SjNCWURa?=
 =?utf-8?B?RHJ5YkxWVEV4K3ZTblpQZkJXVW55Y0djZjMzWS9sU2diV2IzNWFxeEhkd0RY?=
 =?utf-8?B?bEN1VVpDTHNyK0hzM1BpZzFvalhLUmtNdW9pS2lmdDA0b01NYi9KS0lvSkQy?=
 =?utf-8?B?eGdYUFBtK1RCNGovb3BJV2dKWlpqRWZqUTZKTVhOOHRtVnJLYi9vQW8vekNs?=
 =?utf-8?B?cnpaeWoybG15Vll4QXFObFQxVDdxQ0N5MkdzVkRmY29RRitWcmZqOGpVam5N?=
 =?utf-8?B?QjJXclFOZ3RqNVZiYVdMZHhOUHRUcE9SL2NDMzdhbFFCajFMWWhGekZ0TVZo?=
 =?utf-8?B?Nml4OXhycUIvbmoxTWVJZGhBZnJZV0RzLzd2RzN5NGVmS0E4QlBkZ0JvU2l3?=
 =?utf-8?B?Q0FKTWUwZjl6alB0N21wRXg3Sld0QTJmamNIUnJ5OHBmZnM3TGtzbHA2bnFB?=
 =?utf-8?B?d1p2OGY3QllYNGpHK1NRRDFVU0hmZWJ3R1Rsc1RuZHYzd1IwU3FKL2lvSXNW?=
 =?utf-8?B?TGJvKzNsdTBRaGxrQ3NYVndBVWl3Skhuc2VxT2RVWU1Oc1FPWWRNZXJ3M0VL?=
 =?utf-8?Q?jcCurSTLZSbUCma5tXJX/gQxsKsfSMpuOP8eY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TC8rYUphTWdLS2NCQWJqeENsL2t3T0RiUzgzUzZKcWhxK21xYlQwMVRScXdi?=
 =?utf-8?B?U3JCb2dZeVJKcXcvcDQ1NDJMZFUzNjhtU0xFeHBFa1NvdU11Y1JLTVR5NFlY?=
 =?utf-8?B?LzFXcVYwcHFQRWVVdjhzODdUSDAycWlLekJpRWI0ZTFZYnI4ajU5MG1sZFNQ?=
 =?utf-8?B?c1Jmb0s2WmUrZkJOMEI4ZWpBc3dhTC9sbGZMenh3MDRhdzd2ODNkWEFYaWVy?=
 =?utf-8?B?MjFiaUlXSllWVzdYelV5OHF0c0wwL0MvdVJvTW9WWWhTeDY0ekJRN2NUT2Fm?=
 =?utf-8?B?WEszZTZkSHhnNTlCNmtxdzZmVmQya0x4NWk5czIxUGs2RlJnYmJYYXllSTZa?=
 =?utf-8?B?bTVyZVVnUlBmK01CYkVWN2hIRVJVMDJOOWsvS2dJc0VCMmhGbzlCa2ZaZWUr?=
 =?utf-8?B?OXpoM29MNlVnOWdvVlVnWHk1QXN5QkFkVmxzeG5JS1Z2ak5GS1lFYmRHajJy?=
 =?utf-8?B?dWliUE5URWJaaGhtNzI3alpwMkNEWFByOXk3VTJlSEFxbzEvK0Q3d285TUM4?=
 =?utf-8?B?MVJscXA3N0RiYnlIOCtLaWRUOUVtbTBWQy9nT294Y0R6TDJLMU5FdDRzNmhG?=
 =?utf-8?B?TWJrbFRaNG1ReXkxejZreFBJS2FGZHN1UzVVOGoxS01UdjRtOHpSek5Pby9q?=
 =?utf-8?B?YzM2YkNiTlRXTCticTNlRVVSNUphRkROL1ZJVlczUzJJQjdKTEZOOHB1aDJJ?=
 =?utf-8?B?WU1vVjV0ZUVUczdsK0R2WksrZDcxQ0Z3ejRPUjg3Nmxudzl3cTQvOTNQNTdO?=
 =?utf-8?B?elhBVmVkN3EybUVVTXh6UnBuZ1d1SnV1Yjg4SWorVllLdEZodlhQd1dYTWdS?=
 =?utf-8?B?M1hEczBacTdJdHB6aFJ3OEl4MTlpSVVKQmoyb0dTaVIxMytrWjJNRE5keVVN?=
 =?utf-8?B?TThkV0FhYmlZSFhKL3NTNVEyd3NyMzdIdzBjSTRzdVdGTVByaTR6Nzk3Zm5B?=
 =?utf-8?B?bVduVHA3Vi8xVDI0WmNhQUVmSzJ5cEc2bFNjVXlYTlhJWDc1MHUvRjNVazFH?=
 =?utf-8?B?ZGxCRU9mTXNoYm5GdXIrVEJ5aWR4NTkvWTc3bitvemhSeDVpdDB4aUtDdUNv?=
 =?utf-8?B?N0tZanhNTkpLM3J3RmFMbStZMzRTM1llbGZFU25RTEhicVhHOEZBaHdCN2VY?=
 =?utf-8?B?KzZjcVJTRk5JNTJLRUR4Q1BIUzk2dHdCek5OQ3hGdkdTZTlKMUJCVXJTWUVK?=
 =?utf-8?B?NTdnQ3lTWkF2OS9BdzRPaE5vMDIra1JXUVJaQ1dQQStoSEtCVUNnZ3NEcDdt?=
 =?utf-8?B?TzdONEJNcXU2QnIvMytaN2pwUUFUM0dLeDBnMnVTa1R3ZEIzZ3dlVFU4WEYv?=
 =?utf-8?B?a01YMXJpeWhHc0F5S2RQWG8yNkZPZVJjQkJtOVZFaWZkYWxGVnJhVVlUQi9p?=
 =?utf-8?B?WUUySXkxUUo4KytJOVdjcEg5YXo4TVhiUUsxWDZzZWVaRlFBNEFPd3NuY2dW?=
 =?utf-8?B?T0drVGtRQzF1aEp1Q1hBRmgxTlpRWmV5LzYzTDg5S05KMXYrcUJvdEM5Nktn?=
 =?utf-8?B?WEVTcEtzYllYalgyZDl5RnFVdDdGYTdpWXZtSXVnRTE1WkJZUUJjaTI1ZmdI?=
 =?utf-8?B?STQ5OWVzN0VJR29TMXhkaWNQajBGa2pFZnVqSGwxM3AxazhsbkZ4d0gyNGNz?=
 =?utf-8?B?TnltZlJndS95c1RVWXQ2VlNCdkw3aUlyRCtYZGgwVGNneC9XZUxTbTFvZ1Fw?=
 =?utf-8?B?dElHSHQyclNmay9JbHRtOVNKRFA2SUFIR0JJaDhPbUd4V0tNZ1lyeDRseXNS?=
 =?utf-8?B?amtIcm5kTXZjSytmRVlhYWJJNjZ5R2ExRXdRdXNrZW9ET0QyQm91aS9wNitM?=
 =?utf-8?B?a1p6OS9pemhPb1pRdWxEZjVVOThLZFNkOStNNkQvMW1mOGQ1UGVDb0tBU0Fq?=
 =?utf-8?B?TFdqNytXR3FQQVdqL2IxWExoM01UMGFJU1RkR01IMzFlSDRGRXllSGlOdUZr?=
 =?utf-8?B?QWlpbEErTWZHekl6RDB0N1FoQmNjNy9jcjl3a1hiSHR4Y0h6d3ViNC9YUlJl?=
 =?utf-8?B?eWN5a2NCV2YxZWRRTjI0RXZabFFxRUVJalFYem5JcjV3dTRXcXNEOUc2bGZW?=
 =?utf-8?B?R3FyVDNiZnQrTFZPT05PWWNuY3Q1RWtPN0s2QmJtMDk0MmR4TkNCMHJaRWhj?=
 =?utf-8?Q?MHeYCiQ/WlPUBxqPViWkp1Dk2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90940c8b-9413-46b2-bb60-08dc86d9eac0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 10:09:28.4198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JxHMAOt3DqsrbNXgIJHUFR83cdBf0rsmaqGy/nNqS4vI/MKNU3SybJdgKbawli+X35au4VIxAJSuId6wV3hNuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8666
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVuZSA3LCAyMDI0
IDM6MzQgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBLYWhvbGEsIE1pa2Eg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAxMC8yNl0g
ZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBSZXBsYXkgc3RhdHVzIGluc3RlYWQNCj4gb2YgZnJh
bWUgbG9jayBzdGF0dXMNCj4gDQo+IE9uIEZyaSwgMjAyNC0wNi0wNyBhdCAwOTo1OSArMDAwMCwg
TWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gU2VudDogVGh1cnNkYXksIEp1bmUgNiwgMjAyNCA5OjA4IFBNDQo+ID4g
PiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+
ID4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBDYzogS2Fob2xhLCBNaWthIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDEwLzI2
XSBkcm0vaTkxNS9wc3I6IFByaW50IFBhbmVsIFJlcGxheQ0KPiA+ID4gc3RhdHVzIGluc3RlYWQg
b2YgZnJhbWUgbG9jayBzdGF0dXMNCj4gPiA+DQo+ID4gPiBPbiBUaHUsIDIwMjQtMDYtMDYgYXQg
MTQ6MzUgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdyb3RlOg0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+
ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU2VudDogV2Vk
bmVzZGF5LCBKdW5lIDUsIDIwMjQgMzo1NiBQTQ0KPiA+ID4gPiA+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA+ID4gPiA+IDxtaWthLmthaG9sYUBp
bnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA+ID4gPiA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMC8yNl0gZHJtL2k5MTUvcHNy
OiBQcmludCBQYW5lbCBSZXBsYXkNCj4gPiA+ID4gPiBzdGF0dXMgaW5zdGVhZCBvZiBmcmFtZSBs
b2NrIHN0YXR1cw0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gQ3VycmVudGx5IFBhbmVsIFJlcGxheSBz
dGF0dXMgcHJpbnRvdXQgaXMgcHJpbnRpbmcgZnJhbWUgbG9jaw0KPiA+ID4gPiA+IHN0YXR1cy4g
SXQgc2hvdWxkIHByaW50IFBhbmVsIFJlcGxheSBzdGF0dXMgaW5zdGVhZC4gUGFuZWwNCj4gPiA+
ID4gPiBSZXBsYXkgc3RhdHVzIHJlZ2lzdGVyIGZpZWxkIGZvbGxvd3MgUFNSIHN0YXR1cyByZWdp
c3RlciBmaWVsZC4NCj4gPiA+ID4gPiBVc2UgZXhpc3RpbmcgUFNSIGNvZGUgZm9yIHRoYXQuDQo+
ID4gPiA+ID4NCj4gPiA+ID4gPiBGaXhlczogZWY3NWMyNWU4ZmVkICgiZHJtL2k5MTUvcGFuZWxy
ZXBsYXk6IERlYnVnZnMgc3VwcG9ydCBmb3INCj4gPiA+ID4gPiBwYW5lbA0KPiA+ID4gPiA+IHJl
cGxheSIpDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjIgKysrKystLS0tLS0tLS0tLQ0KPiA+
ID4gPiA+IC0tLS0NCj4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+
IGluZGV4IDdiZGFlMGQwZWE0NS4uMzUzMGU1ZjQ0MDk2IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gQEAg
LTM1NzksMTYgKzM1NzksOSBAQCBzdGF0aWMgaW50DQo+ID4gPiA+ID4gaTkxNV9wc3Jfc2lua19z
dGF0dXNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAicmVzZXJ2ZWQiLA0KPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInNpbmsgaW50ZXJuYWwgZXJyb3IiLA0KPiA+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoHN0YXRpYyBj
b25zdCBjaGFyICogY29uc3QgcGFuZWxfcmVwbGF5X3N0YXR1c1tdID0gew0KPiA+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgZnJhbWUgaXMgbG9ja2Vk
IHRvIHRoZSBTb3VyY2UNCj4gPiA+ID4gPiBkZXZpY2UiLA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaXMgY29hc3RpbmcsIHVzaW5nIHRoZSBW
VG90YWwNCj4gPiA+ID4gPiB0YXJnZXQiLA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaXMgZ292ZXJuaW5nIHRoZSBmcmFtZSByYXRlIChmcmFt
ZQ0KPiA+ID4gPiA+IHJhdGUgdW5sb2NrIGlzIGdyYW50ZWQpIiwNCj4gPiA+ID4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGluIHRoZSBwcm9jZXNzIG9mIHJl
LWxvY2tpbmcgd2l0aA0KPiA+ID4gPiA+IHRoZSBTb3VyY2UgZGV2aWNlIiwNCj4gPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpz
dHI7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7DQo+ID4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoHU4IHN0YXR1cywgZXJyb3Jfc3RhdHVzOw0KPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoHUzMiBpZHg7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCEo
Q0FOX1BTUihpbnRlbF9kcCkgfHwgQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpKQ0KPiA+ID4g
PiA+IHsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNlcV9wdXRz
KG0sICJQU1IvUGFuZWwtUmVwbGF5IFVuc3VwcG9ydGVkXG4iKTsNCj4gPiA+ID4gPiBAQA0KPiA+
ID4gPiA+IC0zNjAyLDE2ICszNTk1LDExIEBAIHN0YXRpYyBpbnQNCj4gPiA+ID4gPiBpOTE1X3Bz
cl9zaW5rX3N0YXR1c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkNCj4gPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAtwqDCoMKg
wqDCoMKgwqBzdHIgPSAidW5rbm93biI7DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGlu
dGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWR4ID0gKHN0YXR1cyAmIERQX1NJTktfRlJBTUVfTE9DS0VE
X01BU0spID4+DQo+ID4gPiA+ID4gRFBfU0lOS19GUkFNRV9MT0NLRURfU0hJRlQ7DQo+ID4gPiA+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpZHggPCBBUlJBWV9TSVpFKHBh
bmVsX3JlcGxheV9zdGF0dXMpKQ0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gcGFuZWxfcmVwbGF5X3N0YXR1c1tpZHhdOw0KPiA+
ID4gPiA+IC3CoMKgwqDCoMKgwqDCoH0gZWxzZSBpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkKSB7
DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlkeCA9IHN0YXR1cyAm
IERQX1BTUl9TSU5LX1NUQVRFX01BU0s7DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmIChpZHggPCBBUlJBWV9TSVpFKHNpbmtfc3RhdHVzKSkNCj4gPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ciA9IHNpbmtf
c3RhdHVzW2lkeF07DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gPiA+ICvCoMKg
wqDCoMKgwqDCoHN0YXR1cyAmPSBEUF9QU1JfU0lOS19TVEFURV9NQVNLOw0KPiA+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoGlmIChzdGF0dXMgPCBBUlJBWV9TSVpFKHNpbmtfc3RhdHVzKSkNCj4gPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lua19zdGF0dXNbc3Rh
dHVzXTsNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ciA9ICJ1bmtub3duIjsNCj4gPiA+ID4NCj4gPiA+ID4g
cHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cygpIGlzIHJldHVybmluZyBmcmFtZS1sb2Nr
ZWQtDQo+ID4gPiA+IHN0YXR1cyBmb3IgcGFuZWwgcmVwbGF5LCBJdHMgZGlmZmVyZW50IGRwY2QN
Cj4gPiA+ID4gRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xPQ0tfU1RBVFVTLCBub3Qgc2Ft
ZSBsaWtlIHBzci4NCj4gPiA+DQo+ID4gPiBQYW5lbCBSZXBsYXkgU1RBVFVTIH49IFBTUiBTVEFU
VVMgaWYgeW91IGxvb2sgYXQgZGVzY3JpcHRpb24gb2YgdGhlDQo+ID4gPiByZWdpc3RlcnMuIEZy
YW1lIGxvY2sgc3RhdHVzIGlzIGNvbXBsZXRlbHkgZGlmZmVyZW50IHRoaW5nLiBJIGRvbid0DQo+
ID4gPiB1bmRlcnN0YW5kIHdoeSBwc3Igc2luayBzdGF0dXMgZGVidWdmcyBpbnRlcmZhY2Ugc2hv
dWxkIHByaW50IGZyYW1lDQo+ID4gPiBsb2NrIHN0YXR1cyBmb3IgUGFuZWwgUmVwbGF5Pw0KPiA+
DQo+ID4gSWYgd2UgZG8gbm90IHdhbnQgdG8gcHJpbnQNCj4gRFBfU0lOS19ERVZJQ0VfUFJfQU5E
X0ZSQU1FX0xPQ0tfU1RBVFVTDQo+ID4gdGhlIHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0
dXMoKSBuZWVkIHRvIGJlIG1vZGlmaWVkLiBEbyB5b3UNCj4gPiBhZ3JlZT8NCj4gDQo+IFllcywg
YW5kIHRoaXMgd2hhdCBJJ20gZG9pbmcgaW4gdGhpcyBwYXRjaD8gT3IgY2FuIHlvdSBlbGFib3Jh
dGUgYSBiaXQgd2hhdCBkbw0KPiB5b3UgbWVhbj8NCg0KSSBkbyBub3Qgc2VlIGFueSBjaGFuZ2Ug
aW4gcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cygpIGluIHRoaXMgcGF0Y2guDQpKdXN0
IGFkZGluZyBiZWxvdyB0aGUgY29kZS1zbmlwcGV0IHdoZXJlIGJhc2VkIG9uIHBhbmVsX3JlcGxh
eV9lbmFibGVkIGZsYWcgb2Zmc2V0IGlzIGFzc2lnbmVkIHRvIERQX1NJTktfREVWSUNFX1BSX0FO
RF9GUkFNRV9MT0NLX1NUQVRVUy4NCg0Kc3RhdGljIGludCBwc3JfZ2V0X3N0YXR1c19hbmRfZXJy
b3Jfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdTggKnN0YXR1cywgdTggKmVycm9yX3N0YXR1cykNCnsN
CiAgICAgICAgc3RydWN0IGRybV9kcF9hdXggKmF1eCA9ICZpbnRlbF9kcC0+YXV4Ow0KICAgICAg
ICBpbnQgcmV0Ow0KICAgICAgICB1bnNpZ25lZCBpbnQgb2Zmc2V0Ow0KDQogICAgICAgIG9mZnNl
dCA9IGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgPw0KICAgICAgICAgICAgICAg
ICBEUF9TSU5LX0RFVklDRV9QUl9BTkRfRlJBTUVfTE9DS19TVEFUVVMgOiBEUF9QU1JfU1RBVFVT
Ow0KDQogICAgICAgIHJldCA9IGRybV9kcF9kcGNkX3JlYWRiKGF1eCwgb2Zmc2V0LCBzdGF0dXMp
Ow0KICAgICAgICBpZiAocmV0ICE9IDEpDQogICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCi4u
Lg0KLi4uDQouLi4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXINCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gQW5pbWVzaA0KPiA+ID4NCj4gPiA+
IEJSLA0KPiA+ID4NCj4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+
ID4gUmVnYXJkcywNCj4gPiA+ID4gQW5pbWVzaA0KPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoHNlcV9wcmludGYobSwgIlNpbmsgJXMgc3RhdHVzOiAweCV4IFsl
c11cbiIsDQo+ID4gPiA+ID4gcHNyX21vZGVfc3RyKGludGVsX2RwKSwgc3RhdHVzLCBzdHIpOw0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiAyLjM0LjENCj4gPiA+ID4NCj4gPg0K
DQo=

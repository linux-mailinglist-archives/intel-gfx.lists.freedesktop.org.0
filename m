Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C19A219B7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 10:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E1610E778;
	Wed, 29 Jan 2025 09:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GeZrT14j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6688B10E778;
 Wed, 29 Jan 2025 09:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738142088; x=1769678088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=drj3KCHjzbgxaQWt56TAsT+eYdRoMFdDuQ+WYqgz5qY=;
 b=GeZrT14jt59qoYe9Znk3YqJT1JYDDhToqxNvx5ktNf0cDSKFkhU9hK4I
 Kb5SKwKzx1xbVYV7YmHNcMCuJnc4yWmEWKD3pC/9lyAArLllkaphewkoo
 4T9MUlVh6fVi4proU+F777vfRkFD1Nk3Hsxedzq4gFcYwMV0nyZJprT4N
 UfR9/0fOpNpZ1EySSEX+LwkG9yCKYEMTCZgebYjHCMdB1hWEuj4iMG+9p
 GCX0bHsRmPDyTxwB2nC2/RLxqUgrzyldPFqe0Lg3Mjb35A4HXtQy11Ghk
 XDWAU2uobE9CHcn0AiAq/wE/3IGaJ87olI1bq8jBU822Zj9RhJNGpR/wv w==;
X-CSE-ConnectionGUID: av6MgUuQS2aXsVAN79IBAg==
X-CSE-MsgGUID: 3qkGYY3iTvOsbyb2v7gx7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49628783"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="49628783"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 01:14:48 -0800
X-CSE-ConnectionGUID: QWq8k+99TMqhyXXSBNH6Kw==
X-CSE-MsgGUID: mluEsD+XQ2K9dXbWzC26sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113960472"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 01:14:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 01:14:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 01:14:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 01:14:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vh0tmLbvnyz47C/oVRtRxOFpTbA3N5umGVMBxpXihoMlyCz6QWAAZLX1w29EObBn9cKi3h70HWUvzSxj/3yhFCZhuqgDhwb/oCky+pyBeC3+u1hBFIJhMsgDujfEif5qxfHmCXqLbO+wqgk/1y9Ad8TcXQfiw9xZtDpcPOgsAmU+tSGNxYetG78lCfsE5+oIaRxS0l7P9Tal7MxbAZ8KGf3X4GmPRtSvGa0KhH5CvLQ+nO+xPMTUzRn/JNgBBhKKbWn8/INSKEThJ2fsXe8wA4wUGxWbpe41AYZNbc4cE4G5L9ZkHfbzJPeDwRqt60jMgWwT/8QJA2NH8CFfrAzBCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=drj3KCHjzbgxaQWt56TAsT+eYdRoMFdDuQ+WYqgz5qY=;
 b=Um0w/LHLH+ig0b92eoL9+K8wRPDZsQhEJHlpeS7gr493upjaozFnlRwBHjnHCOa4EvLdMJ1qK0Ap/P4UPH6V/wRCVogiRmY5ch5RXEFdUyxXt/ZqlcZRn3dKORQ4gxDSfS7IRsu9G+ol+mYhgELSQ7/h+yd0zeSCl/0BbRQlUOAJPpExb/hTxUOTxJyA9XykUvt+Oy/Y4qd8HDkO3kPSVhoCq/kdKA6TqpKOcS5umV4+dqj3w3ozI4ldfFi7Up02wlqlhhxPKf/aRuA2FYZY3XzAhtJnvqfuwrEXilEGUmQZdhNUItwbPvXqZkZ2YPdIM2qPGT5VFkvp13QH5kfPtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7729.namprd11.prod.outlook.com (2603:10b6:930:70::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.23; Wed, 29 Jan
 2025 09:14:43 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8398.017; Wed, 29 Jan 2025
 09:14:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v5 4/7] drm/i915/display: update and store the plane
 damage clips
Thread-Topic: [PATCH v5 4/7] drm/i915/display: update and store the plane
 damage clips
Thread-Index: AQHbcZ0DCJE5J8777Ui/DdxNRfe3/7MsXBiAgAEdIQA=
Date: Wed, 29 Jan 2025 09:14:43 +0000
Message-ID: <9c32af64eb275c58250da2674289fbff6301c135.camel@intel.com>
References: <20250128155418.305595-1-vinod.govindapillai@intel.com>
 <20250128155418.305595-5-vinod.govindapillai@intel.com>
 <Z5kCUciT96HT6IBI@intel.com>
In-Reply-To: <Z5kCUciT96HT6IBI@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7729:EE_
x-ms-office365-filtering-correlation-id: d61b5efa-194f-4ba8-2f65-08dd40455e4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dFc1c3QrT0NHWWRrUGJCZGxBak5kdGJTY21zT0RjeUVVVnZSNG95ekFBTUlY?=
 =?utf-8?B?ekVPYjg2MVZZYUZSY2ZnWGVMQURQU0psVkQ0WmU1a29CNE00Z0hvbXBLUk1W?=
 =?utf-8?B?N25hTWNTeDV0dmgyWnp3MVRyQWhCQ2tyMFFYbi9SZ0d1TStZWHQyMEdlRHJx?=
 =?utf-8?B?WFRITlhsMFUzaUNFcE5kTEVGWjB1TjBMVjRYVGtmWlJQY2NFQ2dhdHNvTlho?=
 =?utf-8?B?cVNwd3NCc3JZMWpEbS9uRnJTNGFvTjdWaDhBbmRSbEFMd244RkttT1dRWm0y?=
 =?utf-8?B?akh3c3lqK0JmZm12REk4eVhZbStwSFE3bDg3SjBPS1E4T2RGU0FRSjBIQ2RO?=
 =?utf-8?B?M1djNXlQOUJQWFdqUVhjcUtuRE51UitmN2xMVGxUM2trRkN6RklQSEVUN3p0?=
 =?utf-8?B?NFhVRWlVWkhnalZaT2NvWjJNTTFHZnRzVHlhSXQ3NEhXaXN3a1ZidW8wWUF4?=
 =?utf-8?B?QUdzZm45SXZNUVprbGRTS3NoVlg4Y0QwZ29HWFZCUEdOYWp5YWVPV0VTd2pi?=
 =?utf-8?B?VmtyL1BndmNwbUt3ZURBcEc5ejd2d05ONWpwSGRFQitMUzZ5OFIxTkR5cWlJ?=
 =?utf-8?B?WE5jeGVualh2c2VQNmw5K2VCS3NDdUVUUFRDWkVQQVcvajBManlxa2JFUU9J?=
 =?utf-8?B?MVBrM3RUWGxQaWRkM3hLdUNYKzhFQXFBcC9MUkkwaDJaNUJyM1JGNUlLYm45?=
 =?utf-8?B?UTlzTEFUdHd2dEZkUEdGN045emZHVkU0MG1TbHUrWW01eG1wQVcvYVpkdFV1?=
 =?utf-8?B?VkpjYjBHaE8weHB5NHFPZHJZRCtIL2VyTFdpZHFCNFFsbjE5SHg0S1ZQaTFp?=
 =?utf-8?B?T2NmYlJoelZpRkU4QWFwVVNDMXQ5V0RTODdYUmtxaVI4TUg1VGxaT25FSW1k?=
 =?utf-8?B?Zk9qeHliaFpEQVorWlBpWVUwU0htQmxjWTgvd1ZJc1ZHb2FsOFpyMXBlbTJO?=
 =?utf-8?B?NlcwRFBrMTlmQ3Q5Q1dtR08wcFE4YWI1ZE56K3UzLzV1bG5FeWMzV1RMd1BO?=
 =?utf-8?B?cnRqbVVkZUpERi9CbzB6dWc2MlcxcTUwR1V2VXZlWXQvRUlhVm90M2JUVXgr?=
 =?utf-8?B?WkU2YW9QVDRYYUhPU1U1ekxWVVNHSndub05VM2NZcXRISUJzaXphek9weHZa?=
 =?utf-8?B?WmFlZVJoWnBLR1g3ZzhEamsxamU0c3RDcGg1YjU2bWkwSDBGcG9ZSHRHVWFD?=
 =?utf-8?B?KzZzaWsrUklDeDBxL1VPVTczU0VuWnh5T1hmdjZmRmNkdEk2MjhpYmwvM2gz?=
 =?utf-8?B?MFdqZWcvTnl5QlRwb0kwTVREZ3pLRnRTbTU5TmJ6NkxiRlEzam5FR2tEK1Vi?=
 =?utf-8?B?M0ZkUXlWazJtVml5NE8zbHJ0Nk9DWEhadGxJWUlwNVVvbjVDeGtVQzd6bGVT?=
 =?utf-8?B?Mk95SFlJQ1N5WjE5RUhwQjJtZWVNeWVTNmlLNk0rQVJ5YzZzSThoTkRFaU5z?=
 =?utf-8?B?VWc2Zmo2VFgwOWJ0aGtEV05OTWEvZ0JrV0pNN1BBczJDUnNRWUkvalhCWDZQ?=
 =?utf-8?B?NVZkY2dYVEZFbGJMcmYxcEoyK0JMQ3NKamFGTGZ2ZTNnNk9Jckd1WGpVNzB0?=
 =?utf-8?B?SXVXWWNCQXZSQUpuVmh1YmZkZFZBM1M3ZWNncGZiNUpQaDNndjZqV1lrcGNH?=
 =?utf-8?B?M1RyZnJEeE8wUmRjTG5VSktzQzYyUm5YOGQyald1NE9IQm9tbElZWVhPb2FN?=
 =?utf-8?B?WmFRQysxT2Y5TjliZDg4UjNuTlpTazlMektmZ3dpdkJqUlFCYnBzOWtqNldv?=
 =?utf-8?B?QzFRd0xORERTOEU5b0Q5NUJLdWhialppd2VCQWt0cWc4MnhNcU1WYVo3OFQv?=
 =?utf-8?B?dmE2UVRSMGliWTAxWnFmYkRwL1R6TGN4YU1PMjcxczNERTV5ZS9qZjZDZGsy?=
 =?utf-8?B?K0orNEs3aDBvRXRjVHhldkVLcjFWMHA4c2tiTkJjN05jQ29BM2ZkWmxVTTND?=
 =?utf-8?Q?u+dC9TduTN99QZMoqfU5s04hLipf/Yby?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDlacWw0WXlrblhibllmek5hQncxNDc3cDJPWU4rOU9YZ0dDRlNpMVV3YUNt?=
 =?utf-8?B?VGhkeHZ4d1RBSDN4U0RzS1ZyS1RLOFZXalRLcTVZYlZjcFhYY29LU3ZyYnpy?=
 =?utf-8?B?NHNHaDllOXJQK2hRNkw0bjFFMkJGTm9nTFdzMmpjSzBGV2pOM1dVeThpTldx?=
 =?utf-8?B?THlVaXl4ZXltb0l4QXNQTXlqTzFRN1drQ0poSFBmM0ltUU1MeFlBcU9DeHpY?=
 =?utf-8?B?aXFmTndqN0JTZzJtWlVDdXc5d2ltVWplbUx5QVg0QVdSZVpUdTZHbWdkZUhK?=
 =?utf-8?B?ZHl5aWhXSFBUVkVUUHVqQlg2TkI5cVNNQmd1aUNSMHRVNjRVNUtLNDdhWmh2?=
 =?utf-8?B?ZVZYWitldk13Vy9hT1BVQXNDRlEwQzV5WU5WMHovb0xwWW94emxzUlJpVkdB?=
 =?utf-8?B?R1ZORDZXWEdMVVFZWjhtUWEvQ2RWWkFOT1hIZVl4a3ZrN0pVYWhIQ0JtSklZ?=
 =?utf-8?B?cDhGajh6dXk3RXFJWUV6QjhweTZ4U2RhWWxWMFRYWUM3Y0NjU2FzWUR0TzAx?=
 =?utf-8?B?eVp4TDAvUUUvVUVnRzd6ZkQ5S2JQTmlmdHRUVzJPQVVuNVAyQjJBclE5cDJs?=
 =?utf-8?B?QzhjWHRjM1BkbjZLZzV2OTA3UlkzMFkrVnJqdW96ajJPV1FVektXaEdmYlFD?=
 =?utf-8?B?Q0hwbHNBak9uZFg1K3ZHN1V2d2NQS2NGaG14T092Ym1IVktzTzVzRzJReDY0?=
 =?utf-8?B?eGJ0aWZzSzk2MG14Y3lyQnJpK0ZlcEtrV3Q0U3VjQjAvZDIreFR1RWtEMHI3?=
 =?utf-8?B?bkkvSktPR1hKejhhYmlkRVZNak5TSENyQUlGb1FCN0E3VnQ1ZzlkOUVFL1dY?=
 =?utf-8?B?UzA0NlV5ZWRuMlBjd2psK1RTY0hpc2V1NWlQdGt0SlhWUjlUQ0FnaENWQmVR?=
 =?utf-8?B?SHd5SllPQ1JTUVdkQnZBdjEvOFNGY3NRbVZ4M2xWbi9yZjUvT3JDWWpwdzlT?=
 =?utf-8?B?TU5IOWpIUyt0ZlEreDRqRW1oMUFRQ21PR2JVVEh4ejlMaFBGRllBUzNuQ3lO?=
 =?utf-8?B?clJFRld2YUpHMGdHaWJGajBadldWeWllajVnOFVIL2tSSnNPZlJDR1ZDWExQ?=
 =?utf-8?B?dDl2NW1DdVd2TFZ0c0s1SUh1YzhBODlCMTFkUjZ3L29Da2IxVm0xaFA3S2FV?=
 =?utf-8?B?TjI4bUlKNkhxQWtkUk1TbmE5OVFxNkZLSGtOTmpYNkFrWkhkMWZ1RTVDUk91?=
 =?utf-8?B?ZTlhV2xLV2xDT1pXZE9DM3NEcmhzOTltVGJNQldIWG44OTJxZjAvOGhjcktE?=
 =?utf-8?B?Sk4rTEgyK1BpSlY3V21KUDBsWWdURis5QTlBWGdyblJhS1Zib3pwUUlPaHd2?=
 =?utf-8?B?VTRGMlVvbzA5TVBERFpLbVlMcHBmME1ISzNrWXFyRFlvRk9JQUIybTAwaGY4?=
 =?utf-8?B?OVpkdE0rS1RYSHpTdzBoMWdBbXNFQ05CemdDZ3VNNWJ1OC9QekhvT3NMN2U2?=
 =?utf-8?B?anc5UXFjOWFjZTFmZDVCL3RLaFlIVmtCdjM2elkraXN5RjhDdmh1VlR6WFZK?=
 =?utf-8?B?K0swd29OMnJ5Um9oalRYeEFSQmV0cXhPY3c3cGhBL3UxNGE5dG52blJrRkU1?=
 =?utf-8?B?T2lIWGpxaHVoUEZLZC9MMFA5b04zNDBsL1lOcHVFSDVwdVhQTE1Pb0pCTkx2?=
 =?utf-8?B?aGc5UENkOEpaa0JhRlQ0azBaZGphVmk3bzlabWYyK0tJSERtV3BQN0p5VFMy?=
 =?utf-8?B?dStneVY2S0I2K0ZiNDBrbjdtMEdWYTdRTGlySGNPa1luQlpHbVVGdU9SL2VR?=
 =?utf-8?B?N0NZT1hRTFFWdDRPOWthVkFtdEdGNzIrMVlIeklQd2U0S3RaK0t1QWo0eFd4?=
 =?utf-8?B?aUZ5aURMWEVqT2ZCMXc1MlpIRUU1UVV4SEozWE9nS1lJaHAzM3dlb250NnVt?=
 =?utf-8?B?UXF0WkRCbVlYNDJDZVg4YmNWN05QTWlzNmpOUUJGRXdRYmZweVFjZ0RWdkZO?=
 =?utf-8?B?VnlKbWNQLytIWXI4d2RRa2xRQVdVVEhIUkhCdjlPek50MDkyc3VCMjFqVlpj?=
 =?utf-8?B?MTBzM25RdzJLMnZ2NDc0Q2VPc0FKdXNoMkR1VlV3bklZMDk5ZWpJeGphcDBZ?=
 =?utf-8?B?RHVIcmhycjAxelBNb2I5UUE2OVRJOGgva25OenZvREFCa25OTnBkMTdnT1Y3?=
 =?utf-8?B?QXU3MzdLQzJSU0NtTXlSNWc0UWx1aXVnQUFYNnNsQmlkaWdVcEtYMG9KbDdK?=
 =?utf-8?Q?hP3Dyjeqh9ATCHm0/s2Xo2M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C1A41F54DDCB4448068098B8EAE30C2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d61b5efa-194f-4ba8-2f65-08dd40455e4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2025 09:14:43.4768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tj4DCDW5k80bE+2a+xGqPrJ/8gNjOAK+psOtumMXi7UefqXwXbkm28DGWFBAXvqW1r2m//fBtz2r9EkkaFVqmPZx+sLxAlxtUN4AFjDT0p4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7729
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

T24gVHVlLCAyMDI1LTAxLTI4IGF0IDE4OjE0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDI4LCAyMDI1IGF0IDA1OjU0OjE1UE0gKzAyMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gVXNlcnNwYWNlIGNhbiBwYXNzIGRhbWFnZSBhcmVhIGNsaXBz
IHBlciBwbGFuZSB0byB0cmFjaw0KPiA+IGNoYW5nZXMgaW4gYSBwbGFuZSBhbmQgc29tZSBkaXNw
bGF5IGNvbXBvbmVudHMgY2FuIHV0aWx6ZQ0KPiA+IHRoZXNlIGRhbWFnZSBjbGlwcyBmb3IgZWZm
aWNpZW50bHkgaGFuZGxpbmcgdXNlIGNhc2VzIGxpa2UNCj4gPiBGQkMsIFBTUiBldGMuIEEgbWVy
Z2VkIGRhbWFnZSBhcmVhIGlzIGdlbmVyYXRlZCBhbmQgaXRzDQo+ID4gY29vcmRpbmF0ZXMgYXJl
IHVwZGF0ZWQgcmVsYXRpdmUgdG8gdmlld3BvcnQgYW5kIEhXIGFuZA0KPiA+IHN0b3JlZCBpbiB0
aGUgcGxhbmVfc3RhdGUuIFRoaXMgbWVyZ2VkIGRhbWFnZSBhcmVhcyB3aWxsIGJlDQo+ID4gdXNl
ZCBmb3IgRkJDIGRpcnR5IHJlY3Qgc3VwcG9ydCBpbiB4ZTMgaW4gdGhlIGZvbGxvdy11cA0KPiA+
IHBhdGNoLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZp
bm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHzCoCA1ICsrDQo+ID4gwqAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDIgKw0KPiA+IMKg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDCoMKgIHwgNDcgKysr
KysrKysrKysrKysrKysrKw0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMNCj4gPiBpbmRleCA4ZGE3ZWUxMzQ0N2MuLjNkNDYzY2ZlMWYzYyAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYw0KPiA+IEBAIC0zNiw2ICszNiw3IEBADQo+ID4gwqANCj4gPiDCoCNpbmNs
dWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2Js
ZW5kLmg+DQo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2RhbWFnZV9oZWxwZXIuaD4NCj4gPiDCoCNp
bmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5oPg0KPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+
DQo+ID4gwqAjaW5jbHVkZSA8ZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5oPg0KPiA+IEBAIC03
MTMsNiArNzE0LDEwIEBAIGludCBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2soc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCQkJCcKgIG5ld19wcmltYXJ5X2NydGNfcGxh
bmVfc3RhdGUsDQo+ID4gwqAJCQkJCcKgIGNydGMpOw0KPiA+IMKgDQo+ID4gKwkvKiBWZXJpZnkg
cGxhbmUgZGFtYWdlIC0gZGFtYWdlIGRpc2NhcmRlZCBvbiBmdWxsIG1vZGVzZXQgKi8NCj4gPiAr
CWRybV9hdG9taWNfaGVscGVyX2NoZWNrX3BsYW5lX2RhbWFnZSgmc3RhdGUtPmJhc2UsDQo+ID4g
KwkJCQkJwqDCoMKgwqAgJm5ld19wbGFuZV9zdGF0ZS0+dWFwaSk7DQo+IA0KPiBUaGF0IGd1eSBk
b2Vzbid0IHNlZW0gdG8gZG8gYW55dGhpbmcgdGhhdCB3ZSB3YW50Lg0KDQpIaSBWaWxsZSwNCg0K
VGhhbmtzIHlvdXIgdGltZSBpbiByZXZpZXdpbmcgdGhpcyEhDQoNCk9rYXkuIEkgdGhvdWdodCB0
aGlzIHdpbGwgY2F1c2UgdGhlIGRhbWFnZV9oZWxwIHJldHVybiB0aGUgd2hvbGUgcmVnaW9uIGlu
IGNhc2Ugb2YgYSBmdWxsIG1vZGVzZXQuDQoNCj4gDQo+ID4gKw0KPiA+IMKgCW5ld19wbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlID0gZmFsc2U7DQo+ID4gwqAJaWYgKCFuZXdfY3J0Y19zdGF0ZSkN
Cj4gPiDCoAkJcmV0dXJuIDA7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IGJjNjVjNGJkOWRjMC4u
NDk1YzQ5NzY0NWMwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBAQCAtNjk1LDYgKzY5NSw4IEBAIHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7DQo+ID4gwqAJdTY0IGNjdmFsOw0KPiA+IMKgDQo+ID4g
wqAJY29uc3QgY2hhciAqbm9fZmJjX3JlYXNvbjsNCj4gPiArDQo+ID4gKwlzdHJ1Y3QgZHJtX3Jl
Y3QgZGFtYWdlX21lcmdlZDsNCj4gPiDCoH07DQo+ID4gwqANCj4gPiDCoHN0cnVjdCBpbnRlbF9p
bml0aWFsX3BsYW5lX2NvbmZpZyB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+IGluZGV4IDhkMDlhMWY4YzNl
MS4uZmM1YjlkNTZjOGJjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiBAQCAtMjI0OSw2ICsyMjQ5LDQ3
IEBAIHN0YXRpYyB2b2lkIGNoZWNrX3Byb3RlY3Rpb24oc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkNCj4gPiDCoAkJIXBsYW5lX3N0YXRlLT5kZWNyeXB0Ow0KPiA+IMKgfQ0K
PiA+IMKgDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK3NrbF9wbGFuZV9jaGVja19wbGFuZV9kYW1h
Z2UoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsDQo+ID4g
KwkJCcKgwqDCoMKgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlKQ0K
PiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3QgKmRhbWFnZV9tZXJnZWQgPSAmbmV3X3BsYW5l
X3N0YXRlLT5kYW1hZ2VfbWVyZ2VkOw0KPiA+ICsNCj4gPiArCWRybV9hdG9taWNfaGVscGVyX2Rh
bWFnZV9tZXJnZWQoJm9sZF9wbGFuZV9zdGF0ZS0+dWFwaSwNCj4gPiArCQkJCQkmbmV3X3BsYW5l
X3N0YXRlLT51YXBpLA0KPiA+ICsJCQkJCWRhbWFnZV9tZXJnZWQpOw0KPiANCj4gWW91J3JlIGNh
bGxpbmcgdGhhdCB0b28gbGF0ZS4gV2l0aCBiaWdqb2luZXIgaXQncyBub3cgZ29pbmcgdG8NCj4g
dXNlIHRoZSB1YXBpIHN0YXRlIGZyb20gdGhlIHdyb25nIHBsYW5lLiBUaGlzIHRoaW5nIG5lZWRz
IHRvIGJlDQo+IGRvbmUgaW4gaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKCkuDQoN
Ck9rLiBTbyBJIGhhdmUgdG8gZ2V0IGFuZCBzdG9yZSB0aGUgZGFtYWdlX21lcmdlZCBiZWZvcmUg
dGhlIGNvcHkuDQpZb3UgbWVudGlvbmVkIHRoYXQgdG8gYmUgZG9uZSBpbnNpZGUgaW50ZWxfcGxh
bmVfY29weV91YXBpX3RvX2h3X3N0YXRlKCkhIEFueSBzcGVjaWZpYyByZWFzb24/IFRoZQ0KcmVh
c29uIEkgYW0gYXNraW5nIHRoaXMgaXMgYmVjYXVzZSwgdGhlIGRybV9hdG9taWNfaGVscGVyX2Rh
bWFnZV9tZXJnZWQoKSBleHBlY3RzIG9sZF9wbGFuZV9zdGF0ZSBhcw0KYSBtZWFuIHRvIGNoZWNr
IHRoZSByZWN0IGNoYW5nZXMgYW5kIHJldHVybnMgZnVsbCByZWdpb24gYXMgZGFtYWdlZCBpbiBj
YXNlIG9mIHNyYyByZWN0IGlzIG5vdCBlcXVhbA0KYmV0d2VlbiBvbGQgYW5kIG5ldyBwbGFuZSBz
dGF0ZXMuIFNvIHdvbmRlcmluZyBpZiBJIG5lZWQgdG8gcGFzcyB0aGUgb2xkX3BsYW5lX3N0YXRl
IHRvDQppbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUoKT8NCg0KQW5kIHRoZW4ganVz
dCB3YW50ZWQgdG8gZG91YmxlIGNoZWNrIHRoYXQgdGhlIHJlc3Qgb2YgdGhlIGNvb3JkaW5hdGUg
Y29udmVyc2lvbnMgeW91IHN1Z2dlc3RlZA0KZWFybGllciBzdGF5cyBhcyBpdCBpcyBpbiBjYXNl
IG9mIGJpZ2pvaW5lcj8NCg0KSWYgdGhlIHBsYW5lX3N0YXRlIGlzIG5vdCB2aXNpYmxlLCBkcm1f
YXRvbWljX2hlbHBlcl9kYW1hZ2VfbWVyZ2VkKCkgcmV0dXJuIGZhbHNlLiBZb3UgbWVudGlvbmVk
DQpiZWZvcmUgdGhhdCB3ZSBtaWdodCBuZWVkIGEgc3RhdGUgdmFyaWFibGUgdG8gdHJhY2sgdGhl
IHZhbGlkaXR5IG9mIHRoZSBkYW1hZ2VfbWVyZ2VkIGFuZCB1cGRhdGUgdGhlDQpGQkMgZGlydHlf
cmVjdCAgcmVnaXN0ZXJzIG9ubHkgaWYgaXQgaXMgdmFsaWQuIFNvIGZhcmUgaW4gbXkgdHJpYWxz
IGFsbCB0aGUgY2FzZSB3aGVyZSB3ZSBlbmQgdXAgaW4NCmF0b21pY19jb21taXRfdGFpbC0+ZmJj
X2RpcnR5X3JlY3QgdXBhZHRlLT5wYWdlX2ZsaXAsIHVzdWFsbHkgZW5kcyB1cCBoYXZpbmcgdmFs
aWQgZGFtYWdlX21lcmdlZA0KY29vcmRpbmF0ZXMuIERvIHlvdSBzZWUgYW55IG90aGVyIGNhc2Vz
IGFuZCBzdWdnZXN0IHRvIGhhdmUgc3VjaCBzdGF0ZSB2YXJpYWJsZSByZXF1aXJlZD8NCg0KVGhh
bmtzDQpWaW5vZA0KDQo+IA0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtz
a2xfcGxhbmVfY2hlY2tfZGFtYWdlX3dpdGhfdmlld3BvcnQoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9yZWN0ICpkYW1hZ2Vf
bWVyZ2VkID0gJnBsYW5lX3N0YXRlLT5kYW1hZ2VfbWVyZ2VkOw0KPiA+ICsJY29uc3Qgc3RydWN0
IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7DQo+ID4gKwl1bnNpZ25l
ZCBpbnQgcm90YXRpb24gPSBwbGFuZV9zdGF0ZS0+aHcucm90YXRpb247DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX3JlY3QgKnNyYyA9ICZwbGFuZV9zdGF0ZS0+dWFwaS5zcmM7DQo+ID4gKw0KPiA+ICsJaWYg
KGRybV9yb3RhdGlvbl85MF9vcl8yNzAocm90YXRpb24pKSB7DQo+ID4gKwkJZHJtX3JlY3Rfcm90
YXRlKGRhbWFnZV9tZXJnZWQsIGZiLT53aWR0aCwgZmItPmhlaWdodCwNCj4gPiArCQkJCURSTV9N
T0RFX1JPVEFURV8yNzApOw0KPiA+ICsJCWRybV9yZWN0X3RyYW5zbGF0ZShkYW1hZ2VfbWVyZ2Vk
LCAtKHNyYy0+eTEgPj4gMTYpLA0KPiA+ICsJCQkJwqDCoCAtKHNyYy0+eDEgPj4gMTYpKTsNCj4g
PiArCX0gZWxzZSB7DQo+ID4gKwkJZHJtX3JlY3RfdHJhbnNsYXRlKGRhbWFnZV9tZXJnZWQsIC0o
c3JjLT54MSA+PiAxNiksDQo+ID4gKwkJCQnCoMKgIC0oc3JjLT55MSA+PiAxNikpOw0KPiA+ICsJ
fQ0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtza2xfcGxhbmVfY2hlY2tf
ZGFtYWdlX3dpdGhfcGxhbmVfc3VyZihzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3QgKmRhbWFnZV9tZXJnZWQgPSAmcGxh
bmVfc3RhdGUtPmRhbWFnZV9tZXJnZWQ7DQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3Qgc3JjOw0KPiA+
ICsNCj4gPiArCWRybV9yZWN0X2ZwX3RvX2ludCgmc3JjLCAmcGxhbmVfc3RhdGUtPnVhcGkuc3Jj
KTsNCj4gPiArCWRybV9yZWN0X3RyYW5zbGF0ZShkYW1hZ2VfbWVyZ2VkLCBzcmMueDEsIHNyYy55
MSk7DQo+ID4gKwlkcm1fcmVjdF9pbnRlcnNlY3QoZGFtYWdlX21lcmdlZCwgJnNyYyk7DQo+ID4g
K30NCj4gPiArDQo+ID4gwqBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoAkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUsDQo+ID4gwqAJCQnCoMKgIHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ID4gQEAgLTIyNzUsNiArMjMxNiwxMCBAQCBz
dGF0aWMgaW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gPiDCoAlpZiAocmV0KQ0KPiA+IMKgCQlyZXR1cm4gcmV0Ow0KPiA+IMKgDQo+ID4g
Kwlza2xfcGxhbmVfY2hlY2tfcGxhbmVfZGFtYWdlKG9sZF9wbGFuZV9zdGF0ZSwgcGxhbmVfc3Rh
dGUpOw0KPiA+ICsNCj4gPiArCXNrbF9wbGFuZV9jaGVja19kYW1hZ2Vfd2l0aF92aWV3cG9ydChw
bGFuZV9zdGF0ZSk7DQo+ID4gKw0KPiA+IMKgCXJldCA9IHNrbF9jaGVja19wbGFuZV9zdXJmYWNl
KHBsYW5lX3N0YXRlKTsNCj4gPiDCoAlpZiAocmV0KQ0KPiA+IMKgCQlyZXR1cm4gcmV0Ow0KPiA+
IEBAIC0yMjkwLDYgKzIzMzUsOCBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoAlpZiAocmV0KQ0KPiA+IMKgCQly
ZXR1cm4gcmV0Ow0KPiA+IMKgDQo+ID4gKwlza2xfcGxhbmVfY2hlY2tfZGFtYWdlX3dpdGhfcGxh
bmVfc3VyZihwbGFuZV9zdGF0ZSk7DQo+ID4gKw0KPiA+IMKgCXJldCA9IHNrbF9wbGFuZV9jaGVj
a19udjEyX3JvdGF0aW9uKHBsYW5lX3N0YXRlKTsNCj4gPiDCoAlpZiAocmV0KQ0KPiA+IMKgCQly
ZXR1cm4gcmV0Ow0KPiA+IC0tIA0KPiA+IDIuNDMuMA0KPiANCg0K

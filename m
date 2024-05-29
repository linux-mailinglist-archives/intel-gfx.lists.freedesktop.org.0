Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F848D2CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 07:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25949113177;
	Wed, 29 May 2024 05:41:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZroV8UW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BE6113177
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 05:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716961281; x=1748497281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IC7+Rzjdujob7BYnSYhCQowiN17Le0l71pQuIQTmtQ4=;
 b=jZroV8UWjA5GvAHdyQmvrkKJFb4SV4eHhr9Izvh43QkwAitvlarHVwAn
 UijmNivdlxf2HoUKxAq736w9Nbq9UQMiZLcG/B7R9B923wL2NtDUZ3993
 n9NduaNNWBNGkUL/uy9vlrcQ6U0WXQpPBh//qqH/zVUJrS7j8bLXeSeU/
 9TC9WABcFznP4Y57+VHnzQurqXnF6/EZHaZCpI1F8PXBzHMIqENAhx7kL
 XE2DzFnas2BDNd+F5ZTbByHU0VYsrvz2xD9/SLWWRJkWbyf/dGLDugfil
 L8eEgWVpQGIflrTji9lSpFbVR0uHRlz0+zg3ACbodygbQobFylP2IoScS A==;
X-CSE-ConnectionGUID: EoTrbbz+S2G0rPBFkmV3nQ==
X-CSE-MsgGUID: 229Jj7anSViOImSuy2nzFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17181065"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="17181065"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 22:41:19 -0700
X-CSE-ConnectionGUID: CwumahWaTTSs8VeeOBryfg==
X-CSE-MsgGUID: /eUUjztGTby9zc4OEegA5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="40138725"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 22:41:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 22:41:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 22:41:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 22:41:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2tEUWmoz75mfnH+gsTrKtMxxW6uxArA11jo+dR287ffIf7P5raUWYAXVfX9QWB7ywB9FoUysNRgD9hve6AcnVM67IQAOTn4cD1/e871aaeBnYlQcg23KIdBKNtQS4NSZ8zkUecBn7WgodATZOKqSjdRAbapSF6bil5uZxFVRupkk7miveXidK3YQZ9LoRo5INb5mI/7blZqSGPFBiABE1dy5T1n4bUfbRWUVBlpdaoKs8qroP7q03illJv7YJ9LiAqHn2LG8NoV1oUXthQfeE1PvuKh6WlGBIg8eD82JP7u2t0Y8JjeOPaMfWqMJHXYZzyfHfjrCGWxYGE0Oq1KbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IC7+Rzjdujob7BYnSYhCQowiN17Le0l71pQuIQTmtQ4=;
 b=IgeA/cLV2a0LyVHFxe7Laz2ZtkR12Wmzw8VoRsk8yztyL5ale5H/gazkzhL3G+revXUNdPfTkCeFcKAecjOc8tuXaMf6Na03eWVD9gOuuG5UCgE1Th+snu603nu3vIcAw8lx0jckmIfrnpwYrvcfLmxE9uGuKdFMEZgSPkkKkvxmQgA3Z0x7oZYIKE3P1c4WMItSrQrQ48DDhfwpDmNuNlGea/07tJ1bQaKqMtdzX5JYyvZDdhXKMvw9JxrMmEdu8cNcfP53ZafTOuPhFBSPMzCs3XeQrgzs28ps9BGXPwEYkaTN/AMsDpoq8BpO5D/4x1bm/mK5SOuaCIMlm2y6rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB8267.namprd11.prod.outlook.com (2603:10b6:303:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 05:41:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.018; Wed, 29 May 2024
 05:41:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: Re: [PATCH 0/5] Panel Replay eDP debugfs support
Thread-Topic: [PATCH 0/5] Panel Replay eDP debugfs support
Thread-Index: AQHasPTMntbJpa2phk+BAZ3IOlj7ObGts7IA
Date: Wed, 29 May 2024 05:41:09 +0000
Message-ID: <ae49a421d57dcb8154d8f753f9f24282222e03f0.camel@intel.com>
References: <20240528114455.175961-1-jouni.hogander@intel.com>
In-Reply-To: <20240528114455.175961-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB8267:EE_
x-ms-office365-filtering-correlation-id: 5fc113a9-b6d9-4a1e-6343-08dc7fa1f193
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?UWdDUUFFL0k3NmhZQ3Naa2c3ZTVHZW9SMCs5TllKck42NVI1MitJeHhSTmM0?=
 =?utf-8?B?eVpQV1YxcFl4ZXJJbVVLZW9WWllKQ0RwVTFrTmJieURVamNCaUN5YmhMUC9U?=
 =?utf-8?B?Rms2VHZOZmNQaXlRcTJueDJCNVVJMkZFcWJhZ09WSDZBN3U2b0lYL3VlUW45?=
 =?utf-8?B?em50SGxCQTB5OFZZTFRlcnkzWjhTd2Q3ZEtPeFhIS0J1UlQyUjRiUklFMVds?=
 =?utf-8?B?OVV4dldYaHdJZ3l5M2l3NmxEdTRkdkZKd0xGdGE4cmZGdnd6ejBJS2tTcytC?=
 =?utf-8?B?ZFc5YTdvekdkdUVrSFBNbGJVV2hLdFc1aHJ4Rjd4UWVxOW1qWXByUDM1RXBk?=
 =?utf-8?B?Qk5pTWRnRHQvSmZIeHd4Qy9jbE1LOFkzNitQLzcrVDRVZGlCK3cvSTlmbUZC?=
 =?utf-8?B?bVZ6SHoyUkplN1k2M0hKWFJaZ2lHdlhOTEVxRFNLSlVtRnk4dWVGR2FyQmVl?=
 =?utf-8?B?VE45aFF5WTlieXpwbjliVHZZMDJhOWdJeXY0cTRhRmRYd3hrbEZ6MUlYbkc5?=
 =?utf-8?B?ZitVUG9OUm1DK1UwN2JEU0RYanZUeDAyai9pTDBpSWNKa1Vqcmw1bEYrTDZB?=
 =?utf-8?B?MXd1YkJUMUhVRjhDSTlpblJHVmtINDZSeDROdzNESE5WenJ3QzNCc1JmcDFL?=
 =?utf-8?B?ZnBobVhneGwrZ1g0SU9MQmNnTmJqMDQ1TC83WitmYTd6aUhVQ01TcHJobEsx?=
 =?utf-8?B?ZjFaRUtaMTlRSGhNWFJtdU83eXVhRml4RGpheWxsaWRaQVZvaTV5eDZHaS9T?=
 =?utf-8?B?Sy9kM2JwZHN4REVBREFzKzJ0dVBKckVBbmFDQ0xwdUw0clZLdUszTDYvRyt5?=
 =?utf-8?B?UGJqNjBxYW9OQjdSYWJZNWdXQTZBZWJKVmtBMnJLZ0ZUS3ZUa2crMkJXSVI3?=
 =?utf-8?B?WUdlV3NBdjFZRkJoWW5ZR041V0taa2ZuSTNtT25sdGVwTjZQcGdrTnpRdnEz?=
 =?utf-8?B?dDBTR05aNzdZRjZsUW5MYitUNm8rVzlDSXZmSmpXYkl1d2orMWczbWN3bTlK?=
 =?utf-8?B?YjN3UjFHaldzSFlHZ3hFT1V1UGwyNVdwRnhMZ0x1U2ZiUHlucjZOTmdVVHZU?=
 =?utf-8?B?UHNJbjRIOFVodVc4Y3BGd2JlUG5oMzVWWTRaUEVHTjJPelUvdHd0OWsza29y?=
 =?utf-8?B?b1lURlZKYzVEbURPa2JOcDZIUzR2NFVWeFJ0akpRQWc3NGNRdlZNWDVYR1Yz?=
 =?utf-8?B?ek90dDRqM1I2VXhPbzN1c2pDYk1tSkRGL0hYWGZ6V2xteEpnTy9Ud0Q4VWpt?=
 =?utf-8?B?VGN5M3B1bk5aL2pqM0R4N3F1Z2g3UStOdU5zSVlQQUc2VEZ3QlJVeTZieHBj?=
 =?utf-8?B?VHMyeUQ5QVcwaUlIZytNdDZSVUEyMnM1cVJHMFVlUkEzVU5nZ1hyOEpNYUZx?=
 =?utf-8?B?N29QK2JpRTFyczlEQmYxeXgxQ0dBNUttbk1EU2hGYUhRekl3ZXFYemxmMTJn?=
 =?utf-8?B?UHdGQ0d5WEUvWXpsNm5GV0RPQnF1dWprL2pycXgzUmNiZmJSQzNUT0MyMzVv?=
 =?utf-8?B?MzlXcnJzV1hFRCswemhBTTlaNXJZQzhmRW1QelRTWEJlZ2NnbWxYeTFkYWlr?=
 =?utf-8?B?UDgrRlExV0k2MmVKMlhtM2NUaEJkb29YWGdqY2ZVWXNhdE42Z3lqdUtkR3N4?=
 =?utf-8?B?R0lWYUtZNlY4MHdlaTBlSzFLN2ljZ2xFM2gwK2RTaUNpRzdFM1VYYlM5aExD?=
 =?utf-8?B?eWhpcXIzVG96YjUvaVg2OXl1bHkrb2JvdTFNdFdKdzVBazNFOHA1ZUtBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFF6UHVHbW81ME9OMXZnR01zQzRhdGw3aFI0SmNjdmxxTUtGS2Q3eW1hRVlS?=
 =?utf-8?B?bmt6b2RPL3NzM0lETFdveGxoWlgvWmxkYXhobmMwNVJmTUdLQkl4MVNkUy9u?=
 =?utf-8?B?Ri9CcndtemNLc0Qxb1U5bDhXN1RldG9GaHpCSVdJVE01L0hNNUplUmdDSG5I?=
 =?utf-8?B?V0hYMHQxVHA1bGZCVlh1SENxUElyL1RxbDZwK2c0cXdmLy92cGJmaHdCTDVD?=
 =?utf-8?B?amh0YVZWa3dSbGZuYnRpVTB4R05CN1NmNU5FNWxwd0Robk9sdXJsTzdEQjhs?=
 =?utf-8?B?MEttUnhRejRtbnhKK0hDbnJnc3Y2SnpxTExSem5PK00vcGQremNxM3ZDMUdz?=
 =?utf-8?B?ZXRFWDNpSS81akdjUzg1YXYzOUtkckw4VWF3Qi9QcXRhOFUxNDdUTWtnYXhq?=
 =?utf-8?B?Rk5xQUJaUHFSSXIvMHh3V1h0QmN0RTNiVkg4eU5ZekxaZmtkSHZxTzRiQVhu?=
 =?utf-8?B?RUtGWVl3ZWl2ZGRrekx5Z29vMUErSG5oYlBGZ1ZhZkhtNmZaMzZhbGFMaCtL?=
 =?utf-8?B?RHgvVkZpZ1ZocmhZK3FwcERZZFVaRXZFYUZNZjF4WHhkNGpCcXJrVUFIYkpt?=
 =?utf-8?B?cjg1TVYrdFpzbC9TRzUwS2ljWmRGTFdYSlRHL0hjbkFxbTBlUE9vaVMzRFh1?=
 =?utf-8?B?VkMyRlNyUmgwZWRxQlIvejN6bHJkL2ZUVHFWb3FoeUpZWWhWd0J6Z0tyNmVh?=
 =?utf-8?B?Nkc1Z2JoOVJ5YjFLOWtHZWhVOU1YbUZxcE5nNmprOE1qaXpnd0xzNWdhc20z?=
 =?utf-8?B?VTNGbVBoRkp0S2NhdE9oQUVPdDNzZDZqSFI1cGxlRzhmK0JCKzhybHZyRHZv?=
 =?utf-8?B?cTJMcGtSMXV5VUdMUERkSnBRUFI1eEV5Mm91alRyU04rRmtOcy83REJHNzhV?=
 =?utf-8?B?UG1mQU1Qa1lGQTYrK3h5VTBramIyTU9GblRVUnBFenkwWlZvWDkvZmxzc3hk?=
 =?utf-8?B?ZmdvajlVSyt0cno4eWZpWVZrbTRFVE1pTEZOaklsYUh1T0hleGJRTHVEQzhj?=
 =?utf-8?B?VWJkYnJIbHVCRmxqdFBmNDRhRDlMZ1JydEVhNllvWlAzZkJRK3NWbzRSa2tY?=
 =?utf-8?B?Y2d1ODFxa3k2Mk1xdnNOVStqRGVQUHlxRHQrTC9jK2dQUEl1Z0NsSzRIY0ZB?=
 =?utf-8?B?bk44SWtFbUdYUkZMTVNJOXdlVjRRczBmWlNCRURLVnNDRzh5Nk1UOVFyNU1L?=
 =?utf-8?B?a3NhRjhDNkc3ZEo4S3Zja3JHYWNRVjVwcVYvRWdpUjJlQlh6RUcxekdob2x4?=
 =?utf-8?B?Y2dickl1Nk03Y3JkMFNEMG1XYVFacVJSV3BSZXJSNWNFdElqTVI4bnMrcFNu?=
 =?utf-8?B?cjNmcEFZRmIrK2d6WCtLbmZCZXl4bmY1ZkZZSGNYVFNoSldtZWc3TUp3QVJH?=
 =?utf-8?B?cTk3QWp1NXNjK2IwamdFZlQwTEcvYWV0c2RSZEIrRTEyZ1I0dklMTFRGV3Jw?=
 =?utf-8?B?TCtYOWtaRGFFWGJ0YnQ0WjFLcitDZTBBRTNUUG1TQWxuRmorSUErUUMvYkZP?=
 =?utf-8?B?dHNKUlFURFZqMjRrWmhkNWQ0Qmp2ekd1ODk2aCt6V1VsZkk4SDJaL3dEYmxR?=
 =?utf-8?B?WUtzZm4rUkw0V2EyR0lQZjBwMGNjd0RqWWFYL296Q3c4WGt6UFQ5SEJLYTQy?=
 =?utf-8?B?SWhFNEwzc0o3V2pjZFIxb0tBUjIvd1NSdW4wSEluSnRmL0V2b2xIdFZ6S1J3?=
 =?utf-8?B?UjJnMzc1aGJNOWF5dW1PYjYrZ2F0dXQ2V2pDaEE2N0w3Qmc5RTRuOHloNzhw?=
 =?utf-8?B?cjYydTVBQUlOWlJOWCtmdU1uZmMzaFhkSDc3U1p2R3hUMHhDaDFwRVFCRnJa?=
 =?utf-8?B?b2VKL243UlhFRjljMW1MRHhoTUo3MmVTUWFkSk9xaHdRanlHM2RMNkdHNUVG?=
 =?utf-8?B?cUx5LzVMSW45N1RnRFF1RHg3UWZhd1UrRTRFT0NvUWw4VFJwUXVWTHRPdjBm?=
 =?utf-8?B?WmRlcnE2UG5xdEVHQmQyZnV4MjV0WjZybk9hcDRsL3k0TGxzYUhxRFFuaXlw?=
 =?utf-8?B?b29jYzByVXNab0c0RWNFSXYzVEQ2Nm5ablp0VE5tbWg0YkYraFBzVEdPZGJt?=
 =?utf-8?B?UXVwQmkxVDNKWkVOOFVZZzFRejJKemRvM3h3QXVOSmZkd3p1Mjl1Y21uSUhK?=
 =?utf-8?B?SHlNNjNwWTB5SFMwZzdVUEtBK3g0Mk5OeW1IelIyMkY1cEpVa0ZBaG1mUG1C?=
 =?utf-8?B?OGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6DB67875F17B1B4CAAA05D8018765E3F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc113a9-b6d9-4a1e-6343-08dc7fa1f193
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 05:41:09.8809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c2AJOay6DU0eGIwEgH1w8fvfwHL8M6iB2ZcvT1R6AXuFUgY0oD2a2aG5TGh5Hjumkvnvd7dZvFMmK3ov7Dg/4CQ9O8hFDGh23fb0RKdm4Vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
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

T24gVHVlLCAyMDI0LTA1LTI4IGF0IDE0OjQ0ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFRoaXMgaXMgYSBzdWJzZXQgb2YgUGFuZWwgUmVwbGF5IGVEUCBwYXRjaCBzZXQNCj4gKGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTMzNjg0KS4gVGhpcyBjb250
YWlucw0KPiBkZWJ1Z2ZzIGNoYW5nZXMgYW5kIGlzIHN1cHBvc2VkIHRvIGJlIHNhZmUgdG8gYmUg
bWVyZ2VkIGFsb25lwqANCj4gU2VuZGluZw0KPiBoZXJlIHRvIGdldCBDSSByZXN1bHQgZm9yIHRo
aXMgc3Vic2V0IGJlZm9yZSBtZXJnaW5nLg0KDQpUaGVzZSBhcmUgbm90IHB1c2hlZCB0byBkcm0t
aW50ZWwtbmV4dCBicmFuY2guIFRoYW5rIHlvdSBBbmltZXNoLA0KTWF4aW1lIGFuZCBNYWFydGVu
IGZvciB5b3VyIHJldmlldy9hY2suDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4g
Sm91bmkgSMO2Z2FuZGVyICg1KToNCj4gwqAgZHJtL2k5MTUvcHNyOiBTdG9yZSBwcl9kcGNkIGlu
IGludGVsX2RwDQo+IMKgIGRybS9wYW5lbCByZXBsYXk6IEFkZCBlZHAxLjUgUGFuZWwgUmVwbGF5
IGJpdHMgYW5kIHJlZ2lzdGVyDQo+IMKgIGRybS9pOTE1L3BzcjogTW92ZSBwcmludGluZyBzaW5r
IFBTUiBzdXBwb3J0IHRvIG93biBmdW5jdGlvbg0KPiDCoCBkcm0vaTkxNS9wc3I6IE1vdmUgcHJp
bnRpbmcgUFNSIG1vZGUgdG8gb3duIGZ1bmN0aW9uDQo+IMKgIGRybS9pOTE1L3BzcjogbW9kaWZ5
IHBzciBzdGF0dXMgZGVidWdmcyB0byBzdXBwb3J0IGVEUCBQYW5lbCBSZXBsYXkNCj4gDQo+IMKg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsN
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8
IDY4ICsrKysrKysrKysrKy0tLS0tDQo+IC0tDQo+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNiArKysrLQ0KPiDCoDMg
ZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pDQo+IA0KDQo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KESqAiex12kORggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:01:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15BF3CBB30
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 16:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1980310E7FC;
	Thu,  9 Apr 2026 14:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ldPkXffM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3223A10E7F9;
 Thu,  9 Apr 2026 14:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775743263; x=1807279263;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CfswBZQOJwNbcJPcF/+68zGqB9dmNFrC/tHrio49NUY=;
 b=ldPkXffMdP8l12RJDGs1DIBT6XXP6X3BCYiaaC1rb5Yzv1YPFaUL2BPL
 WqaPjLRVcmzYffXhxjiOADkd4nHvaApFd9UnP8SvWESBKFLNS7zyt/yUB
 ZkOndOxBZL8Z4/yOSuVujUPncLiOLMfdkXxzVK1lonDlMwMAlzMM31WnB
 5bxryLi9j/zdSkz0iAxcIENywjvu+riNnzQr22qZW8NgK82JwMx9o/O6m
 1Ka3gQ0NBarPGvMW8lZhtQllON8mAZAibIbgHVyaVMEhlzYPMnvzOu0cj
 0bJSycp5a/ReAWo/oaW0wlcr/VR9WSTxoYmDuled7EBV2bzdv5+jCFaEO w==;
X-CSE-ConnectionGUID: sr9bQFHJTaq+6Blg6du72A==
X-CSE-MsgGUID: YwQfn/7DQ6SeGeutJ29seQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80609621"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="80609621"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:01:02 -0700
X-CSE-ConnectionGUID: TKAmVFG3SciQmTe0bzI1Bg==
X-CSE-MsgGUID: 7uF0on47Sgq/PShlYh7qXg==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 07:01:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:01:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 07:01:00 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 07:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NBNdW5Bqrvqvu/Ds+2YHPDzpNh+yjB6tZgkVa4h5Guw2+iDPyMZVTB3ON3PF6mZM4Y5Cv2QY7Jmgs2lE8xpyO8/GlczwWSAbhgvQ7SlTG5b6So3SlNq9kSoX5wq/1vMKnAWbAvDxKVhq8+MMkombuh9M5Ab+LlebHiHlccZyCjTFsxM+kLkGaH5vUgHXxftcb0pwJXaPUaXAlb6wIy4Yf4n0Idcth73heYjg5XGI36XQ8ZixuztwS1nkrXWR5G/3sbghaVVROzJH/o3tVtM7k2sRyD6Rvrr79Jvf3dqUY2OpsRf0zEavxFXb5OH9d9V7xSLSeTYGy4PPLwYYJkoLJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfswBZQOJwNbcJPcF/+68zGqB9dmNFrC/tHrio49NUY=;
 b=Md5O1vi1ACxajoD2i2y8kGugrSfrws5nbbGN/Zd466SSftaoIwmQ+zIU1TONuAVR+H38b1oErc2uvA1aclNXpzXScw97IJRlf8EpO8ZfbAHvZUoE+tF0NOONsDz7BGzg20x384HnCOa24yFQ03XverhS4/5s7aaqDIgXGePrtUsiIg4JdHZG0M1J8x2ZjeMmoTFX6dnqz75YZZ8X7WOUm49Lw9Lwxk1sHzF+Auohh+SQqwuidjcbpsEPLexRmdkX5XFw56PwCTtYmHqfELELvoSdEuR/9uFZHsJP9Yjd5idMWxIEjRHFnMBrjkl1csAJhMxoKm7XBKcwzzVBgpVtyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 by CH8PR11MB9457.namprd11.prod.outlook.com (2603:10b6:610:2c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 14:00:58 +0000
Received: from SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d]) by SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d%7]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 14:00:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
Thread-Topic: [PATCH v3 03/12] drm/i915/cmtg: set timings for CMTG
Thread-Index: AQHcswMOLSAPvUSwf02hGWBi1l73D7XTZA2AgAAghACAABG2gIADUjng
Date: Thu, 9 Apr 2026 14:00:57 +0000
Message-ID: <SN7PR11MB8042551236C6BBDBB7E386B6F9582@SN7PR11MB8042.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-4-animesh.manna@intel.com>
 <2fd3f2334a8a85590a74c0636b941f31ddf9aba3@intel.com>
 <adTVoIgNc0K3_Zok@intel.com>
 <d048866d707e0f02a811c2bc8ba866cda2a16b38@intel.com>
In-Reply-To: <d048866d707e0f02a811c2bc8ba866cda2a16b38@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB8042:EE_|CH8PR11MB9457:EE_
x-ms-office365-filtering-correlation-id: 8ea81aee-6dc5-4298-f579-08de96406ca5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 76oTg23ThvMqSVr52r8/7APNVrrkUemT57liyvCC1k2SvbBPAgvVSANH/3qzzv6DsvC4IX2NItSr6SyNl2yRXVqr2ARKyHoiiIS1tP79G2MOAPqtKRwsBLK1HuMj0O7JWs1BwHWLX8iOwS91xmy7t94EMM1Fhs4vQ1M52tz9YOCChpVavbP5WnWDqoMIpyZ3fXn0TtMM/lpKmwkLYSaguSXJNl4n71H2OdmBI/78fuPVlvLCJo0PwjaESVJtZ323CfQAUsP4I9E5I/lTUet0jqwNnD1Vhl+FlbOm0bGZLiRqET/uauB8UAijnAwpvYpdAbFoVl0cruLlP0DWmHbKEdBq0m4IfpsUVrrSoYXTH8a29DeAEF+CbSkPkDvMFsLU3LBY44DieDNZYmZkGlG4jm8m/Wv1kbiBIOn025YidHRHXAq+4pPApSWCenuq7EX9xzWfmyi5NrG6d/Im5zf5Fp2VUZUsUtT2YAIjmbiFZ62B3QfxOAXz7Y1egG6JT4ZnfTtKi/2dc/fdRfI2fG2adPObcR1Iv34l7ptd7A1dkChghu5IWTnTegR4GJZ8skUSjpRRow4sb6zP0TQGFjXQ0eWdAYSaSysyrRoTaby/FXKaQGWaLREzIo/KLHBksziEaewDbls/YdA4x4o+y65a8x+Ju7qBj3Xj17qyJRN1dk92XwbF4V5C2Jlg8X0lnomgTkljh2zo2Oj/rZ2EV+4BNg1oFeVTNKkjrgnwg9fMS8XE2IzGP2kYYpU3z8wxQ2vSjULOFPnpiddKDgZFGrQ9eg1BSYQJQ/3r++SodSWElnM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3pHNDNLL0ZFWmUwWWxVMlc2d2RMaE9BT2xoTms3NlhzZ0tJYUc1NUcvVjZO?=
 =?utf-8?B?U1F0UzVvMWw5RlNxbElVcHc1Y2hIRWVaUVRGWlk1bXcrOGpQSUlUM2xQL2o0?=
 =?utf-8?B?RlZMRUxieFhuS0p0WVZpbjE1cnRGby9pRXBwS0hLQ1A0eVNlZXhWTi9UZU9a?=
 =?utf-8?B?M00vUkF5Tk1UcWFZV284Sm5aVVZJcW5VeEJwZFB1UDdTZ3lLd1FXN2VjcGVD?=
 =?utf-8?B?WmJqNW16NjNSY2RGei9xRitXRWFCeUJvZEwxMlFDK0tJYitTTWphcnE5WGdG?=
 =?utf-8?B?djVvYUFPTFpWUTFSZkVCOTVRZ2I2WDlUY1Vnb3RXT0pMb2lyTWQ4T3JqTlQ0?=
 =?utf-8?B?VGNsOUF5NUxLUnBYcE9CRlpPVDRqYVBVVmYzYlRnODdibzJ6NjM0L2RJbjdG?=
 =?utf-8?B?S3pGczAwWG9NdDBsYWNKWktTdE1YUVExaGhuOCtlZ2VacWlKamVTcUttNWUw?=
 =?utf-8?B?RWJNb09LcjlRYzEwRkYyaDU3dHdobnV4dmxEbUdnWXExZyttWFVXaWtNVE5G?=
 =?utf-8?B?ZWlUaGtWdm42WUs3dHNrMTlxSjBGMWR2OXNzQnFkZGNvNjNLc0ZnRXpGVVNB?=
 =?utf-8?B?REFrYjAzcW1xRGx1VXlPWEI0UEdoK0Nab0lKVEo5ZGhSUzhwRGFKU0NkY0hz?=
 =?utf-8?B?aTZ2ZEw1SmdBZHV1KzcvOGFURjEveVFoWjFJWTFaNXZzcUpCL0RYZDBkOEFM?=
 =?utf-8?B?VjZGUDZaSXowS214NjVZMFpsNE5aenFKajBIZWp2RkY0UkFnV2dnNXdqZjAw?=
 =?utf-8?B?d05TWnVwcE5uYW5UeXVlejhPaWI1NkNMSmFkRUk3Z0E4Y0JodjArL2gwSGMw?=
 =?utf-8?B?MlZXcjNoUnJmQldVaUhCQWFkQW9YbStvNElVZnpPWUhQMUl3eTRQQ1MreEZ2?=
 =?utf-8?B?dnhDWjRxbnp3MVVRTVZjUjdTMjFtZXorMEVjbjJ4TzJZNzJMQkx4ZWhGS2VU?=
 =?utf-8?B?SldRbjBmZE12MWl4dzByZmRUUkRmSEI0ZzZTdlh5S1BESE55KytySkcwYmI5?=
 =?utf-8?B?Wk1VaGx5TW8wQlBSNG9CVjNFTlorTHRNRnJWNTlBaVdhRkZTUnNTK0JqQVBv?=
 =?utf-8?B?RmJhMG9TRkszZVlDRnk1clU5TUVBaDNqMGhLMVBJR3grWDQxaGJOQWFrZnVL?=
 =?utf-8?B?R3hyQ2tQazNnLzlDeW5zSmR3R3Zwa2IySEVZeEVLcWxYYUhzdjQvd3pteUtm?=
 =?utf-8?B?TCt4QnByOGJNUzlRdnJNVmJYN1BBdXdOeTVIcGFkeXBKYmRUZFFUV21FUFFk?=
 =?utf-8?B?UHNlbjhSRkZYaWxqdmFOOS9zUms1NHd3SWNMd2lKQkxwTlFoVnRnUEZLcWwv?=
 =?utf-8?B?ZFFQWHRkOFRrSHdBTWJpNFNVelp0SXVXZ2hpU3NoK2t1N01ZT0VNMGRHZ0xp?=
 =?utf-8?B?cTR3U29LTC9NZ2xWbnRSb3BQUWZVZlVwNGVVc1ZhaUVNd0VQVzhlSE1Mckh0?=
 =?utf-8?B?WGF3MmFCT2dLNUJiSkJlK1c3bVZ6VmJ6cms3bXJXcEhFcW85OTRrL0VVVkhJ?=
 =?utf-8?B?c1llRENtL3RGYzl1bys5Y28yekhGZldtaTI1aTlhYzdlYlRheUo0VC9lMkV5?=
 =?utf-8?B?MGJkT0ZRVkUvOWt0U3pPQVplVC81TmVhclM0QTZIaHJJR0RrM25sdmxvWldz?=
 =?utf-8?B?bDdrZlRPb1BkWUpVUzFxN0p0Q2l1dThkeHlDbmRaMW9sSjRoanlaTXQvOS9H?=
 =?utf-8?B?d1llQjIvY0Rtd3RQdy82alFhVkdNTm1mS0FJTFl6YjR3RVE2ZHBYeEFyMlkv?=
 =?utf-8?B?U2RmQ2srZEJ2UEhpTlN0MmtIY09xQXFjZDBtR0RtMXRDMHFNNXEwdTZhaXpH?=
 =?utf-8?B?Mzl4dXFpNjJ5UWowZmdOMkFCSlhJSEdaalFUOG5TM3gxM1pwcnZLL0p6azhK?=
 =?utf-8?B?a2l4WjMrYW0rdHFTWENZRUlURTBiTTJQQ2NWVFpWOGJHRWplamU0dEhMdFZE?=
 =?utf-8?B?MERDN1pIL1ZobWFoODQvcENlbjFVWGZJTXVCSi8wZlRmVWZRb2Vkdi9CalRW?=
 =?utf-8?B?M0o1bFFhK1c3WVE4UGZYd1RCWkJUWWlGczY1dE9JT0RaUUJITTk4bVUvWDQ4?=
 =?utf-8?B?REVmRmI5QWM2WG1wdlRIRXFWSjdDUGI1Z212NU1FWUpPZUFoR28rZjVSamJp?=
 =?utf-8?B?ZTdNMFFjSksvTTZrYlBDZzEwRTF0U2ZUZlEwNWdrNGM5ZlVkeUpqMkVTcktY?=
 =?utf-8?B?N2pIelh6Q3dPb2E1aTN6S0tJVkNUZVVORGF1aDVnRmY4Sjk3UmY3bk94RFNw?=
 =?utf-8?B?eFcrcWVYbXJqMFlpVHlrQlJyZVUwS003N2NzLy9SNHpUTS9jbGJyL1NHZERJ?=
 =?utf-8?B?WW5FVVZDYit4cG9hZFArNUsxRHVLU2Y5QzhWN1UxNW9QdW9hVGdMZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hcwWKsIVXes2nxFlU8TeRt/PQaaWdBO+1ML53As1p889pI83Raim+82e7cilatfpTcK1OBH1Tb4hqzDm1u4WpYbMfcZXt2WfRpfOC85ev+L8qBTg61vVjMg4YIURvIfEAgw7YamRzQVivedWTkMh99eRsx6SzgqWD/qKT1yrk2mihgrHjgKMrqriHLBRkagxYrsJE400TvRo6iqWXRC2+eTlG2SgLa73GQMkjXGoWzdIGVxH+LcnChUShsiO9pNhfrSEqBCaX8PDSQwJ2qyCF0rKKrfP3uTS1/hdudTnZt6xGUpkLQDvZDBsV7i+UzpTUgorUKNOaJ+zcXKOeMK7VQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ea81aee-6dc5-4298-f579-08de96406ca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 14:00:57.7937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ePKn43PUczLYclW67WXNu6q7eO2dj+MwhgyaPq/cPA06rACy3HkiOvYbUG/lxpq5lQRmz3cRLO8MpG52nEunIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9457
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A15BF3CBB30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDcsIDIwMjYgNDoz
MyBQTQ0KPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVs
LQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgRGliaW4gTW9v
bGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAwMy8xMl0gZHJtL2k5MTUvY210Zzog
c2V0IHRpbWluZ3MgZm9yIENNVEcNCj4gDQo+IE9uIFR1ZSwgMDcgQXByIDIwMjYsIFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uIFR1
ZSwgQXByIDA3LCAyMDI2IGF0IDExOjAzOjM3QU0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0K
PiA+PiBPbiBGcmksIDEzIE1hciAyMDI2LCBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4+ID4gKyNkZWZpbmUgVFJBTlNfSFRPVEFMX0NNVEcodHJh
bnMpCV9NTUlPKDB4NkYwMDAgKyAodHJhbnMpICoNCj4gMHgxMDApDQo+ID4+ID4gKyNkZWZpbmUg
VFJBTlNfSEJMQU5LX0NNVEcodHJhbnMpCV9NTUlPKDB4NkYwMDQgKyAodHJhbnMpICoNCj4gMHgx
MDApDQo+ID4+ID4gKyNkZWZpbmUgVFJBTlNfSFNZTkNfQ01URyh0cmFucykJCV9NTUlPKDB4NkYw
MDggKw0KPiAodHJhbnMpICogMHgxMDApDQo+ID4+ID4gKyNkZWZpbmUgVFJBTlNfVlRPVEFMX0NN
VEcodHJhbnMpCV9NTUlPKDB4NkYwMEMgKyAodHJhbnMpICoNCj4gMHgxMDApDQo+ID4+ID4gKyNk
ZWZpbmUgVFJBTlNfVkJMQU5LX0NNVEcodHJhbnMpCV9NTUlPKDB4NkYwMTAgKyAodHJhbnMpICoN
Cj4gMHgxMDApDQo+ID4+ID4gKyNkZWZpbmUgVFJBTlNfVlNZTkNfQ01URyh0cmFucykJCV9NTUlP
KDB4NkYwMTQgKw0KPiAodHJhbnMpICogMHgxMDApDQo+ID4+ID4gKw0KPiA+PiA+ICsjZGVmaW5l
IFRSQU5TX1NFVF9DVFhfTEFURU5DWV9DTVRHKHRyYW5zKQlfTU1JTygweDZGMDdDICsNCj4gKHRy
YW5zKSAqIDB4MTAwKQ0KPiA+DQo+ID4gVGhlc2UgYXJlIGFsbCBqdXN0IG5vcm1hbCB0cmFuc2Nv
ZGVyIHJlZ2lzdGVycywgc28gbm8gbmV3IGRlZmluaXRpb25zDQo+ID4gc2hvdWxkIGJlIG5lY2Vz
c2FyeSBhdCBhbGwuDQo+IA0KPiBSaWdodCwgc28gdGhlIHF1ZXN0aW9uIGJlY29tZXMgd2h5IGFy
ZSB0aGVpciB3cml0ZXMgZHVwbGljYXRlZCwgYW5kIHdoYXQncw0KPiB3aXRoIHRoZSB3aG9sZSAi
VGltaW5nIHJlZ2lzdGVycyBhcmUgc2VwYXJhdGUgZm9yIENNVEciIHBhcnQgaW4gdGhlIGNvbW1p
dA0KPiBtZXNzYWdlPz8/DQoNCkFzIHBlciBteSB1bmRlcnN0YW5kaW5nIENNVEcgd2lsbCBiZSB1
c2VkIHdpdGggZHluYW1pYyBkYy1zdGF0ZSBlbmFibGVkIHdoaWNoIG1lYW5zIG5vcm1hbCB0cmFu
c2NvZGVyIGFsb25nIHdpdGggcGlwZSBjYW4gZ28gdG8gbG93IHBvd2VyIHN0YXRlLg0KU28sIHdy
aXRlIGlzIGR1cGxpY2F0ZWQgYW5kIGNvbXBsZXRlbHkgZGVwZW5kZW50IG9uIGgvdyBkZXNpZ24u
DQpUaGUgb2Zmc2V0IGRpZmZlcmVuY2UgYmV0d2VlbiB0d28gQ01URyB0cmFuc2NvZGVyIHJlZ2lz
dGVycyBpcyBhbHNvIGRpZmZlcmVudCBjb21wYXJlZCB0byBub3JtYWwgdHJhbnNjb2RlciByZWdp
c3RlcnMuDQpJIGhhdmUgdXNlZCBfTU1JT19UUkFOUygpIGluIGxhdGVzdCB2ZXJzaW9uIGluc3Rl
YWQgb2YgbWFudWFsIG11bHRpcGxpY2F0aW9uLiBHb29kIHRvIGtub3cgYW55IGZ1cnRoZXIgZmVl
ZGJhY2suDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4N
Cj4gPj4NCj4gPj4gV2UgaGF2ZSBhIGJ1bmNoIG9mIGhlbHBlcnMgdG8gYXZvaWQgZG9pbmcgdGhl
IG1hbnVhbCBtdWx0aXBsaWNhdGlvbg0KPiA+PiBoZXJlLg0KPiA+Pg0KPiA+PiBCUiwNCj4gPj4g
SmFuaS4NCj4gPj4NCj4gPj4NCj4gPj4gLS0NCj4gPj4gSmFuaSBOaWt1bGEsIEludGVsDQo+IA0K
PiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==

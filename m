Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EBF9B7C6A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 15:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3123110E8A6;
	Thu, 31 Oct 2024 14:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YXW3vKv8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D3A010E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730383679; x=1761919679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GEqeyEcostviTmhk7A8Ctn2yUIImGwc8lSKEspX6fbQ=;
 b=YXW3vKv8LAgXcr29/g+nrMiG2xDZE6xkqH/0mDajxO/dZskHVHH/zvzx
 K3qsfW7yEmyuktqHaQyicR4L0vIuT1rUh1zQvw7PtkLaluAgmwIz7tqwN
 fBEDW4iiodb5aU+QLvpwL9YELa9vXH8araqoIXexjCPkjSGQm/pVWqDmC
 2L5NIwe5042Wk4zd/ekzRPO1/Qr6EcuHB2ud0MG/D3Oc4JuZ4kDt1w9qg
 cd9baX7vyBMcFssL6RzTKUzMeqbr3Sxki3Bhv0ikK3IfOvO0flPvqfM3B
 ET6U7TU0w6NUrmADMfOh8RKjK/hvpNYaOBzPSd0h4sRhgqH3kUvAzqij6 A==;
X-CSE-ConnectionGUID: cPyUuQJiQQSIIWFqn9pzOw==
X-CSE-MsgGUID: yJH1Mb6fQHuAKF0+lW/Pcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="33923380"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="33923380"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:07:49 -0700
X-CSE-ConnectionGUID: eLSDwIVmQVS4dY1Iy2qRxg==
X-CSE-MsgGUID: 1CPOsQUrS3GDvOAZUpRoDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82749448"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 07:07:48 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 07:07:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 07:07:48 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 07:07:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OXl3YoDGqzrGrMbVsYgkVrYMEaxP0yd8o1Hsgmd9uaYb4ACm8MaIjnYtNsVT61HNukblopBjboMaoUAjs8mwY9ccQQ9z2nV8gvy2YFX/LnrCm6VPeEdqaQBop3FrgYjbVq0DrdNdvCCdOAt7DFNyc/o0HSPo+r8aOaEBu0/tVfJSSVudDsxLSb24fk0fnPjaGyjXQrrCwNj9FQZzyn/HyHAl3F1cz+UGpDM8Stzmb3J83byLHrO9sbhXPzsbZnAhqFH+hpH1/U9zXaD7pYN+cZfRtPyVcBL2LDJ8W6ulqWkAqYJ3bDSql7bMwx0ROsx7gBI6ZUM8TAufED2wbzVHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEqeyEcostviTmhk7A8Ctn2yUIImGwc8lSKEspX6fbQ=;
 b=BUOgxfTFecH/kBKjHARHky1ue57MgtEvQveH8dyV+FPAW9u+uI3jxE4g9p6bylnrFCwC/5K8syh1uOgrBGfXxhiSCiY0CY/l4GvdLcmjoHZBbP3eZWfGcIdHZ5NTeAABdWKs5H+ew5wng8oUIGwN8/ZkrL/J7VLSTZoqjzxBcrytMfftQroNn+AmNxVoNYXHp5NE4shZY3uB7uk2u3vP5BcX495q3SWeQrXeaktmJbNL3lXsi1E8LONY1KSl/ozx42HupjQTqME8D3gBKocEQOdVNOR/1edK5EpcGNYptzs03n6mc+/eY+ahTmUyTCNGrPO3d7QyfAFsv3l/r5RBRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.23; Thu, 31 Oct
 2024 14:07:40 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Thu, 31 Oct 2024
 14:07:40 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Topic: [PATCH v7] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Index: AQHbKrc9se3MduXzn0K1Ot4kdaXDE7Kg5Wgg
Date: Thu, 31 Oct 2024 14:07:39 +0000
Message-ID: <MW4PR11MB70546379665B91F48332EC83EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241030103319.207235-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241030103319.207235-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA2PR11MB4921:EE_
x-ms-office365-filtering-correlation-id: 16581584-a4c4-4421-fbaa-08dcf9b56185
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TXRJUi83Y3RsdUxyREZxQ29HTmxqOVZJRWdTNGFnWmhvaTFhYmVLK1M3UXVR?=
 =?utf-8?B?VWFKMXpabVlaakNQRERvOHdXclE0VEJ3cGs2ai96ZjB2ZGl1Z1BJWDJGcGw1?=
 =?utf-8?B?dnNKczgyck9aaWRGTlFjYktsdVlXWThIaUNlYzBzK0NydUhjUi9mWXdFNnZi?=
 =?utf-8?B?Z1k5dkR1aktDU3ErYU13b0RQeXdOUVNzTHlRcHorNDgxYWdnNUEzNUFBUFgy?=
 =?utf-8?B?dSszN3NHUmd1UExubWpaaDRwUHc4SlFlM0lxRXFNbWkrd3N5MXhuUHVDSEM0?=
 =?utf-8?B?SW11bWhtV3lQckVSVDNXUm9SdVRDQXVXTjBhNlUyeTk3NDIrMy9NZ2pWcDNT?=
 =?utf-8?B?NzJFcG5TMk9OOVJZV2xicHAvU09seStFMS9JVTZMa2FQYkRyUXI1SVNlOE1D?=
 =?utf-8?B?MEMrdzg3aWJOOVBhOXBYZ1k4MS83QUpUU3g2amVuK1ZubndBMlZVRE9md1hn?=
 =?utf-8?B?VHl1TytQUnNkMTZVdEt3NjFOdDRsei8zeGNjemxKbUpYejBQTGtMbVJNUWhO?=
 =?utf-8?B?Z0VHT2ZOYnNSTTQ3ajQ5YkdyS292b29nZUZjc2FLZUJDZXpmQzV5bWQvU3VN?=
 =?utf-8?B?QW1kTTVCYmRpbDZVcnBKdVUzZUpKaGpCK0REZHduenVKcWZMZ1U4aHI4aTRF?=
 =?utf-8?B?ZXhWZFJPa1JVZSt2bmdmRUlsWkFnOUdmL1N0dUN3NFNFMG5lQjdDMTNVYjBB?=
 =?utf-8?B?OGw0R0oyaHdjQnpEanVaQXlWM2NKeERreGtjOW82VW51WGFtTjRmM1d3L3BH?=
 =?utf-8?B?bDJOMENWTXBoM05oUzRtOUZLSThlNkxLVTNmN3VtNUhMZWRxWE9NeStXeEpX?=
 =?utf-8?B?aktYV09QaHFJdmdzNm5tVi9DNDVSRGZZQktMZ1diSUtodUQwamNZdWlQLzM0?=
 =?utf-8?B?NlluMnVWSlIrbHFLbVdTMEtkVythbUZZY2UyYUdsL3BhTGNYanpHbHpybDhP?=
 =?utf-8?B?clhLdEl5K2NkYU5NR2lFTGlqUUNadTROZ1YvNlUwV0hLZFkvaXpYREE0S0lM?=
 =?utf-8?B?NlZVZ3pjcGdycEZveXJWR2tDVy95ejFmWks5cmplU25ESnY3RVZ6T3FkeExw?=
 =?utf-8?B?SGR5dWptUTFQbE9KdDljQWk3NzkyYjF0bDBkdUpDS0hOdEd2aHNjOEhtejlM?=
 =?utf-8?B?Zk1US0xHS2htaXIrenVEYnY2TG1odGFkcHZsR285ZEVEa0JXREVBemJEZXVi?=
 =?utf-8?B?cEJ6R2piSmF4MlNFdlp1VUxaZ3FKNTFIMldFcnM1dFp6Ui8zaWc5UG5sMllh?=
 =?utf-8?B?VkI5aks3Wk1PeUo3RWRwQk4wdzFobXQ4TlNGM21jSDRMQnlEcmVUbUN4T1BG?=
 =?utf-8?B?bWNSOHFtNnJxNERFKzBHdmNGdmU5YWdZWXJOalRCQTJtTEdqamlmcVNsejhi?=
 =?utf-8?B?Qkt0UjJycno2cVZKbFVYMWcvRi9MNDNjaDBjUnQrQkF0K2RQdi9oa3l3MVpY?=
 =?utf-8?B?MkNJTG0vdjB0Uzl5R1ZUUmw4d2JodFRRUjRiejFXZ2xEeWROdFozNVJ4WjZG?=
 =?utf-8?B?NEppMjY1NjNXSXV1NDQ5aXcrUkpIZURTckhLbFErclZOeDlLeWZhWkhNTWZL?=
 =?utf-8?B?TmVlOTR4VnRVNjZEdkVVSlJlTml0bVNxYTNJWW14alp5Vk5tbm55bGxMMXJC?=
 =?utf-8?B?aUhKcENyVk1HeFhYRENqUUVTVFdyZGhLc0ZYeGU0cVVkNEhPQVNNNnBTVjEy?=
 =?utf-8?B?RXNYZVlHZm8zVXZicStyc2ZaeE9Sa0JDZVdsQzh1TWQ1bzlCNzNsNnlmdFNY?=
 =?utf-8?B?T3F0NzZPaU1YNURWTWpKQWRFS0QrbitJSUNoT1kwTVBtMXRhYllpT204aWtO?=
 =?utf-8?Q?Y1pDezUYQGRqU/4gjZArYsKnCv6qmqXObe3mY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2FqOVZFNlRYQUtFQVZ5YzFNR0RuQkZnbkEyOEFpWUxEb0FOaUZpbmcyOWFW?=
 =?utf-8?B?NFgwck9PZDRNQUxWQ0VDbVNXQksrRFd3dTdRbVNESjVRWkhPOTdncGk4bnZn?=
 =?utf-8?B?MmlWUm1XU3cwRE95RExkcXpqL2FtM2hOUVNhUWthcDdkQTg2QUl4SFRrTnZT?=
 =?utf-8?B?aGlOZUpCVjdGYXRGWmNLMTRXa1d3aDBuUXd3Ri9JVGR4QzlPMU1KVFozNlh4?=
 =?utf-8?B?UW9LNktJQUY4OUxRUFZtRlJRdW1CbkNScmZYQjZaNExJcDNlWTVGSUpZbDBW?=
 =?utf-8?B?Mm9tcG1qRnB3ODQ4VXRFbUlDVTZIVHlDSFh0cnF0b015ZER3bnVmOXk3ak1t?=
 =?utf-8?B?c2tyZ0k2TzFTR3BoRStmeVk0VVRIWWM3bUw2Yld1Y3YrZmR4VWc4WlhoWXdx?=
 =?utf-8?B?cUt0Q05TWTRldEdFQnA3Y0w3b0FqYklwNnZYMktNYUdtSGlIVUV2K1BJSGFN?=
 =?utf-8?B?VWkrR0JBaWJURWdBa0xhWmdtSDlBR1diaGZyb1RaVUtiWVUrR2hyMFlkNElr?=
 =?utf-8?B?VXZSRUJ0M1M1Y2txcDZTT1d2ME05bFRSZ3RxZGhncFNKV3g5VVZTY0ZvVjhi?=
 =?utf-8?B?cSttR21CdTZLQzFqQXp4KzlSM0xKVEc3Q2hKTjNPeG5FMXBORVVwN0xBSnVt?=
 =?utf-8?B?VGZEL2FibWx2Z0hHcjNReEpxdWlqbGpTNnNXaHFMeE91M1JnTmRmWEZLUFNT?=
 =?utf-8?B?d252NHZteFVEL0NFZnVhZlJka2pQWUlTRWJjcmFBZWwrc0ZsWU9FajZaeXRn?=
 =?utf-8?B?M2tRcmZTNTNsZlFZN2F3TXBNZzA5b3lOa3V6d2tXaTBtWkhMTGIzUTFFYis3?=
 =?utf-8?B?aC8xR2ExemlyNS8xWFBnbFlYbWVOb00rdVF3WjFyR0ZPTkN1ZE1PTWc3czJn?=
 =?utf-8?B?eVZKWXZPcjduV0lBZ0d0UDhENnpFYytGVklDL2dvK2pobFVaYnhXS2Zrbkph?=
 =?utf-8?B?VFN0VmhYbW9yTWZ4T1pHVCs3L24ydlBkRUk4U1JKd2NEczVJZGJFTllxaitB?=
 =?utf-8?B?endPKzliQ0NsRDNUMmxucnY2ZW5BbVpZTjlrQzNFQVZBeGhTUUxVeFhYZWJU?=
 =?utf-8?B?Vnpkc0xGUG82VmZQZHZHS0ljS0I3Uy9tVUJmaVRlbWdWNlpmT2lLRUs2RVRN?=
 =?utf-8?B?Y2FiOHlwWEwzY3Z5MW12NTFDcUVoOVFTWTN0akNjbWJhZUZUQkszL1lELzd4?=
 =?utf-8?B?U0NrdFV2SHkvVHhyY0RNMWhIZXZmT3MxRGdXN0VLWFlXc01abFNRUG5zblJW?=
 =?utf-8?B?eG9pYnlVakRkN3U0TU9KNW5aQWVBSGdTTnd2alZCaStmRXUyUXZieVdpZGJE?=
 =?utf-8?B?bHk0RXZlRStyckJ1ZmRPRm5tRGY1VkV2aE5QTW9rT25CQ29SSklzUXIydUla?=
 =?utf-8?B?ZVRiYmFXZjlKU2hhZVdRKzZ4clJSSFdYcEpoUDRmbVltNzZrcC9vQTUyRi9K?=
 =?utf-8?B?YWR2YzlFVVZEWDIwdytPdGNuQ29wS2RIcUc0a2cyWWxkWXRzZTVjd1JiUUF5?=
 =?utf-8?B?M203LzlXSnYvbnR1Y2NVMEJtYTdNR1VUNHdRZUpOdllkNWs0aTM0Szg1by9N?=
 =?utf-8?B?MkljendLUGJzMzVrWDQrOXpEZUhDVldXK1lmc2c5bS80ZEhUeHhmM21FWDlV?=
 =?utf-8?B?dS93YXlTUXZXUmJHTWxXSmtzLzlkUlFEckx6UU5hbTdLN0tDa1V6VXdtRjlB?=
 =?utf-8?B?cWs4ak0vQ1lQK05MeUhmN1B5MUtpZGE1aEFTS2I3dkdha0JEOE1yZjdGbzF4?=
 =?utf-8?B?bXZPbWlRY0EyVE5nQkZGVFNCU1BGZmxnTk5YNjF5azlkaUR1UUhyU2JOazVa?=
 =?utf-8?B?RzZDQnlyV2lDQ2NWa2Z4c0h0R0l5Qm1VZTZHS2g2RU1TaVpUcXVHM0taeFFK?=
 =?utf-8?B?bVJIS2ppazduR2Y4ckxhYUplaHlsUk5VT1ZwR0ozeU5lT2dyNEJPTFcyK2N4?=
 =?utf-8?B?Y0hnRktYRXJXU2RsWEJneVB0d3hJMVQ3anNKajc1VXZpZnQ4K3ZTK3NWYW5q?=
 =?utf-8?B?R3RPZkZjVUZKTWdaOWcxNVhhOHJGREg3MFBEK0k5Y3lqaHgwamlqZ2UzVDh4?=
 =?utf-8?B?YkZNQnhlQWQwOGRESDNiT21wTk8xQ2psL0lNeGpnMDZrQUhmVlpNc2pYNi9T?=
 =?utf-8?Q?k0wz9txfnuLbqiOxaRkkntSZd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16581584-a4c4-4421-fbaa-08dcf9b56185
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 14:07:39.9897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vDQfAATQFQn6w3v+T9B0aK4bgtnhyb5jWViGLNw7OZ4P7OjDuZ4wxpz0iiGg+X29+gnIOSl9OYbU0s5ZDRV29g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbm9kDQo+IEdv
dmluZGFwaWxsYWkNCj4gU2VudDogV2VkbmVzZGF5LCAzMCBPY3RvYmVyIDIwMjQgMTIuMzMNCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEdvdmluZGFwaWxsYWks
IFZpbm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2N10gZHJtL2k5MTU6IEltcGxlbWVudCBEYnVmIG92ZXJs
YXAgZGV0ZWN0aW9uIGZlYXR1cmUgc3RhcnRpbmcNCj4gZnJvbSBMTkwNCj4gDQo+IEZyb206IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiANCj4g
RnJvbSBMTkwgb253YXJkcyB0aGVyZSBpcyBhIG5ldyBoYXJkd2FyZSBmZWF0dXJlLCB3aGljaCBh
bGxvd3MgdG8gZGV0ZWN0IGlmIHRoZQ0KPiBkcml2ZXIgd3JvbmdseSBhbGxvY2F0ZWQgREJ1ZiBl
bnRyaWVzIGFuZCB0aGV5IGhhcHBlbiB0byBvdmVybGFwLiBJZiBlbmFibGVkIHRoaXMNCj4gd2ls
bCBjYXVzZSBhIHNwZWNpZmljIGludGVycnVwdCB0byBvY2N1ci4NCj4gV2Ugbm93IGhhbmRsZSBp
dCBpbiB0aGUgZHJpdmVyLCBieSB3cml0aW5nIGNvcnJlc3BvbmRlbnQgZXJyb3IgbWVzc2FnZSB0
byBrZXJuZWwNCj4gbG9nLg0KPiANCj4gdjI6IEluaXRpYWxpemUgZGJ1ZiBvdmVybGFwIGZsYWcg
aW4gcnVudGltZV9kZWZhdWx0cyAoSmFuaSBOaWt1bGEpDQo+IA0KPiB2MzogVW5tYXNrIHRoZSBv
dmVybGFwIGRldGVjdGlvbiBpbnRlcnJ1cHQgKFVtYSkNCj4gDQo+IHY0OiB1c2UgZGlzcGxheSBv
dmVyIGk5MTUgKEphbmkgTmlrdWxhKQ0KPiANCj4gdjU6IFVzZSBkaXNwbGF5IGluc3RlYWQgb2Yg
ZGV2X3ByaXYgKEphbmkgTmlrdWxhKQ0KPiANCj4gdjY6IHJlYmFzZWQgdG8gcmVzb2x2ZSBtZXJn
ZSBjb25mbGljdHMNCj4gDQo+IEJzcGVjOiA2OTQ1MCwgNjk0NjQNCj4gU2lnbmVkLW9mZi1ieTog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZXZpY2UuYyB8ICA1ICsrKysrDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMgICAgfCAxMCArKysrKysrKysrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICAgfCAgMiArKw0KPiAg
NCBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IGluZGV4
IDkwMzFiODViYjAwMC4uNmJiNmY4YzgyYWM2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+IEBAIC0xMjI4LDYg
KzEyMjgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8N
Cj4geGUyX2xwZF9kaXNwbGF5ID0gew0KPiAgCS5fX3J1bnRpbWVfZGVmYXVsdHMuZmJjX21hc2sg
PQ0KPiAgCQlCSVQoSU5URUxfRkJDX0EpIHwgQklUKElOVEVMX0ZCQ19CKSB8DQo+ICAJCUJJVChJ
TlRFTF9GQkNfQykgfCBCSVQoSU5URUxfRkJDX0QpLA0KPiArCS5fX3J1bnRpbWVfZGVmYXVsdHMu
aGFzX2RidWZfb3ZlcmxhcF9kZXRlY3Rpb24gPSB0cnVlLA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8geGUyX2hwZF9kaXNwbGF5ID0g
eyBAQCAtMTY2OSw2DQo+ICsxNjcwLDEwIEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfZGlzcGxheV9k
ZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5DQo+
ICAJCWlmIChJU19ESVNQTEFZX1ZFUihpOTE1LCAxMCwgMTIpICYmDQo+ICAJCSAgICAoZGZzbSAm
IEdMS19ERlNNX0RJU1BMQVlfRFNDX0RJU0FCTEUpKQ0KPiAgCQkJZGlzcGxheV9ydW50aW1lLT5o
YXNfZHNjID0gMDsNCj4gKw0KPiArCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjAgJiYN
Cj4gKwkJICAgIChkZnNtICYgWEUyTFBEX0RGU01fREJVRl9PVkVSTEFQX0RJU0FCTEUpKQ0KPiAr
CQkJZGlzcGxheV9ydW50aW1lLT5oYXNfZGJ1Zl9vdmVybGFwX2RldGVjdGlvbiA9IGZhbHNlOw0K
PiAgCX0NCj4gDQo+ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKSB7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgN
Cj4gaW5kZXggNDEwZjhiMzNhOGExLi4xMTczNWEwNjA5OTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gQEAg
LTEyNSw2ICsxMjUsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlfc3VicGxhdGZvcm0gew0KPiAgI2Rl
ZmluZSBIQVNfQ0RDTEtfU1FVQVNIKGk5MTUpCQkoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+aGFz
X2NkY2xrX3NxdWFzaCkNCj4gICNkZWZpbmUgSEFTX0NVUl9GQkMoaTkxNSkJCSghSEFTX0dNQ0go
aTkxNSkgJiYNCj4gSVNfRElTUExBWV9WRVIoaTkxNSwgNywgMTMpKQ0KPiAgI2RlZmluZSBIQVNf
RDEyX1BMQU5FX01JTklNSVpBVElPTihpOTE1KSAoSVNfUk9DS0VUTEFLRShpOTE1KSB8fA0KPiBJ
U19BTERFUkxBS0VfUyhpOTE1KSkNCj4gKyNkZWZpbmUgSEFTX0RCVUZfT1ZFUkxBUF9ERVRFQ1RJ
T04oX19pOTE1KQ0KPiArKERJU1BMQVlfUlVOVElNRV9JTkZPKF9faTkxNSktPmhhc19kYnVmX292
ZXJsYXBfZGV0ZWN0aW9uKQ0KPiAgI2RlZmluZSBIQVNfRERJKGk5MTUpCQkJKERJU1BMQVlfSU5G
TyhpOTE1KS0+aGFzX2RkaSkNCj4gICNkZWZpbmUgSEFTX0RJU1BMQVkoaTkxNSkJCShESVNQTEFZ
X1JVTlRJTUVfSU5GTyhpOTE1KS0NCj4gPnBpcGVfbWFzayAhPSAwKQ0KPiAgI2RlZmluZSBIQVNf
RE1DKGk5MTUpCQkJKERJU1BMQVlfUlVOVElNRV9JTkZPKGk5MTUpLQ0KPiA+aGFzX2RtYykNCj4g
QEAgLTIzMyw2ICsyMzQsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9ydW50aW1lX2luZm8gew0K
PiAgCWJvb2wgaGFzX2RtYzsNCj4gIAlib29sIGhhc19kc2M7DQo+ICAJYm9vbCBlZHBfdHlwZWNf
c3VwcG9ydDsNCj4gKwlib29sIGhhc19kYnVmX292ZXJsYXBfZGV0ZWN0aW9uOw0KPiAgfTsNCj4g
DQo+ICBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mbyB7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gaW5kZXggYTRm
NDJlZDNmMjFhLi44MTRiNGM5ODQxMmMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gQEAgLTkwMiw2ICs5MDIsMTMgQEAg
Z2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZf
cHJpdiwgdTMyIGlpcikNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZkZXZf
cHJpdi0+ZGlzcGxheTsNCj4gIAlib29sIGZvdW5kID0gZmFsc2U7DQo+IA0KPiArCWlmIChIQVNf
REJVRl9PVkVSTEFQX0RFVEVDVElPTihkaXNwbGF5KSkgew0KPiArCQlpZiAoaWlyICYgWEUyTFBE
X0RCVUZfT1ZFUkxBUF9ERVRFQ1RFRCkgew0KPiArCQkJZHJtX3dhcm4oZGlzcGxheS0+ZHJtLCAg
IkRCdWYgb3ZlcmxhcCBkZXRlY3RlZFxuIik7DQo+ICsJCQlmb3VuZCA9IHRydWU7DQo+ICsJCX0N
Cj4gKwl9DQo+ICsNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0KSB7DQo+ICAJ
CWlmIChpaXIgJiAoWEVMUERQX1BNREVNQU5EX1JTUCB8DQo+ICAJCQkgICBYRUxQRFBfUE1ERU1B
TkRfUlNQVE9VVF9FUlIpKSB7DQo+IEBAIC0xNzg5LDYgKzE3OTYsOSBAQCB2b2lkIGdlbjhfZGVf
aXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikNCj4g
IAkJCWRlX3BvcnRfbWFza2VkIHw9IERTSTBfVEUgfCBEU0kxX1RFOw0KPiAgCX0NCj4gDQo+ICsJ
aWYgKEhBU19EQlVGX09WRVJMQVBfREVURUNUSU9OKGRpc3BsYXkpKQ0KPiArCQlkZV9taXNjX21h
c2tlZCB8PSBYRTJMUERfREJVRl9PVkVSTEFQX0RFVEVDVEVEOw0KPiArDQo+ICAJaWYgKEhBU19E
U0IoZGV2X3ByaXYpKQ0KPiAgCQlkZV9waXBlX21hc2tlZCB8PSBHRU4xMl9EU0JfSU5UKElOVEVM
X0RTQl8wKSB8DQo+ICAJCQlHRU4xMl9EU0JfSU5UKElOVEVMX0RTQl8xKSB8DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA4OWU0MzgxZjhiYWEuLjIyYmU0YTczMWQyNyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC0yNTg5LDYgKzI1ODksNyBAQA0KPiAgI2Rl
ZmluZSAgR0VOOF9ERV9NSVNDX0dTRQkJUkVHX0JJVCgyNykNCj4gICNkZWZpbmUgIEdFTjhfREVf
RURQX1BTUgkJUkVHX0JJVCgxOSkNCj4gICNkZWZpbmUgIFhFTFBEUF9QTURFTUFORF9SU1AJCVJF
R19CSVQoMykNCj4gKyNkZWZpbmUgIFhFMkxQRF9EQlVGX09WRVJMQVBfREVURUNURUQJUkVHX0JJ
VCgxKQ0KPiANCj4gICNkZWZpbmUgR0VOOF9ERV9NSVNDX0lSUV9SRUdTDQo+IAlJOTE1X0lSUV9S
RUdTKEdFTjhfREVfTUlTQ19JTVIsIFwNCj4gIAkJCQkJCSAgICAgIEdFTjhfREVfTUlTQ19JRVIs
IFwNCj4gQEAgLTI4OTUsNiArMjg5Niw3IEBADQo+ICAjZGVmaW5lICAgU0tMX0RGU01fUElQRV9D
X0RJU0FCTEUJKDEgPDwgMjgpDQo+ICAjZGVmaW5lICAgVEdMX0RGU01fUElQRV9EX0RJU0FCTEUJ
KDEgPDwgMjIpDQo+ICAjZGVmaW5lICAgR0xLX0RGU01fRElTUExBWV9EU0NfRElTQUJMRQkoMSA8
PCA3KQ0KPiArI2RlZmluZSAgIFhFMkxQRF9ERlNNX0RCVUZfT1ZFUkxBUF9ESVNBQkxFCSgxIDw8
IDMpDQoNCkp1c3Qgd29uZGVyaW5nIGlmIHdlIHNob3VsZCB1c2UgUkVHX0JJVCgzKSBhcyB0aGlz
IGlzIGEgbmV3IG9uZS4gU2luY2UgYWxsIG90aGVyIG9uZXMgYXJlIGRlZmluZWQgc2ltaWxhciB3
YXksIEkgdGhpbmsgdGhpcyBpcyBhIGNsZWFudXAgdGhhdCB3ZSB3b3VsZCBuZWVkIHRvIGRvIGFz
IGEgc2VwYXJhdGUgcGF0Y2guDQoNCk90aGVyd2lzZSwgdGhlIHBhdGNoIGxvb2tzIGdvb2QgdG8g
bWUNCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoN
Cj4gDQo+ICAjZGVmaW5lIFhFMkxQRF9ERV9DQVAJCQlfTU1JTygweDQxMTAwKQ0KPiAgI2RlZmlu
ZSAgIFhFMkxQRF9ERV9DQVBfM0RMVVRfTUFTSwlSRUdfR0VOTUFTSygzMSwgMzApDQo+IC0tDQo+
IDIuMzQuMQ0KDQo=

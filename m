Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BFECB0BA8
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8DE10E631;
	Tue,  9 Dec 2025 17:30:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yj9m0qCv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE6E10E60D;
 Tue,  9 Dec 2025 17:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765301436; x=1796837436;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=EkYEBLZCH+FvkLOKLsaKHd9Ys0/pB7V0x9kNqL+RE0o=;
 b=Yj9m0qCv7sCM6HrfeEss6UvIXDbUrL15x1q3c6ke2gX8+rN6Xab5uHJX
 QUyHDXpC//2JuIp1LU2N40Ut1Od26S/jVfV0R6SMC3yIe92iGIc5fhyyb
 mNxse6tj2DfCxoaQmyihHSS9mSxP6sG05qG2gjWY3ekZrmSuOSQikhAQz
 err7diO5CseL3N65cSJdyOISkOiqo2eS7uoO/T0B162nWnxM5PQrZAAyn
 X5YR+zVmmPssmigXp44GPV19bgrkK6BVvgknW5z1XZzfXY/++mpCMz4EJ
 WNcdmQCSOv73+VIVaKC/9g/zEePDtIftvTJPNLFEuXSA+1xJJuNtn9G8e g==;
X-CSE-ConnectionGUID: 5G37h9SyRt+eSjrk+YwfXw==
X-CSE-MsgGUID: +Z3IMsq8RLuMnhujvAoDyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67302853"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67302853"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:30:36 -0800
X-CSE-ConnectionGUID: +UCbxw5gSmmbYtsbIMCllA==
X-CSE-MsgGUID: 3/NMI3FqSHa7EqpCxhvDSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="196193819"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:30:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:30:35 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 09:30:35 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:30:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d6mqzLdT9IOXT93j6znKeqQea5sk/WrRnhX6oQvly016DtueUaz7qZsvFht6SeOfNnG6uUD30zazhW5r805tLUqhfy4bS4M5Y8FWoal15ZnaPnqZKG7433Qoaw2IKluCvVlmNsk1UeIiHwGPrXXZLJ3FCwW8AD+W4QaGQrju3PrfDL3YBrNFmqSaa9rEpglPUnjTbGzQKLzDTt7mBQ9suwD2toEoJFhN+uiCjfRUGjvrbOOOoXswtsVuf2dPu/hMTtYRfgJGM54qjpa0gSEpzfQhKoOhB3qAL2wrE/9HsTKFYa+41KIN6rlA3gyGfUgRWxlvImNKmrfPtcfx5rprvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EkYEBLZCH+FvkLOKLsaKHd9Ys0/pB7V0x9kNqL+RE0o=;
 b=KlVrtpc7UjDGrGdyr/0IuxNUr+Z1Rv3UnctBiL04llTsqFv/7vExJJoQupNRMIwdfARDNxcTg1ESGI36xWGoofJhD4aOUyWZl+8JesaTTl+82xfYd51XzZrTg1XOvFf8RBXatrxx4rpD/eIUKjNbxW1KSclN65Kl9palllAtYJuAW0k6VS88S7qSd0MQjxnvLtmuxqvAmCrzC/JBt06kxpXBcpohGMbLTh2i5OQlqck1/fNfs7EHkmUAHfnOx3kbFKd99QuPLk2j5VgHHWA7Z+mdBMmJaMZks5o3NJUkLoNc2ob0QI4Aj2vt78oHxeEhSp29rZgpskRKzAU6dUAROA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN6PR11MB8242.namprd11.prod.outlook.com (2603:10b6:208:474::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Tue, 9 Dec
 2025 17:30:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 17:30:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 43/50] drm/i915/dp: Use int for DSC slice count variables
Thread-Topic: [PATCH 43/50] drm/i915/dp: Use int for DSC slice count variables
Thread-Index: AQHcX8enZqN5VIQdR0GKk8O8djELfbUZo3UA
Date: Tue, 9 Dec 2025 17:30:31 +0000
Message-ID: <a9ac77f3cbf6bee8e393ca8ed7f83df6c5890718.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-44-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-44-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN6PR11MB8242:EE_
x-ms-office365-filtering-correlation-id: 759408bc-1dc3-4e90-5850-08de3748a706
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OGZ6YjZMVGpCWE5iTEdzRFhINFNXY25Qd0NMcVhRdVJzY1hhdkF2MHFxNWNm?=
 =?utf-8?B?ajJQdnptSUhFR3FXQVNoM2dsODRLQTQ2WDRMNVdZYVFaZUtlQXJCQ1VzUEdZ?=
 =?utf-8?B?ZXByU3FwcUhncTJYM21CWjd4QllrYlpVL2JVelQvV2xKQWNHcEVVaFZHQmJi?=
 =?utf-8?B?d1JoYlRuZG5hU0Fsb1ZMblRRbm95ZW1OVGZ2VXg3RktMUjF5c1RCWWVFamZw?=
 =?utf-8?B?elErdm5oRGoxV0ZXckFlZUpzUFBwaERjOWgrUmp2UlBOUmlkdzhITEZlRE1S?=
 =?utf-8?B?M3Y3QWFsZnFxWGhZT3FyUXphYnQzeHRKSkZlVXhQSkRQOEFnYTAyTjFMSnRz?=
 =?utf-8?B?V0tmOXdiWFU0V2JsdTg2c0VDYVhuVDJiZHBST28vTVpRbWpNNXRENkFuNWNW?=
 =?utf-8?B?S3BtWnJYS3J5dzNjZTNzcTlzTHM0OUhVRGNqSnliR3JJV1F2bGlRN0tHa2NF?=
 =?utf-8?B?dDVMOER6QmplcVo1QmM1ejZGV1hFandINlpFMFQ4MVZlZ0ZYKzRQZUVLdjJN?=
 =?utf-8?B?ZnNMMUtrQWxwT0FnUCtQWktlZElWZ3o5NWxia2dFVVBCUmhSL3V0eVdUbGRO?=
 =?utf-8?B?Mm5vaDVtRVQ1MW82QVVHdWNNeEdxZXIrNTQ1aDBRWFh1d29tcURIWEJoYnd3?=
 =?utf-8?B?MkFuNG5zL1UwZE5UVHh1K3N2UnRodFVWRXVZc2hLY0ZqQm9DUFhUcC9MYS9S?=
 =?utf-8?B?YWppRUtMVk1nNWpwMitiajI4enM1eU9xVHVTaGlDNFA4OUxkNy82UUQrc1pS?=
 =?utf-8?B?cGJ3ckVQR0s5UHNEemVESll3ZzNEbG5QRkRWT1d5UmswdUJvZWRMbndYKzZL?=
 =?utf-8?B?WGRML3VEa0huWENHdWsxWjhEM0tZQUh6Z1h4ZWlLR1hWcG9pTDFERU9DaG0w?=
 =?utf-8?B?WkFrcFBLSy9vdDdIOHBFb2R2TGN5bEJXdytiZDZkS0ZsZnBnOS9XVXdjTFBT?=
 =?utf-8?B?WHFoSldCWWR3VnVtcTlGdTFzTUpoM08vVVRBY3VzcEoxQ2F0cmVkQmRpSng3?=
 =?utf-8?B?cW0vVWdyT25ubVlkTjJ1L0tlKy9kTk1yTElXWTU0aXBUcks1TWRqR2h3WGRm?=
 =?utf-8?B?dG9SdS9SeXY0NE5RdHpOOEpIZjc1YlhVT2FmbXBXMkRUVlo0TFNzSU5xR2Vt?=
 =?utf-8?B?K1lsaE1hcllYb04xSlNlQjRlanJoSkgzL0luNkg1TkJMSjExVnFyVjZPWm81?=
 =?utf-8?B?RTdCV2Q5T1Z1eWhFQkhLd09KZXV4NWUvZi9uWU1JQk4wMkxzU2pXQndKMTVp?=
 =?utf-8?B?OTNKNXhVVHhNQXFIaDRFekVRT2YwNzlvUmpIbDRKL0VrNHBuaFdaSS9MWE1n?=
 =?utf-8?B?dGt1T1JTMHg4Q1I5SEVSVkhpd2VtN2EyRExxY0xwc2VqV2tjYVR6bWhMVkkx?=
 =?utf-8?B?djI4OEdHZHhzU2VWT1NlaTcyeE5vN29waXdvZUhvWWVXYlIrMng2UGI4TlMy?=
 =?utf-8?B?ZjJYcDlRU0tVcHdpOEZvY2hwdTB4SjBGdXFDNG12QWM4Z3E3M1ZINW4wc3o2?=
 =?utf-8?B?Q0o5R0h1dDRSaW9yWDU5ekxscW1zTi9GQUNkeW45UUE2U2VaUWE1WGg0QmtV?=
 =?utf-8?B?Q1JrdlRseFFxNjg5L2NyWndBSFFrcTFldkJqc080Uks4QlJ6Q05IdGZ2MHdJ?=
 =?utf-8?B?SjNTV1B6S1B2aGV2ME5DaWJlelcrYThSeFRRQnJVeVlZZHVGajlrZ0t4UDJH?=
 =?utf-8?B?OXNSV3NHZXNvdkVnemloUlFzeDVFd2ZuY2poc3dpYjNKNXV5RU41c1k2UDFF?=
 =?utf-8?B?TXh5Y2pZNkQ4dVRVcDdTeWQ4dVJ4UStIcmIvZUM5bGxrL29FeG95dklQcW1U?=
 =?utf-8?B?SEd0T1NranB2cGhOSHVKNzVTbUtKaFpCdGMvcVZxTkRwa3had093UTlBWUJM?=
 =?utf-8?B?MWdmYk9rekp1TzFVK1ZhY3UrMmZ4SHpYbUNGQVNmT0Y5Z0lwcmhlUFlLbjQr?=
 =?utf-8?B?dERuU0ViNDVyNHpaVjV5QW02MWx4M1grMkNmN3RpeGZJTkVJaTJRZG9vMFlq?=
 =?utf-8?B?Qy9adnVuaUZNMkVsT0FqRHJyQmN6WFpwbVJMZU9kRmFEbGM4TVRxRHlBYldp?=
 =?utf-8?Q?HOsfKu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXFKZ1BsWks3UEhRelcycXFaM3QrbTFOTVdGZHJveTZKTEU2TzFOczE4Sjcx?=
 =?utf-8?B?TFYyWXZ1Wk5nVUpYMW8zS2JmQnhraUlnOGEzdXI0Y0szVi96VGJKNkZUWHEz?=
 =?utf-8?B?S09IYWdVWXZMbWM5dHNyalBsT1BTbnJiNkhJeG14MkYwWm1IQzhpaUtrVUpP?=
 =?utf-8?B?bnRzSFJzaXZUYXVMMGZLTUdYT2RtazYvUFc4L25tNFJjOFVSaVNheHhQTWZT?=
 =?utf-8?B?STdMY1h5TTZuc1NQaHlKaFdENC9WMGozNG1saVZVcEJUWVY1OGpacnA3anQy?=
 =?utf-8?B?cDcxc2tlb01yYkM4a3RXR0huekorMXdWak5RdFZENGhQemp5VnFRUDBLYkhM?=
 =?utf-8?B?ZEJ4SkxYTUhtM1VhWnFwYTM5bXlReUZUL3NURUxIZlU2NUZlcUZSazRORHhN?=
 =?utf-8?B?amw5LzB1SytiSFFXZmVKT1EzR3cyWnRpZ2N5WFB2eVpQTnppSXlEOGowUFNQ?=
 =?utf-8?B?Q3ZxU0lod3U0Ulp4dVUxcktJVGFyWnNuNkNjSU1QQWJjekJ0NmpVM3AycmFz?=
 =?utf-8?B?WGlJQ2FHUlZrcUxiZC9BbEdGNHFnODFyM0hRbElJejI0K2dQMGhWRzlKd0tr?=
 =?utf-8?B?NlBwWjB2ZGJ6VHc4MWIwZ3IwM2lFMFQxem52ajVObTNFQ1NJM0hXVGdEZFVH?=
 =?utf-8?B?NDFvQ3AvNjVQVHVJZk9vRWk3NVY5cHM4dVRsS3NUZVhEY0thWGZQaG45cjdm?=
 =?utf-8?B?YWphWTdoUHlucnBvdnBERTdEMUtpb011STByaW9BQWgrL3FPaThsb3RyQVlw?=
 =?utf-8?B?TGVKRU50VEJSS1FCcjdMdnU1UE9nd2xIN0IzRWtCRVhFVzY4SktjNFR3R3BF?=
 =?utf-8?B?YVFRUUQzYXZpdjJFaEFUd25LdEZnZWkxS3VQNWc0VDV6anQvWkZGVTdVTWRO?=
 =?utf-8?B?YlN2VkJlbFhLclB2eG90SG1Ca0Y3ZjdUSDlZbEZlZ2k1bml5azZBendvaFJk?=
 =?utf-8?B?cm1acEpDZVpmVEdCV0lLZUpub01jcjF0eDI2Q2ZLblMyTHBOM0ZqTG5UeWNY?=
 =?utf-8?B?SWtmNlR1M2pZN0VOZlZwS0FuY1dwdHJOTVV2aFZZWUx6ZEZhaHdWSzI0ZFNy?=
 =?utf-8?B?UkZsV1VMSDJPa1dTdWw0bUs3a3gyU0gzRWhWTnNhOGRKckRLOWE3ajJFYXFY?=
 =?utf-8?B?dXVLRnJ0bUFqSE5RWlJCNlNSLzBJRHMzV0E4cDloVklMWXg5aGxkM09FVXh2?=
 =?utf-8?B?bFlwdVd1WE9Ba1p1VkhYMUNIdFRUSXdxbjNyazQ4RDN1SUJxTHRjamh3SThR?=
 =?utf-8?B?MElWWnBLVk4wM3E1TGxobjZDMi9iUCt2ZUxtbGdBQjNFa3ZLaEFzRTFIbmJl?=
 =?utf-8?B?dmpnY1VuRFM5WkNlNXpkK1AwMjZKelk1UUdNa3hlQUV1T3Yxb3RYZUlRRndZ?=
 =?utf-8?B?WVBqdkgxSXFGU0dqdFZFOHZhbjJoV0htRG1UcVB4Qm15YmhydjFVbHYxeTBz?=
 =?utf-8?B?OTJaSmp1aXYyV2JFbFBMVVNRZmZBUy9YWHI4RCtZZW1xUHl6eXZkTFNTQndm?=
 =?utf-8?B?Ry9BU2VkR0kyYXc5NVRTdTY1OWRFaHdwMW5BTFRsQTNNY0tJSWdtaXhqUnhX?=
 =?utf-8?B?LzBySXlDR3krKzlKVTFOczA3RU5RQWIwQVU3SzdFcXdrbFdtZjllSUFKK3FF?=
 =?utf-8?B?bGtJTTVNSjhwckRUQ1E3QXB3RDAwanFsQWgwaElCN0dSSGhkNUxieGlCM3E1?=
 =?utf-8?B?Rzc1MnNUcnhiWnFEM3VtMFVRQUFIcUc5Mm1ib1RUTHF3dDZXUS8rOEprTE1s?=
 =?utf-8?B?Vm1jTk9qbTFwcVlQVkNtVkN2ZVh4Qk9YYXlPUXpwNDBZc3U0cHJKbm5jNWh4?=
 =?utf-8?B?djhXSHdYcnhjdUhVUDR5TU81VEQ1cytPckVCbDB6WjBhZE9TZEt3QWlVQjEy?=
 =?utf-8?B?M09obEdDRHAwMXBNcm5SVm5kMWg1OHNZRmZILy81ZXlFU1p1djFpZXJkS2U3?=
 =?utf-8?B?Qm9Kc0R0Q01aYzBIVnZxZTcvRG1aOG1YL2RuN1FZWVRDLzladzFyTEZBc0FR?=
 =?utf-8?B?OWRpUFVrdkVGbjhNbWxtODdWdU1XeTNiME9xclJsTGpyUHR6TUFNeG9XU296?=
 =?utf-8?B?VWV3SGl5d1Z0TUV1eXVNdWYrTHFzMFlFbVEwdmxTdHVCLzRYSHBqM3JZVlJH?=
 =?utf-8?B?dzdPV0FrZ3BrODJ0b0ZUVVY3UG1MRUp3V1haR282VmJBdkl6c1hXbm1JN2N0?=
 =?utf-8?B?dU42WDVSN0xxbGgvdHJaT29DR3JlaVJ5b0d3SFppSWxvZGdVRjBiM2d0RGJI?=
 =?utf-8?B?SWk3N3laNTBJVDBxbngrYXY2QlBnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <618858EC3B1FED46936A7256589EEA1E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 759408bc-1dc3-4e90-5850-08de3748a706
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 17:30:31.1943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPMcL2Kwow1HTM+UN9lzNXyUjlMN4fBvp+BiK2NysbX2+rLsfNSKvfFHafgpmQHYEZcs2EAPt/vN+AcQhUTU8BFicB481MDkVo7jnaW1R3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8242
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZXJlIGlzIG5vIHJlYXNvbiB0byB1c2UgdGhlIG1vcmUgc3BlY2lmaWMgdTggdHlwZSBmb3Igc2xp
Y2UgY291bnQNCj4gdmFyaWFibGVzLCB1c2UgdGhlIG1vcmUgZ2VuZXJpYyBpbnQgdHlwZSBpbnN0
ZWFkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IHwgMTEgKysrKystLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiBpbmRleCA3OWI4N2JjMDQxYTc1Li4xZDlhMTMwYmQ0MDYwIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC05NjIsNyArOTYyLDcgQEAg
c3RhdGljIGludCBpbnRlbF9kcF9kc2NfbWluX3NsaWNlX2NvdW50KGNvbnN0DQo+IHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJCQkJCWludCBtb2RlX2Nsb2NrLCBpbnQN
Cj4gbW9kZV9oZGlzcGxheSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOw0KPiAtCXU4IG1pbl9zbGljZV9jb3Vu
dDsNCj4gKwlpbnQgbWluX3NsaWNlX2NvdW50Ow0KPiDCoAlpbnQgbWF4X3NsaWNlX3dpZHRoOw0K
PiDCoAlpbnQgdHBfcmdiX3l1djQ0NDsNCj4gwqAJaW50IHRwX3l1djQyMl80MjA7DQo+IEBAIC0x
MDA3LDcgKzEwMDcsNyBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19taW5fc2xpY2VfY291bnQo
Y29uc3QNCj4gc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiDCoAkgKiBzbGlj
ZSBhbmQgVkRTQyBlbmdpbmUsIHdoZW5ldmVyIHdlIGFwcHJvYWNoIGNsb3NlIGVub3VnaA0KPiB0
byBtYXggQ0RDTEsNCj4gwqAJICovDQo+IMKgCWlmIChtb2RlX2Nsb2NrID49ICgoZGlzcGxheS0+
Y2RjbGsubWF4X2NkY2xrX2ZyZXEgKiA4NSkgLw0KPiAxMDApKQ0KPiAtCQltaW5fc2xpY2VfY291
bnQgPSBtYXhfdCh1OCwgbWluX3NsaWNlX2NvdW50LCAyKTsNCj4gKwkJbWluX3NsaWNlX2NvdW50
ID0gbWF4KG1pbl9zbGljZV9jb3VudCwgMik7DQo+IMKgDQo+IMKgCW1heF9zbGljZV93aWR0aCA9
IGRybV9kcF9kc2Nfc2lua19tYXhfc2xpY2Vfd2lkdGgoY29ubmVjdG9yLQ0KPiA+ZHAuZHNjX2Rw
Y2QpOw0KPiDCoAlpZiAobWF4X3NsaWNlX3dpZHRoIDwgRFBfRFNDX01JTl9TTElDRV9XSURUSF9W
QUxVRSkgew0KPiBAQCAtMTAxNyw5ICsxMDE3LDggQEAgc3RhdGljIGludCBpbnRlbF9kcF9kc2Nf
bWluX3NsaWNlX2NvdW50KGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwNCj4gwqAJCXJldHVybiAwOw0KPiDCoAl9DQo+IMKgCS8qIEFsc28gdGFrZSBpbnRvIGFjY291
bnQgbWF4IHNsaWNlIHdpZHRoICovDQo+IC0JbWluX3NsaWNlX2NvdW50ID0gbWF4X3QodTgsIG1p
bl9zbGljZV9jb3VudCwNCj4gLQkJCQlESVZfUk9VTkRfVVAobW9kZV9oZGlzcGxheSwNCj4gLQkJ
CQkJwqDCoMKgwqAgbWF4X3NsaWNlX3dpZHRoKSk7DQo+ICsJbWluX3NsaWNlX2NvdW50ID0gbWF4
KG1pbl9zbGljZV9jb3VudCwNCj4gKwkJCcKgwqDCoMKgwqAgRElWX1JPVU5EX1VQKG1vZGVfaGRp
c3BsYXksDQo+IG1heF9zbGljZV93aWR0aCkpOw0KPiDCoA0KPiDCoAlyZXR1cm4gbWluX3NsaWNl
X2NvdW50Ow0KPiDCoH0NCj4gQEAgLTEwMzcsNyArMTAzNiw3IEBAIHU4IGludGVsX2RwX2RzY19n
ZXRfc2xpY2VfY291bnQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
LA0KPiDCoA0KPiDCoAkvKiBGaW5kIHRoZSBjbG9zZXN0IG1hdGNoIHRvIHRoZSB2YWxpZCBzbGlj
ZSBjb3VudCB2YWx1ZXMgKi8NCj4gwqAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUodmFsaWRf
ZHNjX3NsaWNlY291bnQpOyBpKyspIHsNCj4gLQkJdTggdGVzdF9zbGljZV9jb3VudCA9IHZhbGlk
X2RzY19zbGljZWNvdW50W2ldICoNCj4gbnVtX2pvaW5lZF9waXBlczsNCj4gKwkJaW50IHRlc3Rf
c2xpY2VfY291bnQgPSB2YWxpZF9kc2Nfc2xpY2Vjb3VudFtpXSAqDQo+IG51bV9qb2luZWRfcGlw
ZXM7DQo+IMKgDQo+IMKgCQkvKg0KPiDCoAkJICogMyBEU0MgU2xpY2VzIHBlciBwaXBlIG5lZWQg
MyBEU0MgZW5naW5lcywgd2hpY2gNCj4gaXMgc3VwcG9ydGVkIG9ubHkNCg0K

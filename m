Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6DBA28D87
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D044310E7BF;
	Wed,  5 Feb 2025 14:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7TWexR8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0194110E1C8;
 Wed,  5 Feb 2025 14:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738764149; x=1770300149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tcLlTYIwlnWsMrWSk6zE9zbBF+kDlh6jbUB6quKOPGc=;
 b=A7TWexR8WMwX8kNCvAsc97MykJP/5oYUlu9R/sRVkhzzl5Oi5xO6yzS3
 vpctCXAD1wGxtDFPp1HZ513EXS4JfTEsSxkqRtFOuqO54oI4kElv/+1H6
 Iw/utDVWxKZtITkQp9HxqCD+ki02CyFrZO93BQnUB244zQ5kPP9XMPpnj
 TDVF8iBqQDrHbfXo2enNvghtHs+d1XtS+DxUu6kXq7tUkpKzenaQIdrTx
 oo4BrB+ouvd6e5CMoTAsDeJL15Ju7kf264xPjzTJUifpm5l37ziyn8vXG
 5yOz9rqt4eFO1O0plYHU+f4PV6d2zlYpE8XTDrUq3UrTGWvj/0dkFkALa Q==;
X-CSE-ConnectionGUID: a5bN4W6HQRywfLdWOZx2hQ==
X-CSE-MsgGUID: ioCvyEhOQpOSFA133BKosQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39355488"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39355488"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:02:29 -0800
X-CSE-ConnectionGUID: kCRHxgUJTpGfZsn0Xkd9xQ==
X-CSE-MsgGUID: SPxrNiKwTBSS0HHRsFVyuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111087596"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 06:02:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 06:02:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 06:02:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 06:02:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xJwYUTljOtnQV/vvIU91eRIkE9tAC9LJg6FiJ74CYX0foOGIIk0it2FJssvibufZZW0MFy4N8+VY/zVr1dR6L774Nuug18tCjk9FBGL+yMI4xZKjSq0a19Awt+OqmoUEEi4S/ImlaMFOwSKjrjlqEn6fIZmPjb2bJkGatNt/p6uP0qyvpkABVasDOSLjzSf6nlCjusmFTfvweJ0TwBlCEHBPrhOPIEsWISlHN4H7P2TBz6GrwEjrNU3bB2GsY86qN5K/ZW7E6OsGyPF9ov2aPugpVgifgl/2eyUWI4wcoSUL14CUjadg/5n3rs5dGeqVabUQEx+nQ9E6OacMeB7D1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcLlTYIwlnWsMrWSk6zE9zbBF+kDlh6jbUB6quKOPGc=;
 b=tXAgfr43S6BgibsAmHcR5Kv4DZG1e3mNJgpco3k9DtoRpn4V2WVEKVwYY8z4UzcGxSzQ8Tg9lEteTDzWwaNhgjILRzx+o52NjxTUfXdVJD3weq0IRPRyvevbyRpEg6A72CcyvanXAZI1TbXywOh6J5tZnsQoVvA/LBNQ4MPus6oY1XFuJ9wQTgX66cIh/5X1KayN56ojOF+aDHCEX6VBfrsdMwxwCD9gYl56SECD41qLCg/gjwIP8cjEbh9eDUGE0lYpeZhAPCXQSAR1oJLzImlKZ/Fp0xwZoZVPVPf2tseEK6yif9HFKdYMKaewkcaRBgX+FSVxRzXEnMCQ8qBVMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SN7PR11MB6994.namprd11.prod.outlook.com (2603:10b6:806:2ad::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Wed, 5 Feb
 2025 14:02:18 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 14:02:18 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvbHNw?=
 =?utf-8?Q?con:_interface_cleanups_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9sc3Bjb246?=
 =?utf-8?Q?_interface_cleanups_(rev2)?=
Thread-Index: AQHbd6ipEnRFm4VpEU218bbdTKh0urM4voZQ
Date: Wed, 5 Feb 2025 14:02:18 +0000
Message-ID: <CH0PR11MB5491F36D775F01114AF87F14EFF72@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <173869502054.1017872.15228791601402384595@b555e5b46a47>
 <8734gs6bam.fsf@intel.com>
In-Reply-To: <8734gs6bam.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SN7PR11MB6994:EE_
x-ms-office365-filtering-correlation-id: 10910912-0e6f-4b19-89d9-08dd45edb3d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018|7053199007|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?ekdVa1ArK2V4L2M5eUlkZTRXc1BlUkp0VGpnaGJkVXhPaXhoR1lwZHM0UCtu?=
 =?utf-8?B?UlRna2crOGszd1RSczI3ZmRQWXlxcTlaZ1QyNWlSTHRFc1FlLytGRmFiNE1x?=
 =?utf-8?B?M0drOVNNblBFaHk0SkJ0Znh5enpRRDRGVHkyWnlvZFE4cEp0UzA5RFprWVNE?=
 =?utf-8?B?aEMvb3grcS9ackcxNGl3aFByWklMZHFoaTd5UDNTaWNSaUxvNElZYWRNTlJC?=
 =?utf-8?B?Vk90SmRyM1RUK3VoMXYrYkxyczNHdWI5elR6d3RQSUJWQkRsMzdJdXBWUjRk?=
 =?utf-8?B?ZDgySHNtb3RuaTNKTy82YmN2U3pWd3VDUjd0RUIzRU5GWWZabGtUMEx1dGRy?=
 =?utf-8?B?U3VUUXhlREJYM3o1cGdSeEdIZlJEQWFBSlViR3V5amVZb1ZtMk82RTFFRHFL?=
 =?utf-8?B?QStML1ZOZTg5Tnd1c25wWmt0OFlEWE5VUEVmYW1vSXVpWWFOdTR4WFI1MzUv?=
 =?utf-8?B?amVWWTlRTXZPdEMyQlhaT0xYelRheWVpd0dTSmhKYzZaOEx5NVowVmdmeVVC?=
 =?utf-8?B?L1ZER0hvRE51TkVsMTd3cnhXMEJmS25kdjFkQ3FOZFk1UFpoek5nM0pQcFUy?=
 =?utf-8?B?QlN5NC9uQnJDZDJPSU13Wno1My9maG5TcjhUR1dvaWNncUZybmxCeGR2VlJq?=
 =?utf-8?B?c1FkZkFscXJvd25Pa0R0YzFob01MSmZoRFB5QUtMWFJ2b2RWOUppQkgvaExY?=
 =?utf-8?B?ZmVrVlU1eUxZekFLNitzOHM0RFZRc1V4SXFtSE4vVjhScTg3WnVYWkdjcVpz?=
 =?utf-8?B?azl1RGE5Rm4wSG9nVlUrU3VpeHQxOU9WalZXTVp3U202YWNnZDRsRjA2azdO?=
 =?utf-8?B?bGk2alZ2aTl4cWhqVXVkQzJSclUvdjZmdERnbmI3M3JCN1JldjRVSjFCMHRa?=
 =?utf-8?B?TEw0Mms0Wno2TFYwZURGVHpPNjV6YmVQRlNHNjFqMjNJeVdKTmttemZIcCtj?=
 =?utf-8?B?Nm8rOWJQeG1VcCtBVXgxeGhWdURrK1NxNjVITmhST2wrNVR4TVFFRGc2enMy?=
 =?utf-8?B?NHVCd2tEWGZybzR3cDhVdXkwWHhiU1ZuTWsvUU8wYmZzTkRwbGhYSk5DMlQy?=
 =?utf-8?B?bTNMTzFsaFBBUkIyb3ZzU2EvcklwUHAxTWdUazg1Z2VJVDlDRGxTaVpmWXRN?=
 =?utf-8?B?QVgzdFFWVWlTeGlNOUVGWHY3b1p3OTZkSHl2TXV3OEJTMm5ITEtKVmZpVEF0?=
 =?utf-8?B?WXZCV0RtanJHSVBDc1FjOXJUenRBbFpUdjFLSHlkbVAyR2sxZC9EdUM1VUhQ?=
 =?utf-8?B?U1FLdlY0OWlmV2tHeXVlK3A2ZHZhcFk2N2lvTE81eHM3NURQbEtyT2JMcnND?=
 =?utf-8?B?ZW9KZURCYW04RlVGTnI4cmxKODZ6NXYxYlY3eEowR0pQWTg2aFpNUTVEYjhX?=
 =?utf-8?B?d2hzU1ZMWGlSUVQxZ25GZjF6L1lSMHM0K3JnZklIMEE2VDVJZC81dldkY1lC?=
 =?utf-8?B?ei9BU2Y0ak1WcUd5anl1S0dmZXdyK1dXc2NFUy9LejBSRERxWnA2eEErbGJw?=
 =?utf-8?B?YnBKczNTSHVTNmtLYkZqeVdmRFdVZHYxeEFTRjhxRXNKSU8vVWk2aXRrTnUv?=
 =?utf-8?B?Rldmc1hnbytnbnVMRWgyMjYzT2hmdWZHbytTbnppcG9wSWFuMDhGODJjdjAy?=
 =?utf-8?B?Q2t0Z1VSTEpBczFOVENiTEFMVENCbjByWDlycndGUTdjd25JdzFQbHpPZVZZ?=
 =?utf-8?B?T2d0OFR4czBPKzdSZUxzTDd3aVJ0bzJMcXlESmd6SllRMmRRZnYzWWRTV2xX?=
 =?utf-8?B?SWU1N0k1MGN1MVNUd0tyVTRNUDhFM1RjSzJadWt5cWJxTng5Z3dFTXd0RzV4?=
 =?utf-8?B?UjdEZmc4dzlFYVBlcnlXeFJGeUlraWs2UnBpU0ZFSlA3akNSVldialhLTXdz?=
 =?utf-8?B?L3RkVEVqQmFvZ3N0S3BPM3VGeG9KeWJoUDNIZFNkdHlNTGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bG0vZDRrQXFld2NRYklmVlRNcjRJb1MrOHUzNGtjV3Rxd2RPeHVLaHprQnZE?=
 =?utf-8?B?ZWhWM3ZDb215L2t5WWRHWjVlVlhNNWNDZDlKM2RMZmpDVnpaZUtSQytlR3ZN?=
 =?utf-8?B?UDlIc3dDcHlaRTFrbmJyWEtWRFhiREJrZlZ5eWlNYkxzQkFCZUN6YzJXSXZ6?=
 =?utf-8?B?UVZNbUFEbFdFNEpwMFZjK251Wkg4ekZlVURjL245SW40SDM0aGs2UVFOR2hj?=
 =?utf-8?B?U3IyR2VZaVkyZUlSOU56ZTVhc25RejNiQUJkUHllSkZkVkpUYS9MVTU2blVP?=
 =?utf-8?B?NDNXODNlU0RQc2Vhb05EZHZBbjVUSkxFaGIrVzVpbjJWMUpLSVF6dGZGUFJn?=
 =?utf-8?B?alpRbUhxQ0wwK09BTjUyRndEclQwSnZCaThmUTNOSFpOTzJXNWovMDJUamJ3?=
 =?utf-8?B?Tkd5Uyt3SUpBdnhmNU12dEI0aWpBN3libFp1UlovV2JFRnNpRXEyRFNFVXE5?=
 =?utf-8?B?K2t2QUliRDZEY081NXFsTE16bGlaM21FS1plTkV2MTZMeVQxZzRnU2tZL1JM?=
 =?utf-8?B?WG5GOEoyczY2Y2NVaXd1MU8rMS9QazV0QWUwZmw5NkJ1VGg4N3ArMnVQbFRQ?=
 =?utf-8?B?bWpNVGRTdUlvbzNlYzdGZVNEVmJxVFloU2tZZVNqeWltY3dEV3pPRjZ0Njdi?=
 =?utf-8?B?bWtleGpxbzRybzdaQkRiUldPOWdjdWIzblJNNUxGa2lPbFpFTnkxWVRxQ21W?=
 =?utf-8?B?ZTZKKzlQd1hYcVFFQkZaL3RESStQN2J4TTBsb1IyOU5FeW1MT2VVamtISFUx?=
 =?utf-8?B?cTdUR0hSOW5xa09zd2x3NEpnVjV1OWZrR0JxcnZxZ1JaNHM5eG9JYmNkY09s?=
 =?utf-8?B?d3NUV1oyWlArVHlYZkM3eXNvWExaWVFzZEp3SzF4VmJCY0thNHh3YnBzUThW?=
 =?utf-8?B?bnJBMytURnMyZllRUUI4RWJ6c0FrV2VWQUM4NEFDN2RWRDZxSGxTTU5INUNM?=
 =?utf-8?B?Zmx4d1YrNVhidXRtZHQvSjA2d1U0N0UydEFEU0JyalZMUGkwRnJWeW43VjVW?=
 =?utf-8?B?RUNjR0MydnJaTHVuZDZWM2QvUlljTnJzSS9hQVNqdUJkQVIyUWJ2SFpQck1k?=
 =?utf-8?B?M2ZGcmFJNDZFTXlldktPMWdHMW1FVFhXb00xOFpURmg3cC9WQjBkRy9RRGZR?=
 =?utf-8?B?K2UrclhlNks5OWRYVmlVQldLMmcwd1RFOE5LZGlYcjloVmNmYmc4THpwWGd2?=
 =?utf-8?B?Y0ZPWms5VWlDcFhjelZVRmtBYmtNc2l1SnNMYnI1R09JQWxWM0tXUHpTVzIr?=
 =?utf-8?B?SC9rM0xONVdGOGNmblptdW94UUlzZlc4dU1Hb09iS2pIemRPWHE4eERwNHdo?=
 =?utf-8?B?S1hybVVWRlJSdmV6Rm0wV3lvYUhVZXNNSjBYWEMxbWJKbXh6b0RBOHRCSktQ?=
 =?utf-8?B?S2dBRGo1cWtOLzYzOVZmcDZEK0xLQ1ZDcmtob3dLRkkvQ0tNNmk5bCtuRnVW?=
 =?utf-8?B?WE1pWXVCZ0lVc3E2bUdpcXhqQkdhR1RBVG9WU1Jobms4RHRaNkZ6VTAvK1Mz?=
 =?utf-8?B?OTltdHJsV1Eya0ptTWF1VjhWYXF6STE5VVlzWHIxSzVEVDVlVHRUdkVMcm9x?=
 =?utf-8?B?L2dPQmNLZE1BSEFLRUQ3YlJWNVVHUEo5eXRSY1VScmI4MnVIWXdTVnVTZXFM?=
 =?utf-8?B?RVlDTnlwREVLQldmTkR6MHY4dWY3TmNtT3NORzFZK2t0VDlCdklSb3V2TllI?=
 =?utf-8?B?aTBMd29pQTUwSjJDZTgyanI0UzlKQ2pZamo1ZWZPVWtUZkh0QmVxcDRCRG1O?=
 =?utf-8?B?WEVQWWhTREowL250L0gwaEFrYUE2bXl2a1lITGYvaWZmeXdvWGkyRkhMU083?=
 =?utf-8?B?M0pzRkVTMGY1eDhVbUp0VjNUR3JwZVlSY3lmcDE3UGNKa2JFOVJTQ3NlbkxI?=
 =?utf-8?B?QTlBeGt5Wm9SUk9UQjMvOERhRC9hbDdMaEJNNmtpc1ZXWCsrMVAwUDl1THlM?=
 =?utf-8?B?RWQwdmdDTGt5b0NYR2Vtdzl5NlVPZ0VzdmpBRVMxTFluajFHb0JGQUlON3Rv?=
 =?utf-8?B?dGw2ZlFxbEhkN0FSclM4U1ZOQlhPRUdGVjFlcUhPUHhYNExRdEtIUzFpeDln?=
 =?utf-8?B?RjJ4NGNPUUF6UnFMdkxUdndVT0MxanpKbVlBRXFPV1lyZENEaDJSc3dDWUJr?=
 =?utf-8?B?SS9sL1UvYXRVbUlmTGttUjl0YlNkVWJ3NFoxUHRPNmFSQlA3MWdmdmdveE1E?=
 =?utf-8?Q?/MUOoPcDu3AWjWEaaadl0xFx+N6qH01Vd+3hlwgC+YJh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10910912-0e6f-4b19-89d9-08dd45edb3d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 14:02:18.2970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cwH+F0fF6C0yfEfHsKcr1sPLspeFAB8fYG6g5Wrtn8HadVtDDhuFMpYrgOcp5XHIa3ufsLz9dJ69IolA+P34i+/4T9VY82yoA5UxdQ5rumE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6994
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

SGksICAgIA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDIwNTkvICAtIFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5C
QVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxhDQpTZW50OiAwNSBG
ZWJydWFyeSAyMDI1IDE0OjAzDQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyX
IGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9sc3Bjb246IGludGVyZmFjZSBjbGVh
bnVwcyAocmV2MikNCg0KT24gVHVlLCAwNCBGZWIgMjAyNSwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtA
ZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4gd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+
DQo+IFNlcmllczogZHJtL2k5MTUvbHNwY29uOiBpbnRlcmZhY2UgY2xlYW51cHMgKHJldjIpDQo+
IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDIwNTkv
DQo+IFN0YXRlIDogZmFpbHVyZQ0KPg0KPiA9PSBTdW1tYXJ5ID09DQo+DQo+IENJIEJ1ZyBMb2cg
LSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE2MDYzIC0+IFBhdGNod29ya18xNDIwNTl2MiANCj4gPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPg0KPiBT
dW1tYXJ5DQo+IC0tLS0tLS0NCj4NCj4gICAqKkZBSUxVUkUqKg0KPg0KPiAgIFNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDIwNTl2MiBhYnNvbHV0ZWx5IG5l
ZWQgdG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsg
dGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMN
Cj4gICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDIwNTl2MiwgcGxlYXNlIG5vdGlmeSB5b3Vy
IGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cg
dGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCBy
ZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjA1OXYy
L2luZGV4Lmh0bWwNCj4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDMgLT4gNDIpDQo+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgIE1pc3NpbmcgICAgKDEpOiBmaS1zbmIt
MjUyMG0gDQo+DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
Pg0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MjA1OXYyOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMj
DQo+DQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPg0KPiAgICogaWd0QGk5MTVf
cG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+ICAgICAtIGJhdC1hZGxzLTY6ICAgICAgICAgW1BBU1Nd
WzFdIC0+IFtGQUlMXVsyXQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzE2MDYzL2JhdC1hZGxzLTYvaWd0QGk5MTVfcG1fcnBtQG1vZHVs
ZS1yZWxvYWQuaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwNTl2Mi9iYXQtYWRscy02DQo+IC9pZ3RAaTkxNV9w
bV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQoNClBsZWFzZSByZS1yZXBvcnQuDQoNCj4NCj4gICAN
Cj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSBjaGFu
Z2VzIGZvdW5kIGluIFBhdGNod29ya18xNDIwNTl2MiB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1
ZXM6DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4NCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMN
Cj4NCj4gICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQ6DQo+ICAgICAtIGJhdC10d2wtMTog
ICAgICAgICAgW1BBU1NdWzNdIC0+IFtETUVTRy1XQVJOXVs0XSAoW2k5MTUjMTk4Ml0pDQo+ICAg
IFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYw
NjMvYmF0LXR3bC0xL2lndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0KPiAgICBbNF06IA0K
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIw
NTl2Mi9iYXQtdHdsLTEvDQo+IGlndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0KPg0KPiAg
ICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LXR3bC0yOiAgICAgICAgICBO
T1RSVU4gLT4gW0FCT1JUXVs1XSAoW2k5MTUjMTI0MzVdIC8gW2k5MTUjMTMzOTldKQ0KPiAgICBb
NV06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNDIwNTl2Mi9iYXQtdHdsLTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPg0K
PiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXNldDoNCj4gICAgIC0gYmF0LXR3bC0yOiAg
ICAgICAgICBOT1RSVU4gLT4gW0FCT1JUXVs2XSAoW2k5MTUjMTMzOTldKQ0KPiAgICBbNl06IA0K
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIw
NTl2Mi9iYXQtdHdsLTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVzZXQuaHRtbA0KPg0K
PiAgICogaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVu
Y2U6DQo+ICAgICAtIGJhdC1kZzItMTE6ICAgICAgICAgW1BBU1NdWzddIC0+IFtTS0lQXVs4XSAo
W2k5MTUjOTE5N10pICszIG90aGVyIHRlc3RzIHNraXANCj4gICAgWzddOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjA2My9iYXQtZGcyLTExL2lndEBr
bXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWwNCj4g
ICAgWzhdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQyMDU5djIvYmF0LWRnMi0xMQ0KPiAvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25i
bG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPg0KPiAgIA0KPiAjIyMjIFBvc3NpYmxl
IGZpeGVzICMjIyMNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHM6
DQo+ICAgICAtIHtiYXQtbXRscC05fTogICAgICAgW0RNRVNHLUZBSUxdWzldIChbaTkxNSMxMjA2
MV0pIC0+IFtQQVNTXVsxMF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFs5XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYwNjMvYmF0LW10bHAtOS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzEwXTogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MjA1OXYy
L2JhdC1tdGxwLTkNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0K
Pg0KPiAgIA0KPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVh
bnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZw0KPiAgICAgICAgICAgdGhlIHN0YXR1cyBv
ZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+DQo+ICAg
W2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTI0MzVdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyNDM1DQo+ICAgW2k5MTUjMTMz
OTldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNz
dWVzLzEzMzk5DQo+ICAgW2k5MTUjMTk4Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTk4Mg0KPiAgIFtpOTE1IzkxOTddOiANCj4gaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy85MTk3
DQo+DQo+DQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPg0KPiAgICogTGludXg6
IENJX0RSTV8xNjA2MyAtPiBQYXRjaHdvcmtfMTQyMDU5djINCj4NCj4gICBDSS0yMDE5MDUyOTog
MjAxOTA1MjkNCj4gICBDSV9EUk1fMTYwNjM6IDM0ZjExM2U5ZmVmNTQ2MTM0ZTQwMmU3NjU3ZmM0
N2U5MmZiYTU5ZGMgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgN
Cj4gICBJR1RfODIyMzogY2NmZTA0Mjc4N2IwODJjMDY0MDJmZjlhZjI1N2Y4MzM4YjhlZGQ1ZSBA
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4g
ICBQYXRjaHdvcmtfMTQyMDU5djI6IDM0ZjExM2U5ZmVmNTQ2MTM0ZTQwMmU3NjU3ZmM0N2U5MmZi
YTU5ZGMgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+
DQo+ID09IExvZ3MgPT0NCj4NCj4gRm9yIG1vcmUgZGV0YWlscyBzZWU6IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDIwNTl2Mi9pbmRleC5o
dG1sDQoNCi0tDQpKYW5pIE5pa3VsYSwgSW50ZWwNCg==

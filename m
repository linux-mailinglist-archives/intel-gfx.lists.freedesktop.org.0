Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0218FA7F727
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 09:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7798210E5FE;
	Tue,  8 Apr 2025 07:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMqf2DWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8B010E5FE;
 Tue,  8 Apr 2025 07:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744099075; x=1775635075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JL9DDhtjy+cIGsvan9uSCP51vxyxGVLXmlsYZT4BRmQ=;
 b=GMqf2DWx+Dte/DiAcZjzRJhAMYGw+rPmLxqWuNBUzatbMSgAyP+xg3nZ
 B/ak+hHTgoURifQAxiymtvXcdbLDvWlDZftTyhGRYCQ0rVTqU8Vx5T6Rz
 Mnk0sc3LbK7F2HmdOar9D+Fb56F6RKQUIIRmSKiX8Ian66JJdVDw9JrBb
 4fImFD0+2JqmREQxAKaD4cMQ3YFXd1Mzsisw9zfyntCCavwo5WXPb07dY
 T7DwwVexnpHp8eH3Uf42Z1pA55IsnA7o+7nq7t6ED11iiDV6V9yEOEGLx
 7eZrsmr8uGQEjmTHJNYJmYyp8xTDi+n9HkHWgtXFhBViCSG/l77Ac41fM A==;
X-CSE-ConnectionGUID: CmpuDulySreVF+7fODv/xg==
X-CSE-MsgGUID: qvpNF39QQN+rYfrawsDNsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45681359"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45681359"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:57:55 -0700
X-CSE-ConnectionGUID: d3Ytdcw+TTOzR03CYG5Q7A==
X-CSE-MsgGUID: Nw8BOCrCRNysoxhcg9+Zyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="132328430"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 00:57:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 00:57:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 00:57:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 00:57:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XJU79zSxArc/pUSUxMLxL6xlXM1I5NGQhhaH6UyYZ9s3TDgy+tEkj5bK/8CFMoQcBDf4q/HF8L+Zdi9uqEv0SCa6WzcUsVkkD/Hw3lBQDSzmYLFd3Zc+GRCq3T7WuyIBDPNw91IWvOAcdyBlF8BBnnoFPUdRwdrIFOEPHrvNG566wiPr4jJ76JUbgxgR2btoBksaDNpszQYzP705DQXN1k41cifUiMyEA5dvJpSvNcZMB3364gr3Ar1CWPboPcinMUMiM3pTbc2jF/CrWVvhgGjkXgfW977cTSYQfYEXHMAC1TshHbgKGEiaVIE7LAQKswW/pHWDncJ1mOuSSjNt9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JL9DDhtjy+cIGsvan9uSCP51vxyxGVLXmlsYZT4BRmQ=;
 b=fPidBtoNwMi7F7oRUNsvyF4WtfSGPlLQvD9qam+duW966PggzElqtmt2c0zR09hNIDlYAifgghX9VQpqH62d+ayEB9sKygGOMTd4SHULqyZxfwg7Fsm4Db9K05omrvWGhsl2DhpttrgHgEctfpcHloiv9hKvY5HMPLGQIUHP1aAwK6kaN6vI4j8j/ZA8kT6N9FlxhFPZHBSMF5mOc3NQ9St2SPhZNQJV5y+7g3vAif1ieB1SXh0PRiL5h08qd8JtxVkmmbz9WibNrTf9C5hXoG5M159e9PDyGhys+tgnA7tbNCUoYwFSqX0Tvlo3zfWtMhpgHyhFBp74kp4b4cXBxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Tue, 8 Apr
 2025 07:57:38 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8606.029; Tue, 8 Apr 2025
 07:57:38 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Topic: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Index: AQHbpH30Bf2oKYpgQUWjLK9t14GUaLOZbKGAgAAA4TA=
Date: Tue, 8 Apr 2025 07:57:38 +0000
Message-ID: <BL1PR11MB5979FF3F81282AF76FD43E4BF9B52@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-3-animesh.manna@intel.com>
 <f779f49fd81dca8d5dda42d01f23ea74760f937e.camel@intel.com>
In-Reply-To: <f779f49fd81dca8d5dda42d01f23ea74760f937e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|BL3PR11MB6483:EE_
x-ms-office365-filtering-correlation-id: 8f7d9ac5-ec6a-4f48-546e-08dd7673083a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NXZHR2dxVXpXNXlvbWpLR0k0MzZxZHFNVStZLzVMTndtUzREK2N5VVlzVk1T?=
 =?utf-8?B?YUFpbU1MSk56eVdrL3lIL2ROZzhydFFQRnZmUDhMN0hneVNnYnRNQXVrSDND?=
 =?utf-8?B?QWxiNFpJVTBOTnBySjB0d3ZCKzBBMVczck5sQXNKZzk3ZTR6Y2x1ZkNQQkhl?=
 =?utf-8?B?NTVDd0hJVHAybEdja2gxc2RyUnM3MGVCZ3NzeWVpWHh0THF1YU56Zkl4NlVq?=
 =?utf-8?B?Ykh0dlRSZXhTRWRlNFpQeHJHS2FMZkpoWitvdzVJZUpOa3BzNldGMVFrbmRP?=
 =?utf-8?B?N1lMYmNqRzNNT1ZIOXZKUEh4QnAwWDAzMGN1VXl2VitvWmJzanhQMFZ5UnJH?=
 =?utf-8?B?WWUwRFFCSzJqcFZOSUhwbUpvQk4wczFYUVo1azJ2WFBnNnpPeUxxdElwWkli?=
 =?utf-8?B?dm14bzczb2paNGFRdDhZN0dEanVmQ0tsbmZVU2ZlSFIvWFNNNmE3N3RXTWUv?=
 =?utf-8?B?WFNSUHF4NnRpQ0lJY3dNVmZhVlBxUHdIaTh1Zm9ETnEvVEc4enBKbGQ3QVIr?=
 =?utf-8?B?UVNFMWdQMnYyTldneG5yeTZKVW9iZERKYTdXVnd3c2RnSVVDTjZIeE1PQko5?=
 =?utf-8?B?enJkcFh1SmRnOTFSeDR4MVFhMUZNdVcxMGlENUtmMWtWWTB3Znp3TlNUaUJQ?=
 =?utf-8?B?TWpUWGNTMUYzVGN6M3pENUlKYjRpeHdHaU5aalc4MWFOVHJ6OGpZR21PTWFC?=
 =?utf-8?B?Z011RnJzUkxWUFZqR2FhbWtlWTdZNWpPenN1TUt3VG1EMWFvV1BQczc2MGxI?=
 =?utf-8?B?Y1UzM3NDaGhXVVV0SW1XT0tsTDlFS3hNUHpIcnlMa0V2YXMxQW1yQ052OWpT?=
 =?utf-8?B?S1lGRENqc3pXaUwxSlRvc2szTlVkZGtWcnJ0cjB5VVNTZlVVenpjM3R6UUQ5?=
 =?utf-8?B?d09QSmNhREs3VVpnT1NzVDV3WXhlTms5bFBha2NuQ0xxbzhuWmllakJNUEJP?=
 =?utf-8?B?R1ZGdCtaVkpqK2hMVko3Vk1TME5jbnFmQmt5U2tVc1NIRndnVFdxMmIrUGgw?=
 =?utf-8?B?b25xcmpHOFQ0TkFGVUp4Yjl4SU1BM0ZaaDBCRXZ1WWZleHh4dnRuQjRmYlhz?=
 =?utf-8?B?M2gycHAwY2RSMThtWVEzQWNHQmVTbS9WZnM2Z1Noa2p3amh3RmhSS1ZHV3Bo?=
 =?utf-8?B?Qjg4TytRY0p1UWZkVEYwVGR1enVPRUs2OEQyNXRoa2tqckVUK1YzV3VZeGd5?=
 =?utf-8?B?YkF2d1ZTbXRXbEVycjNpN25qbHF1V0N6cHlkZWg0c0hpNjJCVjBxTmJXRm16?=
 =?utf-8?B?WE96ZzZYdlFCQVdpakdIZGFwQ05qbGZCZVRHUmxqVmxlMUlzeFc1akNCNEJu?=
 =?utf-8?B?Mk1uUTgxaTEwZDhZUm9XYWIvckU4ZlZjS2ZUOEZlWVpHdjFRYkQ0SlJ1R285?=
 =?utf-8?B?QXMwR2cvTXlFdUpaMFIrZGRoTzk5cTdwb3dsVWZYNGd3NTYwZlZaQWpTbmpm?=
 =?utf-8?B?YXZ2Zk1Ua1Z3QTA3UWM0WGtVZ2dLVFNBc0pXY20zNXhSdG15NnhPWUZEWHNs?=
 =?utf-8?B?bDdiRjh4VVNxZjl2ZS8yR2tQS1JFQXZRcXlJYWsraGk4ZGtZWFVtanoyL3FD?=
 =?utf-8?B?RHMvTnR1S0trb1VHWGUxbFZQcTB5WE5xWmlyMUdOTEZHNmxpOFlhL01vTVJD?=
 =?utf-8?B?bmNVdW4yaWV2bHhlVGdIeDZwZzFUdCt2UW1QSWcrcHdzTEJlT2pCaUc2TXVo?=
 =?utf-8?B?ZW9Qa2JuaDlDNEhobVczb3hMVG5Pbmhya3hncEdmMGhsQlpiTzZZNnpVZWhX?=
 =?utf-8?B?cjJrc3d6ZFVNQWxHSGIwMjlDdlVVRktGRmcvT0ptalFEMTBac0lYdHJMcWVV?=
 =?utf-8?B?ZSs1WnF5bzFXRTV3bG9xRUI0c0J1bkp5U0taa2ZKKzVpbEdtZDVEb2QxeXR0?=
 =?utf-8?B?UkRPcFdKOTdTZGFJaGtuam51Vk0vTmdpWUd2UFhvZW5QdGpheVEveG5OeFZN?=
 =?utf-8?Q?axgqxFmyDa0mBHlL6FApQU+bydpoChtc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N28yY0p5c1FpK0pqa00wc3hPMitYa1BGTUdYU2tJYkpucVlRakNEMmJDenVy?=
 =?utf-8?B?RE9yWFNWak5sdURXV0tOZjdyLzlvNmpleHJ0V0ZTbWxDVkNjSmNUT2RPYkRS?=
 =?utf-8?B?MUpKVUR0M3VnWGs3MVI4MmxveWo3Q05mWjRBVDE0bWNDUkpZL2FLbXBRMmFT?=
 =?utf-8?B?M05aQjBZM1p1cjFsQjNhSnVUalNvcVRpaWRxRGsxOHBKVzU4djhLQUhpb2s0?=
 =?utf-8?B?ZldzOG1TTHhDUmpxTkNuWGFGRHBGUWZVeVpOYi94Ukk3YmNzb1ZvZDdoVGNX?=
 =?utf-8?B?Z0MweDdBc0Zmb2ltaW1xSi9oREdHbDVRNzU3QmJSVTlIK1doWGIwL2pvYnpw?=
 =?utf-8?B?bmdXRzZnRnVlVVJjOVJBaVRXclE2bGJkV0tDbGRnUGpWY1V6R1Y2bWRpSEFv?=
 =?utf-8?B?YTdCcTVERW5GaXVNZXlaUUZ3UmFzV3NZZFFxYXhCM3ZYMmVwWnR6emxLdDNL?=
 =?utf-8?B?eWNZK1o1WmpoZ2pWRExHdkJ5U3N5d0t6c2poWjNWNmJ3R284aWFobDNtenlK?=
 =?utf-8?B?d2UrT3RrUkVVZXg3b1gwMCtKYkRPamdtRVBLaGRYR2NqUmtMVStuTWxTM0tP?=
 =?utf-8?B?aktLdkY1NTNBaTFuMWE1d0hCclZGci90WjAzbWZ4Unp4aitWcGl0R21BTmFo?=
 =?utf-8?B?ZzBHUksyTTZWTzRMTkl0UlFybFZpZzZ2QXdJaUxSWUp4eXRzcXBwMGJNSUxo?=
 =?utf-8?B?RkNxNXNpRmVlaTFmMStDMFdJcGc2QTdvR1NBNDJSdGRjemE1bnplWVJRWGtG?=
 =?utf-8?B?dHBwU21uUjVYVXZOTEhzU2Rkd3VqZ3N6WGNwa2VkS3lLZzZxQUJpMkZBSjY5?=
 =?utf-8?B?cG13cU5KYnR1U0RHUENQcUo5ZjFYZzJSZXlpQkRBRTcxblZ5V3cxNVFsOUJ2?=
 =?utf-8?B?MWM5S1hjaVhwblFWMndXMmNUeFlMN2hVY3RSYlZyTU1HZzVIaStuWGpxclNt?=
 =?utf-8?B?ZTc2SFduM3pxd21aZ084VWZ5RFoyOG5zLzdwcEVLcUVGM09vMXBxRUZReVkx?=
 =?utf-8?B?ZWpwdWtPRi9oN0FnV3lsaGVrQ1VCTFhLMmdUTmlhdlB5VnpoUjJ1QnIyeHFJ?=
 =?utf-8?B?SXJFdm0yZzh1NXZ0MG5OalN3WUFWNGZQN1RPQzVjSENuRzdYeVJicWVJQVZv?=
 =?utf-8?B?eHFmMFVzN0dIWm9MaysvYlEvOXB4NTZmMmJOWkZSclU0QzM1Z2t4b0JUTVRJ?=
 =?utf-8?B?TEx1Uyt1b3BBZzJiQzJ4aGFReWlEWGozenVvQUZCdmc2NU5BRUtPdy9wUVFw?=
 =?utf-8?B?SmNYVXQzd21OaU1MZTd5M2xNL1NPSk84ODJjUSt3V0sxOGlPM2FGLzBEcXVq?=
 =?utf-8?B?MmdqMkZTL2FNTmdLLytSRmI2UDVQZHFRQm4wdjF4R2FvQWlram92L09WOXAz?=
 =?utf-8?B?VXNLa1VsbG0ybkYrbXc0bTkreTF0L3lRUEZIKy80dG1LTmJxSTJUTmdWSXBE?=
 =?utf-8?B?RmNlQmRIaTl5QXZvcDdVMk1YYlN0R2VzREcvaWlENmZwbC80K1M3ME5La3Fv?=
 =?utf-8?B?VmFrcFNwbXR1UnNLUnEzditnaUJQTjY5aTg3dFI2ckY0WFl1TG1XVCtGL3ZH?=
 =?utf-8?B?NUIvRWlLV0xvNWlVOEhwbVZadXF0NVBUWklTZnpEZVhnaVlvNFRVZXl6UnNk?=
 =?utf-8?B?SHdWd216eUU1bFQ1VHNmcXJpQ2tkMnV5Q1ZLVmVuUmhJdWpYbTdlQ3A5eGd2?=
 =?utf-8?B?clhRK0NLamozcDZJU2w4emhHeTAwWE5SZzcwck5QVTZ0NmJQN2VyWkJna0hV?=
 =?utf-8?B?L1FoSStVOEdhVGVQRTJzRGozZWNWQzhab29JaWE4eVF0aCs2NTAxSVJoam5J?=
 =?utf-8?B?K0xkL2pmTXg3WTRPUGVtRzJqSElta291N3E2NGJTaXZRL25rdmRNWWtZR3Rt?=
 =?utf-8?B?MDl4a1ZSeHMwcncrU01HOGdobVR3bWQrMnlicXlhRnkyaXhGb2o2T0dlRkpi?=
 =?utf-8?B?WHo1WjdjcVUwd3VGVkZEaUtaWnFOMUJNUWoxd0pCTnBBa0xJN24yTjFKTDd6?=
 =?utf-8?B?QVZ2eGViemlja3lxei81cUJWcHJoYzBzMDA3ZjZmc2lEVUNtbTBLV2RPa3pN?=
 =?utf-8?B?bmt0aCtHUVQ0aEJBNEdoMmhhcG83SGJKeDlZUmxna2dETDNFRDdWdlpkbG5t?=
 =?utf-8?Q?Yoy1cxLz0LvuMQ1q0USI1NAK3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f7d9ac5-ec6a-4f48-546e-08dd7673083a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 07:57:38.7318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UFgJu7Nyo6+fD0pYalyd/vYxRDsjm3642mi8hWNN1dKc4T7ikwrl32U/X/BAH1iPBCZ7vVpOYZjv/3MDM07WWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDgsIDIw
MjUgMToyMCBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY3
IDIvOF0gZHJtL2k5MTUvbG9iZjogQWRkIGRlYnVnIHByaW50IGZvciBMT0JGDQo+IA0KPiBPbiBU
aHUsIDIwMjUtMDQtMDMgYXQgMTQ6NTggKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4g
TG9iZiBpcyBlbmFibGVkIHBhcnQgb2YgQUxQTSBjb25maWd1cmF0aW9uIGFuZCBpZiBoYXNfbG9i
ZiBpcyBzZXQgdG8NCj4gPiB0cnVlIHJlc3BlY3RpdmUgYml0IGZvciBMT0JGIHdpbGwgYmUgc2V0
LiBBZGQgZGVidWcgcHJpbnQgd2hpbGUNCj4gPiBzZXR0aW5nIHRoZSBiaXRmaWVsZCBvZiBMT0JG
Lg0KPiANCj4gSSB0aGluayB5b3Ugc2hvdWxkIGFkZCBhbHNvIGRlYnVnIHByaW50IGFib3V0IGRp
c2FibGluZyBMT0JGLiBIb3cgYWJvdXQgdHdvDQo+IG1vcmUgcHJpbnRvdXRzIGFscG0gZW5hYmxl
IGFuZCBhbHBtIGRpc2FibGU/DQoNCkxPQkYgZGlzYWJsZSBhbmQgQUxQTSBkaXNhYmxlIHByaW50
IGlzIGFkZGVkIGluIHBhdGNoIDQgYW5kIHBhdGNoIDggcmVzcGVjdGl2ZWx5Lg0KV2lsbCBhZGQg
QUxQTSBlbmFibGUgcHJpbnQuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0KPiBCUiwNCj4gDQo+
IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNCArKystDQo+ID4gwqAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gaW5kZXggMzU0NTEw
YmI0MzdkLi41MjkzY2JkMDI5ODggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC0zNTMsOCArMzUzLDEwIEBAIHN0YXRpYyB2b2lk
IGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4g
wqAJCQlBTFBNX0NUTF9FWFRFTkRFRF9GQVNUX1dBS0VfVElNRShpbnRlbF9kcC0NCj4gPiA+YWxw
bV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyk7DQo+ID4gwqAJfQ0KPiA+DQo+ID4gLQlpZiAo
Y3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYpIHsN
Cj4gPiDCoAkJYWxwbV9jdGwgfD0gQUxQTV9DVExfTE9CRl9FTkFCTEU7DQo+ID4gKwkJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2VlbiBmcmFtZXMNCj4gPiAoTE9CRikg
ZW5hYmxlZFxuIik7DQo+ID4gKwl9DQo+ID4NCj4gPiDCoAlhbHBtX2N0bCB8PSBBTFBNX0NUTF9B
TFBNX0VOVFJZX0NIRUNLKGludGVsX2RwLQ0KPiA+ID5hbHBtX3BhcmFtZXRlcnMuY2hlY2tfZW50
cnlfbGluZXMpOw0KPiA+DQoNCg==

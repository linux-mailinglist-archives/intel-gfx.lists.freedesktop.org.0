Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019D0910941
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 17:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299F410EA4F;
	Thu, 20 Jun 2024 15:06:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhkyYyzx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1590610EA4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2024 15:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718896006; x=1750432006;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HvvH09NmfDNtVdpCbjUa81Dr3VCRmXs50SfZHKWz4Qw=;
 b=OhkyYyzxm+VZGfmTIM8kKfoIUjF/ervgoekJ9VgGfqZSJ/P/xoa7IdsP
 dGmv1Fx1K9HcaL9xHUi/X5jfOUQhfH7Fb+XpiuFG+9Xc3NPWitk1xd3dw
 psV6skqkt+WSabh5Ee6ECrI+UK1lxXLFJpw/AlkVHef39EMWte4P9ZnYK
 Ccc80RLdU6X6GMslA3xX4nlwwj+SW/+M2UKULusfg3BhCZu4fKoDIESrr
 8KjzOqw+UupmM2G2G3mbqkRwgvCKTBz2+h1BJVqTWW5hrQlJF3Rv1ryyG
 nmcJ5EibyxhgpcM9eNEBW/vzavden6cUBgu1n7mRPNWXz8RfWCPePyU0A Q==;
X-CSE-ConnectionGUID: VkQ69UC+ST6wqUli4xnm+A==
X-CSE-MsgGUID: wXJOS6JzSTSdI2GnsVWDZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15638459"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15638459"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 08:06:41 -0700
X-CSE-ConnectionGUID: M4zBVVjbRv6ZVDeAo6z/gQ==
X-CSE-MsgGUID: DIgkARxfSjiXCmQ7qqDcaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="42376182"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 08:06:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 08:06:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 08:06:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 08:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZTn1iKSY+Uoa6c7BHFQTfJ5+adbI3pXQAKSEbZt5khKEsSqysAXso4ObsqEYewAgRRRTr0USFc1Di4P23En0lEp0DXgh4unwyvgtNinfQMwSZlMNbI2sjlN02qyt3JbBu5EKErfohWAa6FCUQWDk46zVxgNDJ/7l+qnkXBOSWyflbr9DVxwRHHzCxOd7DLZaqn5MxEwAp0/CUynvMUxobppGuc8Fv/r5ihyP7WG1Dp7JawIYWV1A9tDAWLwS/YODLnCQi7jOj5gVUPk/HFCZJkbGArXkTU5RHV6+LiKvAosRuICwtgZgR90/g/KmuE5ypIUfqR2p8paGmZVn5oXDqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HvvH09NmfDNtVdpCbjUa81Dr3VCRmXs50SfZHKWz4Qw=;
 b=bspErylPoRHl3DSSr4QQTmOfgIiqRd1Eg9XqRTf881ELUqoEkp9YyTPE981/v9tkMn41kv2PyJlq8x2flQB4eFk5y+9offen213KMpdl+0708AwQianqrVNYD+q1jSP6SNOdxv/ZpMKGK9y+gm0wKQSXYVa3JVDZfF/kxng2MO6i9Jzt19sky3FhU/95DGfeskp8beJ0EYTN/bxVwYnWrbBBYDvqbV0BvE+Jq4B2xEeonwPGbyrRF5MU4olriQkDk+06QVxC9d2IlVTmnx3m5ATV2uHNTkzA0APePDIhDJkr7dUMhUkyPMF79a5QCpQNUVVJiV42iIng96UHtzoVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by IA0PR11MB8353.namprd11.prod.outlook.com (2603:10b6:208:489::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.18; Thu, 20 Jun
 2024 15:06:17 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.030; Thu, 20 Jun 2024
 15:06:17 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Set DP_PSR_SU_REGION_SCANLINE_CAPTURE bit
 when needed
Thread-Topic: [PATCH] drm/i915/psr: Set DP_PSR_SU_REGION_SCANLINE_CAPTURE bit
 when needed
Thread-Index: AQHawv1LLrNyQmdg+kGYNAPNtUcUvrHQwJnw
Date: Thu, 20 Jun 2024 15:06:17 +0000
Message-ID: <PH7PR11MB5981B95FC947C10E9A2DD960F9C82@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240620103312.903977-1-jouni.hogander@intel.com>
In-Reply-To: <20240620103312.903977-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|IA0PR11MB8353:EE_
x-ms-office365-filtering-correlation-id: b9f2ad01-b518-46ff-0531-08dc913a894e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|366013|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?VnZVblRUL2VHQU80SEFxRFVLb0xzdUpQSWo0d0gyVWpZcXc4VU0vbFpEcStQ?=
 =?utf-8?B?YlIvend6eU1vVmVtR1BzS3hNY2NPR1BjM0hBVE4zdUtENmtvcFBKU3FTSVhB?=
 =?utf-8?B?RkQrYmljV2Fsc0dtaW5UL2doYTFHZE5PcWorRUtkdkdDMTdEZU0wL0c0WXBN?=
 =?utf-8?B?STluaVdqTkJUS29JQXptNG1wK1dqRE1PWXFodTJxOXZYclBSMXZETTd5S3pP?=
 =?utf-8?B?R3UrTmJ5YzV5MGlTNktzVU15V0lJZGdSQ1FiOCsrL2NZL1BQeGlMa0NLTHZI?=
 =?utf-8?B?LzVmRnp3RGFLZUUvMitvMWRKNG95bkpNdDlIRmIwNURaMFh5enk3ZDJBbDZp?=
 =?utf-8?B?QVhlcmx5a0V6NnVHMEVzc0ZUd1pDSERHSVFEU1FWcWprSHJ4eUhkMkhPN0xM?=
 =?utf-8?B?bVFta1BhbkROSkVWVkY0QWY5S25vNnpIUFY3QVpiUiszZzlnWElaREZzZlVV?=
 =?utf-8?B?Y094akxYL09GUGNHeS83aUFPdTFWRmVTV283Q0tncGgydkY4bGc2UEFPS09s?=
 =?utf-8?B?cm42VHdONnJNSHp5aHlEbTFieVBQQXY3VGk4bzlRUDFuelUyYlFSNHFiWmpl?=
 =?utf-8?B?bEhFL3lrZ0hYMHR0QllPelBHMC9od0hwUEV4cmhkSmh1SG1GaW02M1J4U1Rx?=
 =?utf-8?B?NkdSNnNkRWRIQkRYNHhlSEIxWXo0Njd6bGFwTzE1SnJzN1hkK1cvM01iR2lF?=
 =?utf-8?B?Tm94UEE5cHNYM1dLREZjb2lqdFRERkZoOFM0cjZFbXkyd3ZzUG5qclNRSkZ2?=
 =?utf-8?B?Q0JIVk9PM1pLVWdmaUhHL0JTbXYzVVZZSUZQblBWTnN4dkVCTkFFUEpYVXp3?=
 =?utf-8?B?K3oycmJZSVMwMHlyWmp1dnowUEpEQ09CY0p2WDlGalBrZXNkY1A0eElzRmFp?=
 =?utf-8?B?REhjSXJhQll2bHZyL0RpR2cwVHA3OG8vZk9DUVFzY1Exa3dHL01CMUF0MXB0?=
 =?utf-8?B?aFA1bXRFdDY2dHU1VWJtWTJsNWhUdkQwbHc0WkFUbjlQTE5kYlNDMzN6elRY?=
 =?utf-8?B?YVdIaldZazM5TlN4a3NzL2pFZG1sOCt5Uy9UV0J2Q25vMWN5U1ZrRGtvSS9l?=
 =?utf-8?B?WUhBWXhNZ3Q0cC9mVkRJSW9KMnRuR1YxK0dIS1YxNEtTL0ZJN2RabnZoeklD?=
 =?utf-8?B?ZFJKaVBpRzRwVDFIcFNGVnA0Vjc5eEJ4a3pRL1VyNmJmNlpXczVVYzE5TGV1?=
 =?utf-8?B?bE9ORWEveDE0QUhhR3A2WGFpcjlrSFVReWFDTmlJK01rcitsZ1dvUEZUcmZF?=
 =?utf-8?B?eVdkVnMybS9QQXFZbWFrc0VhRHRpbkIxWXg4ZlFZQWRjUHdPK2xBMUMrQm50?=
 =?utf-8?B?SS8rN2xyOTY2eDk3Wk1IeUdjREpLbWtOMGF0RUs1em1IemNQRlZrZERpWEEy?=
 =?utf-8?B?b2RPb3l6cXY3elliclJqdGQ0RU1nOVNuV0tCNms0UXpmUWlHSWRTVjFFUkU4?=
 =?utf-8?B?MzhLSFJqWUlaejM0L0Z5Q2RvY2pwdXNXUzdUS25OMEozZDFpYmU5bGh5VlBY?=
 =?utf-8?B?ZGJYUWNMd29ndmdvbkttZXpaUUljUWJtZVpIUjZYQnA5NE9uZFJYOW1Ud1Yz?=
 =?utf-8?B?REtha1hXUDk3ZGt0Y2s0ZG93ZmtQSkgyUzFGV09KNEZ2bk5jcXg2WDExdTdM?=
 =?utf-8?B?MW9GSWFPVlpvS3Y0NVhyNi9ZSTFHTlByS2VzZlorOUFoNTlSVTdkTVhEVlpt?=
 =?utf-8?B?ek9oZDVMMXA0a3pwUWdZUVVaOG5sRlc3M0VwRnJJQW4zcjQrTTJuZHp0WkpN?=
 =?utf-8?B?d1ZtL1NCcFNQRmdJbXpGNkh4OXhLTEFwK0lBdmxaOGdseFZ4SDFkYjlVcmZZ?=
 =?utf-8?Q?66J1GrhWqLWV928Haa84BHYcTg/YVC7qRAwt0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2dwcldOanVPeU9IREpVWDVyMnVVMFFnMHlnclAzNjhSa29VN0dkMlNWV09Q?=
 =?utf-8?B?RkRBUktkZnBKOEpJTlVPY0JXMFlyZjdhVWp3dmg1dkZiR3lUSDlrcWRJY3pK?=
 =?utf-8?B?YU96bmRYYVJnY0tlVGo3QXR4UGd5VzE1alVVT0pBQVV4Y0VISHVFTGlPWk9Y?=
 =?utf-8?B?RWRVVTZJbTZ1ekZhdENVWHA2VHF2TWVQUUtUNjIxRjR5MTI1Sm5Rbm5mVHdT?=
 =?utf-8?B?UzEzbHQvQ2NDSUJxY2ZwSnBTSVBNQTFad2xUMFN0cVdwU3ZMLzhCTjlzUHQ1?=
 =?utf-8?B?U1VWSnJiVlMwVkprYlFNS2ZROWJTK2ZqdHp5RUJRQWhrRFZWbHI0YVRkT3ND?=
 =?utf-8?B?cW40ZVJNTmlmWlY1ZDR5SGVlL3VUbFFkWnpEN1Jaek5kSmZKQWl3Y3lTNlpv?=
 =?utf-8?B?TTlEeTV3SXRDcElJd0x6MzdZdW9HTlBVajZpVFEySUxkcVhiYWlIcU4wQ3hG?=
 =?utf-8?B?OHA3a0VNZGMxaTdBaEcya0lmMTJwYlF1VEw4VXFqcDZpRTRWVTFUNVZmVlpN?=
 =?utf-8?B?dEkrTFljQlU3UHhnV29Fc3BTam1WQ0tsRXlUZUswbDk3YUJCbDV5TmJ0UDd5?=
 =?utf-8?B?Um1mb0hvaWFjaU1NR1ZhMmJPcklBRytCWVFEaEV3cWlSQ3grTnhCWUpVYlRS?=
 =?utf-8?B?cGdYK3YxVytwU3hZNUdKWjdxQ3VkanIrcDZBeExoTHdnOTRZZ1BKZWs3MHRF?=
 =?utf-8?B?RXRVcC9taTFCR2pJZVFERENyY0tMc2g5T09aUlQxVUhpMithcjcydzJEdWFj?=
 =?utf-8?B?R0trSkpxS1p4UGd5Z1ZoRDdVN2YyTEpRdldaeXVGYUZPMTlwVWNrSTBPOWFI?=
 =?utf-8?B?M3kzSlNUYlNUVEVSQjExSGVRelU0VXptdlNaYkZtVUlSK3l2bEdsQWp5b0lZ?=
 =?utf-8?B?MURVeG5WeDFKQ1AvSnI1SXBzMk4velJkUUdiUG81MTh5cCt0bUIrVmtvUVE2?=
 =?utf-8?B?MHJ4QlJOMkpWd1NXeXNBVHYrMDlUQ2ZpUFIxVG5ib1ZYZFJKbmxLUlVYcFht?=
 =?utf-8?B?MDBtc0RpTTlWazc4d3lOUVdrVTJmRzJMR0I0WVZXQk03VEFCTU9ISk9SUkVp?=
 =?utf-8?B?bGpNRExMeUVLaVBRcWZCNXNqRGpkMmhSVWhEMjVmcEVsR2ZsSGlBUkpTT2Uv?=
 =?utf-8?B?M3VzbUhWVDlVWU96VVVzT3hKUTFYY0JPYW9aTmp5dHpoZ0R6Um5ZdzVUc2di?=
 =?utf-8?B?d1VDWHlqeU1tRUwrTEdvbHNoSHRzZUt5YU5HRW1TSndiN285Z0tiVFErSGhh?=
 =?utf-8?B?SjFBNzNCWjJUVUtBRldzQUd4UWhtQVZlZGlZMXB3L2ZQUnplWkVKOCs0QXph?=
 =?utf-8?B?WnVrQXVVZjQ1cStIbTVMK2x6OG9KalJCRlRZeVM1Y2thU2VzSzdGYlk0ckZZ?=
 =?utf-8?B?V2I0RFJGUUwrNVkrSS9LTVlYVG1RYmhlVTVrOFo5VjdwcCtwVFgvYmppWnpp?=
 =?utf-8?B?TjhQd1daUkRUdGhpYm5Ycmw4OVQ5TzRCVS82bnlpZk9UM1lBRGRYNGVvVFRy?=
 =?utf-8?B?aHA2VmV2VmtiN1c5TU4rUGF4VnRlVW1HVm01azBGTWVXLzlack16NWhWMzJQ?=
 =?utf-8?B?Y3IycG5mQkdJZFEraTVFVEM1RDhpeDBjazgveUtPSFR1UUdBanNRQkpuallL?=
 =?utf-8?B?VFM3T3E5eXpacGlyNHYzYXgzZmtmeFhUUmprMGJRNlhPV21FMXo5Q2c4OUR6?=
 =?utf-8?B?a21zeWxqdWlnVC9HUFZya2dpTXcyNjMwOFJqcDRPS2YvaEhlUUNRTUJaelk4?=
 =?utf-8?B?cytTS2gzTCt6RytIeFRaRndSaHJwNHVEeWxzeUora05QZGsrNXdzSlB1ZWYz?=
 =?utf-8?B?Y0tKM2hmYXhUenhycWZTc3YvZVBvWWRKVFlleWZrY3pWYldPSG1nQm1MQWF5?=
 =?utf-8?B?SEU3TXh5b0s0R2k2OE9MVXk4L3JlTWhpSTJLNEFkVWhTNVNDb3RnRzBYdjdm?=
 =?utf-8?B?UmFabCsyWk1ZV01DS0Fud3BnYTZCZUIrdG1rMVNnMmU3M1NGamlQU01aQkxi?=
 =?utf-8?B?OXhyVVhhOFBleTQvMWM2bHVNa0ZRQTBMRHVxLyt1ZzBXM0RlMlp0RGNCbS8w?=
 =?utf-8?B?UDIzeVdybFk1WmhMREFZLzFrRUxtMzZMZjNkRXZwNWJsL1JESTNENmNvbFdp?=
 =?utf-8?Q?zh7EOJ8CduFipILqPj6y8KOi7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f2ad01-b518-46ff-0531-08dc913a894e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2024 15:06:17.6967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c0qLo63TnayV97e7DoOC/nZQvckP1kA4ojsxX3qINSbQ0vn2IyDXnlItOW1dt6seX+kpX5qYb8oVt6T617ShZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8353
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDIwLCAy
MDI0IDQ6MDMgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3Vu
aQ0KPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9p
OTE1L3BzcjogU2V0DQo+IERQX1BTUl9TVV9SRUdJT05fU0NBTkxJTkVfQ0FQVFVSRSBiaXQgd2hl
biBuZWVkZWQNCj4gDQo+IFNldHRpbmcgRFBfUFNSX1NVX1JFR0lPTl9TQ0FOTElORV9DQVBUVVJF
IChTZWxlY3RpdmUgVXBkYXRlIFJlZ2lvbg0KPiBTY2FuIExpbmUgQ2FwdHVyZSBJbmRpY2F0aW9u
IGluIHNwZWMpIGJpdCB3YXMgZHJvcHBlZCB3aGVuIHBzcl9lbmFibGVfc2luaw0KPiB3YXMgc3Bs
aXQgdG8gX3Bzcl9lbmFibGVfc2luayBhbmQgX3BhbmVsX3JlcGxheV9lbmFibGVfc2luay4gQWRk
IHNldHRpbmcgaXQNCj4gYmFjay4NCj4gDQo+IEZpeGVzOiAzMmYwMDQ1ZjkwNWMgKCJkcm0vaTkx
NS9wc3I6IFNwbGl0IGVuYWJsaW5nIHNpbmsgZm9yIFBTUiBhbmQgUGFuZWwNCj4gUmVwbGF5IikN
Cj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGE5ZDkzODNlNGVl
NS4uMGRiY2FmNjQ0NjI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTczMiw2ICs3MzIsOSBAQCBzdGF0aWMgdm9pZCBfcHNyX2VuYWJsZV9z
aW5rKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJCQl2YWwgfD0gRFBfUFNSX0NS
Q19WRVJJRklDQVRJT047DQo+ICAJfQ0KPiANCj4gKwlpZiAoY3J0Y19zdGF0ZS0+cmVxX3BzcjJf
c2RwX3ByaW9yX3NjYW5saW5lKQ0KPiArCQl2YWwgfD0gRFBfUFNSX1NVX1JFR0lPTl9TQ0FOTElO
RV9DQVBUVVJFOw0KPiArDQo+ICAJaWYgKGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lv
bl9ldCkNCj4gIAkJdmFsIHw9IERQX1BBTkVMX1JFUExBWV9FTkFCTEVfU1VfUkVHSU9OX0VUOw0K
PiANCj4gLS0NCj4gMi4zNC4xDQoNCg==

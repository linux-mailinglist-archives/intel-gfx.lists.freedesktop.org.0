Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFE7A5BF80
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 12:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C696510E175;
	Tue, 11 Mar 2025 11:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSJ7J/+F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B104710E562;
 Tue, 11 Mar 2025 11:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741693485; x=1773229485;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DsJO1g9kDEmCOHceVchwnsGa16MO+vYFpJtBxGhdock=;
 b=mSJ7J/+F8KBHthB9/rpmdMQCdIY9JmL8EtpKfxZOKOvLSGMWUaa4xLOV
 KdW0Y/DWh/HSgYRoqMxVYPUfpEKXlTy4NtkRd2c5gf6y6wNNQKRthxqxK
 mhFBDurkLgM1grzzpTxKvfl1cvJaev88dktelTrcmRxECpmnG9vwReOwk
 2qab0X49QjOHemLE9+HnkX7yVIJ2zl+HEO0cUVvC5puN1fLt0Qk96JrVJ
 tvqg1s/ynu8v7KcWp81lJEkvepu6yeEsCO2/4xAW9XWsSaG6MLUT3qHaY
 pd6mBpw/UD+Cp4VlG1YhXb3LBF/MvDArogETcJy8SXFYr5R44XE+d46Vk w==;
X-CSE-ConnectionGUID: OibFFKOlQ9mdiVshrSGAbw==
X-CSE-MsgGUID: rVwqoteQSYOBjl8LVVIwyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65183631"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="65183631"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 04:44:45 -0700
X-CSE-ConnectionGUID: pVuEkC2FRyuhiMKDqv1Q0g==
X-CSE-MsgGUID: +ZwJxUepRMqW4LRSYtqXIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="124902233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 04:44:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 04:44:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 04:44:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 04:44:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iuRDETpUSPcK3L4570ys2z8GwmEP2sja36vBNqIqcvb/SS/a9yAbvjh060+iiRP+ztX4wCIlPKEh1Ooe37UjloRiYG+NETpHl4WgOxMHbxo+IJgWkaCgbbd3gpecvWf0tHo5cdFZtoBMrY3ZdcmYFM6d1iH8LkRvP+wUweLnZPWRiD72aZ7iBV/LIxVpvy200cXsxX5rl1U5L1lL8yiQxhKkiWFCj/PD7azUvSytnVH9K7R0cjZzX3tQm/zccOP578X0lO6p6Qmko7enyThi3xd9ZoG4X90opxoQo3R7lkuypzDHJ1JyRwzgRVsmUfdQ4hXV41Zn1Q0ddhq9LbW7xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bh2cbxILIcFqAHtChJ4DMWFU12YiwOXsdS1w9n79dfQ=;
 b=N/3F2kmdb6mKVG/QncZ5Y0ZneUpcwrjIUGnq66L6+GAoOJi8VamnFW5+zghWo6A2irQd1xhztwFJeH1++Z6HIMJsgDAxASfoYlXSWUvciM0gYLGdMxiRAVPdrEOAVyY67WbzgDOW8jlnJ1Orpwpitq5jBcPxqmidd/CCZS2wPdOU44cLfyAlSczjLPNoVyA+3qYxjAhTSirNQyIiE0v5XfurjXQLnalN/3TdNwpy6HLBHpwOMjtVnHvXnHSnI/WFEHRRfN76SZqiaUICg7M7mRNewfPJ+pcmvRYCU5oclqjDmEQ5YI1WAFhPg05yoOV7sKP70v043Iw2u7OTCeg4qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB5170.namprd11.prod.outlook.com (2603:10b6:303:91::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 11:44:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 11:44:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <878qpbhq9j.fsf@intel.com>
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
 <20250307-xe3lpd-bandwidth-update-v3-1-58bbe81f65bf@intel.com>
 <Z88XvVp-rEzrsmzv@intel.com>
 <174163322752.59796.9905613328560506890@intel.com> <878qpbhq9j.fsf@intel.com>
Subject: Re: [PATCH v3 1/3] drm/i915/display: Convert intel_bw.c internally to
 intel_display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Date: Tue, 11 Mar 2025 08:43:55 -0300
Message-ID: <174169343520.59796.5592565950429222879@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0049.namprd16.prod.outlook.com
 (2603:10b6:907:1::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB5170:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b53e119-6354-44d8-42ae-08dd609203f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUtFVHNwUVE0SXpHMlZKVTRvNENHbkpEdFlBd1ptSmVCd2J3Nno2US9OdzRD?=
 =?utf-8?B?bGJXc1ZuTnhuMTFiR0xOeDNkNU9GcjRZWGVnOE1qQjFBekwxVlZjU0pzWTdW?=
 =?utf-8?B?aG5uRklrTWdONUp6bzZJUzc4ZzZjRmU4M2JVY3VtK0pOSVNPdlp5RndZVTFE?=
 =?utf-8?B?aDFyelllSkllNSs4aVU1UDFWZVNmUXUybCtaclh5NTNLUkZ5clFaMmtKVnR2?=
 =?utf-8?B?SEhaYjNUbDNkVXFYdGM1T3VtUkdsNVh1TVYvVFFjQjhTVnNZcjQwOE91N0pT?=
 =?utf-8?B?ZnQreVlaWjdLQ0dkT29TZzRnZDh5MXlCaVM5RVFBcFpEUElZV3Vmd0t4VUpO?=
 =?utf-8?B?M0ZPa2ZTbi9zRVk4VGk3MFpqd0pLMUs2ZjkvMHROcEhPSG5iZ0l3N1JnQnYz?=
 =?utf-8?B?WWRydU42U2J5Wm9iUjVNdDM2cXNaRGZsTklUN0xjYUdVTGh1YmRVV0p1OGRL?=
 =?utf-8?B?RWFPdHNnZXgzdUFUZGsyRHpGMTVaMU5OTWJISmQ5ZlhMdDBuUWN1U25WV2M3?=
 =?utf-8?B?aEN6by82eDk4a2JSbW9IMSt5SXE1cVZWT2xGOG1TTFNDaTB3NFdzaTQvM2x5?=
 =?utf-8?B?YWRZWXhZd1prbHZlYTZqOUV2WGZhOFpvbjAvOThYSnFjWlV4OEZxTXJlQzZZ?=
 =?utf-8?B?S2FqU2FIWFFJT2RpbTlDUU9hQlZPU3dsL2R2RnVudjFVRDNRMjJSYWNSUUZM?=
 =?utf-8?B?bzIzV3NlQVV3ZFVBQVcyTUF6VlpvNTVxdmpPQmVPQWRjeUlueUVBekcxQmRI?=
 =?utf-8?B?OWFpbWJWOGVmUVVTenJpTlVGY1RiT29ieEJDK2drTlFuSktUNjdUdHJKbW5z?=
 =?utf-8?B?R25paFZCNGVPVDRBQjFvOVVVcTJqcjZFcnRGcGRtaStXVEdiaDhSckJ3MlFo?=
 =?utf-8?B?Tk14S0FkUUREeEdLbTJaRzZ0bnhwT2xTYXNFVUVyWTIzclhpMTdqSG90L2cr?=
 =?utf-8?B?YWcwK0pTbjZ4TTFOaXR1QXFhZlFLRU5rdmFBTTN1dCs3Unl3MTNGLy9oYldM?=
 =?utf-8?B?WVF1NHA5anJYZ0ZwWWFWYm1RR0ZUcG9qMzBZUDBEQU43bTRxOGt0TTg1YmdX?=
 =?utf-8?B?T21ZUlBxak82ZnNKQkl4d3VnbERvTWUrYVN2VDZ3eVZHVTlTNHZZcGNqdzNk?=
 =?utf-8?B?MkdxTFdyaTJ0NjcyRmkrZGQ4QUpiSmQzNU00dWFpaEVjUC9TTTloUlFMUTgr?=
 =?utf-8?B?aVBWSXpjMFp3dDlWclFjUTJZdThobTBoc2ZsamMyNnRkcDBKbjROYXVKaW5P?=
 =?utf-8?B?T2FyaFVVYVV5amk4NWt6eTBPb2VMTnlVU0xVSEszeTZmTmk3Q1pPdHZiVW5L?=
 =?utf-8?B?QkNUdTczOXpYaVZHT25CMHZqWmw3bmdlaEdPeGovVEc2T3RmVGM2WC9Jd1V3?=
 =?utf-8?B?clQrUThiOVlvZXZTc2Z5c1A5MkNQYndibzFacW1sNEZ0QWJ1UUlySXlybWsx?=
 =?utf-8?B?WWtIekM0NVh4emUvSUtWSit4UFpnaHd4Qi9kd1BQYTFJV0dOWjgrZ0Jjcy96?=
 =?utf-8?B?dGdCdkZCejN5SXZaT1U5SENLVVpEVVZJUTRvdEx2QWNCQldFZmVZdk9OTUNG?=
 =?utf-8?B?bXRwZmRsOFd3bFRJSDcyRGFYRzBUR1JMZU1EdGVuNlUyUFNUVXF6Q1o5ZVEw?=
 =?utf-8?B?WHliMHNsOUYxZmRFMEVqN2JrRUNIMEo4NXJRTVM5UUJieVpnbzJGdVJFUzhh?=
 =?utf-8?B?K3dCblNyanpMRjFCM056K0tzL1RxdUJUN0dEZEgyK0h2MDYzb2FoeWFEaFJO?=
 =?utf-8?B?cWxnRnREUUZmWTNlT0xUMTRNVTJ4WjFSMFRoRW5JRlM5NlNpMms5cFlIek1u?=
 =?utf-8?B?YUFvSUM3U3ZsMjBWM0dvaTRpc3ljTDdzWnhWaFdabHlzbGdvb2lxTDhVeDdi?=
 =?utf-8?B?KzF0eDczK2N1TmZnYkpxVmJZUmVMbVA0MmZqSTd4WkJPd3RqeXJEbEVMSnVP?=
 =?utf-8?Q?qK9NU77NJdUcTOX2eQSCOtVtrElQas88?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVIwZVViQ3FhSWdRd3dLOTg3VVExYTJxS3V5N1pEcWQzMS96RktRU2ZoNHZu?=
 =?utf-8?B?empaSUszcjE4V1ZJdVZ5aFUrYnZqaXNuUjJ5Mm9xdXo3azlMWkJFMHo3aWxm?=
 =?utf-8?B?N2xBYS9qUTFNbjB0QWllSUtyd0lYN2pPeXhkb0JpQ1JVeXh5elduNFZhekNO?=
 =?utf-8?B?dk5qZ3ZoUm10MUM4ZFY3aUNPT0l3NEdlRGlZS1p4cURnKzNBeUk3Q2pFNGJY?=
 =?utf-8?B?Zkc0enhHZHFqT3NsWDBsT0lqV2s0WjdPRHRIRWhSWlhrVU1mbjRjTFJOdXcy?=
 =?utf-8?B?d3plQmIyYkVQcVMvZ09BdzZzMVZsalBsckxIVXUweTF3RG1XbVhGZ01zaGJx?=
 =?utf-8?B?Q0JZTEpTWjhJOWZSbk1ZV3pyNzdiV3k0NDhqQkdZNW9TZGZxMVIyMFdMdzFX?=
 =?utf-8?B?ak5sSE9iN1VNc0RMbTN3bUdEdktMYVg5YWJOMURGTnd6U0lZN0Q5N0NhM3pH?=
 =?utf-8?B?Mnp4RXh5bXJ3Um9tNSsvc0lRNWt4Um5jaTlFYkxLQWtXdWc3cjdWQ0VyaWdO?=
 =?utf-8?B?SHF3bTltVGhKQ0lGR3J4R0RYREU4dEM4bFJmd251UVc5QTJoSDdQZ3hXWmwr?=
 =?utf-8?B?QzVyL2hJV1Nqd2tmZXRpMXJwSzQ2TFlmOXJwK21ERXVWUGhycTJvQ0JpMi9E?=
 =?utf-8?B?UW9KZFhjZ1NsVytIWUk3d3dMUmVXcmVLaUFvTjFrOUtxR2ZCOXFJNnpFWE1U?=
 =?utf-8?B?NHM3WERDdk1qdnBHWDhNbDd6bXJubWtnOFNCdnhzTFpGWVdBanF5N3hxVGtM?=
 =?utf-8?B?YkNIRUE5K2hSL2VIZXhXUWpCVXk3TU9VUmRvRld1NDZ5M0ZSWmVTUlhabzBV?=
 =?utf-8?B?bEpLNWUyTk4xNytrejUrWnUrN3JVaHZ3c2xHcDRxVHd6LzVDWHBOOWNrdmRK?=
 =?utf-8?B?MUFnL0dpRUk5bGlLZGliTWlDQ1FEVEV5a3JUazd1cnBsWmJibmRLRUx6ZVpz?=
 =?utf-8?B?dGMrc3pKM0JnclpNK25BTFFCWmxzeGlmZE50YWNTcW9nZTR6Q1VqUGdwTDMz?=
 =?utf-8?B?V3NrVmVvVHQvSnU1d2RxVno4eTNMUTJkaGdvajZsQVhhNkMydDc3aktFUHlS?=
 =?utf-8?B?VlRXUUtkempMVUJJTnY5R2RGOU5KaFJmVG90LzIwSXJBYTR3dGh5QndGcWNx?=
 =?utf-8?B?RGZIU0xkTHllZXI3UDVPbVJqNisvbE9BMUlPNVlnZEFyak0xa3RoZlUrK3Ry?=
 =?utf-8?B?L3MyMVVzM20yU0ZZa3lveDlHV0ZFSkJXTDh5TU5MZzlSdm1ySzZaMHJJWXRT?=
 =?utf-8?B?SFlsdTZuNXFjR0xIT3ErZHc5bk10T21nZ3phU05MMjh6S3BjU0ZCVVM2YU04?=
 =?utf-8?B?MmhIYzBKT3FWODJVbCt3cFNBRjl4UlVhRlBESWp0dEZpc3FpbG0xcjVJeHVp?=
 =?utf-8?B?ZU5LNys4NUhTc0tiZnFXR0tyVUllSVRXSHFyWDNadFRaeFB6bW1MWjI4TW5L?=
 =?utf-8?B?WTVuOHdWNFVHbjZxbTZWT1htWWdpQldnemZNMVloeHVFdlUvQ0ozUE1ydWhX?=
 =?utf-8?B?cFpieS9QZUxQUFAwTzVsRmdDcHEvZVhZM3JMdDlrZmNzNXNxd0YyK1lPU0xz?=
 =?utf-8?B?VllUOEwvdlZxMGw1YkhGb3JZVFdoUWU2UC82UzhwVDEyT1A2eFRPMEhuckE3?=
 =?utf-8?B?T2tqZ2M5dFRsWHpVWmNJcFMzalJ1L1A0MXhxeW92WVVVK2pGcjRPTkVFTjZT?=
 =?utf-8?B?Q3VoL1Ezd08zOVNLNnhySWdDZFUyeWMzcHY5TlpNeTJ3b2loQWNhd2RXZ2ZB?=
 =?utf-8?B?N0EvWkV3UFBFRzE4VFEybFhmYmpyNmlNZWZwREpCL2lTc2ZiR1E4ZmZsVlZF?=
 =?utf-8?B?WW5xMmd4d1d6bzJYQjl4dGlGd0NxeE9aNmFQZkZMaENmelJaV0pyK0JITGdh?=
 =?utf-8?B?VjUwTXBsZjdzSVp3TllGb2VVc2xxMFBoZ2lrcnRtd1pwRkJOZlh0S0I3cVR5?=
 =?utf-8?B?NkErMjUvZUNzR0JOMUdXa25lU3dpMGRhK1lacysrVXhJc3VQSzMyeUR0VHd3?=
 =?utf-8?B?M3UwSXgzczJOSXNqdmk3Tk53Q3BCREpudmZGbVZSd25tMlFOcmVoVVNlQ2NV?=
 =?utf-8?B?d0dZbGE3ZEo4YlNpSDR1WkRXNmFueXZDWGZVZ2tQSXJOL2JHYm5TMFluNDhX?=
 =?utf-8?B?U2hwU1BwTXV2WWVPSE5iTGJKTzNGdzMxMU9XTFJ6T3pVNnlVUDlyanRVTGty?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b53e119-6354-44d8-42ae-08dd609203f7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 11:44:00.5618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ng9xnZBa1IIvVXj5jK/9dRCnOr+Iuqu8S5wiR6i5UtQdNhFP6bdJHIQjjvnPK1RR5lvdPpsbFtgCfxn+eSnmTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5170
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

Quoting Jani Nikula (2025-03-11 06:26:32-03:00)
>On Mon, 10 Mar 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-03-10 13:47:57-03:00)
>>>On Fri, Mar 07, 2025 at 04:25:11PM -0300, Gustavo Sousa wrote:
>>>> Update intel_bw.c internally use intel_display. Conversion of the publ=
ic
>>>> interface will come as a follow-up.
>>>>=20
>>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_bw.c | 416 +++++++++++++++++------=
---------
>>>>  1 file changed, 217 insertions(+), 199 deletions(-)
>>>>=20
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm=
/i915/display/intel_bw.c
>>>> index 048be287224774110d94fe2944daa580d8dc20a6..d71dc796f1793f546fe041=
46e5987a9be56bae9b 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>>> @@ -11,6 +11,7 @@
>>>>  #include "intel_atomic.h"
>>>>  #include "intel_bw.h"
>>>>  #include "intel_cdclk.h"
>>>> +#include "intel_de.h"
>>>>  #include "intel_display_core.h"
>>>>  #include "intel_display_types.h"
>>>>  #include "skl_watermark.h"
>>>> @@ -39,14 +40,14 @@ struct intel_qgv_info {
>>>>          u8 deinterleave;
>>>>  };
>>>> =20
>>>> -static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *de=
v_priv,
>>>> +static int dg1_mchbar_read_qgv_point_info(struct intel_display *displ=
ay,
>>>>                                            struct intel_qgv_point *sp,
>>>>                                            int point)
>>>>  {
>>>>          u32 dclk_ratio, dclk_reference;
>>>>          u32 val;
>>>> =20
>>>> -        val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0=
_0_0_MCHBAR_PC);
>>>> +        val =3D intel_de_read(display, SA_PERF_STATUS_0_0_0_MCHBAR_PC=
);
>>>
>>>Not entirely convinced we want to start using intel_de_*() on
>>>mchbar registers.
>>>
>>>Apart from that the rest looks fine.
>>
>> Okay. I sent v4 with reverting this function to use intel_uncore_read().
>
>The question becomes, *what* are we supposed to do with this stuff in
>the future? Kind of want to get rid of all intel_uncore_* in display/.

The first thing that comes to mind is a common interface that is
provided to display by both xe and i915...

--
Gustavo Sousa

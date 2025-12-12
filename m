Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E9CB8743
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C2F10E21F;
	Fri, 12 Dec 2025 09:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+ApU0hp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AE410E06D;
 Fri, 12 Dec 2025 09:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765531651; x=1797067651;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=yvROdJBMUQqBMIyjthzJqyPEOnckn/kbPby7DVJfoQU=;
 b=G+ApU0hpPBTPILCrNJePgnwT5kMGun2BBzT7O1EBLRJqI0hJioWwqC3K
 u9BqGK/AMHEcjI5EBkcThB9qVvsuPXntAR4Un1uIUp6NV2YgrnUYzbKQa
 IDsmgV6KUUSRK73m+N8bUjswSZNVSNA+dh381/lR7JC3jv+99HyQXF+AV
 ke+rz6yFcmz7dLgGmvq/dS8YXwFCfEVtzY/OxLOJGrX4XsAfaaw/7yY16
 5C4t5gx2iNDd32vVHCQ5JBTcbE8d60PPIzNKcdKgonUR2EEHV8egOj7vQ
 fU0fe8pmJnDJXOETMihgqCVH7RFfAJ7A+jhqZvr8wDUWTTXtzcP0KYkzN w==;
X-CSE-ConnectionGUID: lYZ+IyRlQdmWaRCC3sEm9w==
X-CSE-MsgGUID: Huor0M1dR5iYMmY4zDLlqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="55076847"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="55076847"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:27:31 -0800
X-CSE-ConnectionGUID: LqwIUuKtSuelUK4oCuEp+w==
X-CSE-MsgGUID: WTTyD49LSGqfSkaYnu/oHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196640264"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:27:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:27:30 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:27:30 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.16)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:27:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T8hC04fWe/yrPhY29+VQU5vPj2r8ptwoSAVjEIxGS5rxH1wSVAYkPGBXWkr90+wF261VJBohszGX6nkY/dMV5smEB2MyR63JZie28nJ+C4P3znzGiAGIgXmBzszvSVGDp4Dz3bc/slczY/7SVltmcZW29mtd2/9DTuH+qJNlQJc9L9V6JCwuRaM7nxbTwuEglNz7+6O5ZmFCZCUOHU/wcg8/haR4gZ19sMEGXLvWYlZ7IMW1mV/v+R4CbgQwZdKfg1bqndopcbTBbjh6j42E0XF9LVVlEQVQ1QHgENvgZ2AJ7q9JWW0GhwJOYS/o+L0k0hkQMkYHk4a5EK7oFHnQYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yvROdJBMUQqBMIyjthzJqyPEOnckn/kbPby7DVJfoQU=;
 b=HyrvWN3eaxBU1gbOfW1rY2H2s9OCsDYQE41taF+sYuasr3h4UYcu1/ktTzH3fyiy9MC7g+vb6BG0oesppkZwUeeIFUAja7qtuMmujUvYF835TGRikC+yLZprfaOecFKtfvIW6FdgNlvCHs2+I2hiCyqfwumaKI7WLC3nj3P/DCpC9fCfs7RY3JCfy8OVT/HUNXEbxtpoaxrZU4XFhgq9w+SlTJyCIs2JFCB13SueKSTziUGz6EdVVvUGfXuUFj3/zH5Fg2ug6bP14H3GdSwVNvUp1IJj8GA0ErtbJg+CiWEiog/l6FEGeT8+auc8j2rcarUcSe4ldUcOUTTWMkG/gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 09:27:28 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:27:28 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 23/50] drm/i915/dp: Pass intel_output_format to
 intel_dp_dsc_sink_{min_max}_compressed_bpp()
Thread-Topic: [PATCH 23/50] drm/i915/dp: Pass intel_output_format to
 intel_dp_dsc_sink_{min_max}_compressed_bpp()
Thread-Index: AQHcX8kIcd4+4UECJ0+JhW0e811hP7Ud03wA
Date: Fri, 12 Dec 2025 09:27:28 +0000
Message-ID: <a791c9d59d80ef707758bf55392db235a2ece4f8.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-24-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-24-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 9eb6c449-dbf8-4603-a909-08de3960aafb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?c2xtdGZrYmNMOTBsZkYydDdPQ3lWUFZJbFpXRFUwZW0zRjllZTQ3YWV2QmRH?=
 =?utf-8?B?SVZzS1cxRU9mMkZCMEJQcXVqRTluMEc1Zi9kWDA2Vy9jT24vNThkeEc0Nmo4?=
 =?utf-8?B?UjV0WkxkaWdlbFpody8rWnFEcWU1WnNLSTZ5VklJdUsyRWNNazY3V2lzZmE1?=
 =?utf-8?B?ZkdDS2FKeTU3QlNFay8ramYxWWtIN2Q5SEdzNHErOVdiRytYbzM5bTJjVVZr?=
 =?utf-8?B?RmhwMlJnMythS01GL2d0aFBmSmtZNzRQY0lyVGtjOXNOZU8yekFTQkphYi84?=
 =?utf-8?B?aEJGdzJxUzRlUnJIUVJLdy82MlA3d2w0cHQ5dkhNWGFzems0WjRsaHpyNWJW?=
 =?utf-8?B?clhUWDllSWZGY1E5M0g1b1FSM255YnMrU3ZWOWhvKzQvU3JBZmk5dUpMSFh2?=
 =?utf-8?B?cjJaYUNrT0k4a1VlTTIyTVNucjhaWk83SjJMVThBNzlkb0dvYjBVVGF1dG9I?=
 =?utf-8?B?YzZyZyt3aHl3REEvUTVVSUtIQ0NkL203NkF2TFQyMURCZWh3dGw3ekdCZmJY?=
 =?utf-8?B?VEhadXEzSy8rL0w3Q0JDa0hzSENmSHg0WXEwZk5nbXl0YVltUGpSYS80OUZM?=
 =?utf-8?B?SFZVZElGL1ZRYndjMFpLK1dXbWNNNXlpOGllNDk1MDFLS2lzRjdZVXd0UGhJ?=
 =?utf-8?B?cXlZUldaTFB2OTFxRkVCRnFIKzI0M3NlaWZJN1lndndxZjFITDV1dzRFUEF6?=
 =?utf-8?B?b09qbzMyQ2ZGYWtzSlBZdFZNekJYVUtQT1ZUc08yN0RQZThUY2RvQTh5dmZO?=
 =?utf-8?B?WU5VVEN4c0txZTRhb21LVGIvMldjVWoxRTVMWkRLYUZ4dVpGWVcvNmdqMFlk?=
 =?utf-8?B?YVY1QU5NdG9kbDJTbmhkRjZhbkdNNjZBZkpHRTFYbnk3N0tDMjBVb1FsQnRU?=
 =?utf-8?B?SnVBaXZWVVVzcmVTYUZrUThMc0JWWkYxemVzQlh5NEp1RGRvYXlCY1NRcEUy?=
 =?utf-8?B?TWxpL2hRRUM3a0poUjMvbnNHNk9pMVlXYSswQnFjM2VFREJuWVJBTW1pYTc3?=
 =?utf-8?B?RWhJZnVOekdkQWRZakRHREZUaU93U2pQUEUrTkU4NjdOSGFyQ2V2ODFtdTJi?=
 =?utf-8?B?RjViTDRseHRLaDBsZ2ZYNFBUMDV6Y3hJUEhtc1IzNkxTcG9jUGJCQnVJa3pY?=
 =?utf-8?B?cUl6YXFQWXZSdkNDZG5neXVRY2lJWnREdmpHSUUyQW8wVElBZytnM1NaTHhu?=
 =?utf-8?B?YmZSRHFza2ZMci83M2tzY1NxWmliRWRiTnpmcFlDampxSDM2eGl0UWt5VHZs?=
 =?utf-8?B?bTlBWUZkMkowOWhMaVhvSHFuVDF4aldwTTdsaDBxMFZ5UWpwQVVsNmliMFpU?=
 =?utf-8?B?U1p5V3FCSVFWRytVOGF3SG1hTnFsTkJIU3Q0NFlGY1VUU0VDemtMQ3ZkL0wz?=
 =?utf-8?B?RHVMb05XQjJUQ2FQNEpBblVRWXI2bFBDK3NsSjVUaXRTamtRNERMbFhIZTJ0?=
 =?utf-8?B?RHV0MHVWdkV4UzYxNmFPWURkUG1menFvQU10aTA3a2ZCOXRrQ1BnMlFVemF5?=
 =?utf-8?B?WWU3TmNPdTJkR3F4QXlMSkt0NGt5NlA3aVEwMW84VXFaOVVEajNFZVV2V3BN?=
 =?utf-8?B?OWlUTDBPdDRsN3UyVEVHQldUVXhpWms3ekZ3OUNBcFVuUGZSQ0JhUGRPZG9D?=
 =?utf-8?B?UTZBMmdXL3JVSlZkendtL2pIaTAwajB0V1Jvbkxla3dOSjBnQ0hBbjREQzJi?=
 =?utf-8?B?eUhzd1NQbm1YQ0UzNWg5ZUlzd3NRNEpicWlDc2VuT1RBekJud3ZFMk9SZjZN?=
 =?utf-8?B?TkdWU2cvUVNSVFlKLzFXdTFNWjlBT2dob01FQVppcTg4Ry8weXJRNXRzYkE0?=
 =?utf-8?B?TDJ0OEgzaGtkSFRxaGYrQk1EWkthU2lteGhiWk9kY0NnbFVTcHJ3NFFiS3pB?=
 =?utf-8?B?MDd2b3Jrb3kwNVZmNXc5VVVyZVVRa1FpeFJjUGZVL0xrdHdsWUtuMmtvK0tT?=
 =?utf-8?B?ZXpwckVxS0N2cC9RcGhsVGloQldUUGt5RnJpUnNuaHppUldxWVVkVS8wS29E?=
 =?utf-8?B?a0JrQjVBUCt4SFlBVEVQc2dIWTJEdWUvWHFGMVpFMzg4Y2RodndTZ3VMRFJC?=
 =?utf-8?Q?HzqF9r?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZldzazlQajJGRGloMzU4MmdtYklEYWRrd0RXTG5Jdm9yMUhZSW9GV2FkYVNH?=
 =?utf-8?B?K2RYb2RKcjBNemlGVmRPS2dJbCtheEx1cVd5aHc5SEZoUGRHWGJ2ZmkraW1W?=
 =?utf-8?B?N3NSYkVoY1BmUmpCOFZnaEVudDA0cjJ5NVhGME14U2QrWW5qVU53QXdpdG55?=
 =?utf-8?B?aWtheFNHSWNwRE94WUVBOTdXVSsxcFhYRVNOTTAwQ0d2ZlJiMHhzV3JBQ0lw?=
 =?utf-8?B?aGhTNi9lY1hyR2lBeXVyLzJTUE9iTnR5Um1iNHZiclY4bWpVT0hWUzRXQkFs?=
 =?utf-8?B?ekVPNGZtT1ZGZ0JObTBFeFdaYXU5M1cwSHRUcDVYSnY4cUxNblExdGg4MjdB?=
 =?utf-8?B?UUJBQUhRS2RxamRjQWFUYjBqZG5pMG9iSytpOFVCWTFmOW00UUtoZCtLaURV?=
 =?utf-8?B?WE8rU3c5MzNkM2MvaW9Oc2hoYkRENnJteXdBa3Z5a0U5U2xrTldNcC9iMmMr?=
 =?utf-8?B?QVhGY202TFhxMGpaMDcvODVIWFBQRWx6Tm9sUHdTNTFqeklVTzFVQkpMc2dp?=
 =?utf-8?B?TlRpR1VXNkNFeGxVeml0QklnWTg1RDhFK2VTV3kzYjNXNmtveDJ6WXR2eXUx?=
 =?utf-8?B?d2d1enFiQXR4ampjaDQxMnF5NUpjUHBqOG5tdzB6bUlpd3VFMHp6U3JJSExG?=
 =?utf-8?B?b3kwUkpRcHYyc01YcWRYbkdjUnZlZXBtcVo0a2tIQmNCc0ZSaWYwaVlxcVh5?=
 =?utf-8?B?SU5MQjBDR3hoVmk5L0pnL3E1eXVFZktodTBaTG13QWhacVNhRThadnRWbDZk?=
 =?utf-8?B?eVNoOW1aK01zanc0WU9sa2JqZlUxV3orNDVCZGV4WldXa04yeERaNTNvYTJa?=
 =?utf-8?B?dkE2aEFiUm1zQ1hxRzJvd0pxUGI2OUQyM3FHRlAvVUNIL0lFc2RzOC9MRVBy?=
 =?utf-8?B?ZURNWkNJYW1sbjNXd3R0SWt6TDh0RXZOM0hrYTRXRm5YZk5GZXZ1bzZ2OWQ1?=
 =?utf-8?B?YXhIR3EwMnJqMHQydllGdlc5VktpdzdnZkMyUUVIVVlhd2hCVlZqVFNseDJC?=
 =?utf-8?B?Wm1sdGNCMVlHVU9ZVEh4NWtrU2Z0d3hJTkxNbTdyQ3hXNWdWRzRiWkJQc25Q?=
 =?utf-8?B?VncyN0hFSFBvY2tHK0wwNm0xSkNCSzVRZjJ6S0s5VFRoai9TMDAzZ3hnejly?=
 =?utf-8?B?UWFQcFpnamJOdFoxR2gwZFRQWlFYS3ZBcnhINzF6NnRoSVJlTmo2VVdrNzd6?=
 =?utf-8?B?b3FPK0gydEU3bkJOcFQwZE9vczNXMjZESDRGR2s0VGF3b0xINWozdndaR0gr?=
 =?utf-8?B?OTh4TmxjVDJQeFhiVE40MGkySXZGVDFpQWo4dmdqNjdNNW96TDAxdWNpc2VP?=
 =?utf-8?B?VFppWk1mUzMyWm12dGswVDZYVTdUZ0lmZnlZa3VLdWxWL2F2dUd3WEhWb3Fm?=
 =?utf-8?B?WElZdkF4eW5ZOG9zcERrZjFkU09MbkFub2NETzVXU3ZxeGJ0OFFyUWVEWWdI?=
 =?utf-8?B?eGJyWmgwbDBsTFBiYjYxcUVDaWxpSzk5UHdGWkhWcVJSL2ZwZ1h4RnpFVlc1?=
 =?utf-8?B?SzNUMmZxb0hPT2thdEZERktWVTJhcDNDU2RVVFJiMVdLSXpsV1pYaVoxa0s1?=
 =?utf-8?B?aWZDNWVCR0tMSHRrRndmZHpCQm1jQVBQazFMbHh5QVRTTjRhb0QvVTArVjZj?=
 =?utf-8?B?SmRTN0NRZ1lXNmtteWJLbStHUjBGR3YrdzZ6SWMrZ0ZtMThveHdlUWV6MW9I?=
 =?utf-8?B?MXRTQkZnTmZLNW9PYXRKbWlIeEwvWFMxR1lveDdaeTBxclAyTHZKU0JzSTBB?=
 =?utf-8?B?WkJtQm5peXo2MHJpTU96UXhTdm5jQnlYUDhBVHRSdXpFWmMwZkRNTVJMeU9S?=
 =?utf-8?B?cERQYjRYTCthQnd0WnJtT3RlcHFRZWs5dmJGK0E0N21XeTJINkNIM0JOdGQy?=
 =?utf-8?B?bEo1Skhvc2FYVDBjMCttVGk0di80U0wwZEdNZ0RtTVJLTHhYVW1lY2FSa2cw?=
 =?utf-8?B?WXJpRmduQW1SM3RWSE5KckRUVUlLSW4yNnpNNDlBQXV2cUhzZzZ0U3l6emlo?=
 =?utf-8?B?RXNSOGdmSnppaGZGQ1phMnJ0Q3R4UHpMN0dsYmY4YitvOWFqQ1JnY01iZElG?=
 =?utf-8?B?alFQUWUwRkJUVWZaOGlGU3BER0xUcExYcmYyb0F5YVorU3dCOXR6ZnJwc0Fn?=
 =?utf-8?B?UzF6V2lmQ1lIK0J3dDAycHR5ZkM4TWhnL0R5VDBUVm5hVVBpd252Nkt2YUNQ?=
 =?utf-8?Q?8kiQy1we+nzkdC8Z7ACa2UQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B2C761F656F2BD4083CD7AA356C719C2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9eb6c449-dbf8-4603-a909-08de3960aafb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:27:28.1241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PQBK9IkY9RTbU3DoU/rwezIml6jYqVYIuPzKZZkmG573M47XQS6r3FSq+YGRmKgdnblDowkKUaUeYM7pI3wVHNs4LszIj/ZUf+LCn1LbXfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFBy
ZXBhcmUgZm9yIGZvbGxvdy11cCBjaGFuZ2VzIGFsc28gY2FsbGluZw0KPiBpbnRlbF9kcF9kc2Nf
bWluX3NpbmtfY29tcHJlc3NlZF9icHAoKSAvDQo+IGludGVsX2RwX2RzY19tYXhfc2lua19jb21w
cmVzc2VkX2JwcF94MTYoKQ0KPiB3aXRob3V0IGFuIGludGVsX2NydGNfc3RhdGUuDQo+IA0KPiBX
aGlsZSBhdCBpdCByZW1vdmUgdGhlIHN0YWxlIGZ1bmN0aW9uIGRlY2xhcmF0aW9ucyBmcm9tIHRo
ZSBoZWFkZXINCj4gZmlsZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIHwgMjQgKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCB8wqAgNCAtLS0tDQo+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2Vk
LWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4N
Cg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDVh
ZDcxZTY5N2U1ODUuLjU0YTAzN2ZjZjUxMTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIxNTYsNyArMjE1Niw3IEBAIHN0YXRpYyBpbnQgZHNj
X2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAN
Cj4gwqBzdGF0aWMNCj4gwqB1MTYgaW50ZWxfZHBfZHNjX21heF9zaW5rX2NvbXByZXNzZWRfYnBw
eDE2KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gLQkJCQkJ
wqDCoMKgIGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4g
KwkJCQkJwqDCoMKgIGVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdA0KPiBvdXRwdXRfZm9ybWF0LA0K
PiDCoAkJCQkJwqDCoMKgIGludCBicGMpDQo+IMKgew0KPiDCoAl1MTYgbWF4X2JwcHgxNiA9IGRy
bV9lZHBfZHNjX3Npbmtfb3V0cHV0X2JwcChjb25uZWN0b3ItDQo+ID5kcC5kc2NfZHBjZCk7DQo+
IEBAIC0yMTY3LDQzICsyMTY3LDQzIEBAIHUxNg0KPiBpbnRlbF9kcF9kc2NfbWF4X3NpbmtfY29t
cHJlc3NlZF9icHB4MTYoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjDQo+
IMKgCSAqIElmIHN1cHBvcnQgbm90IGdpdmVuIGluIERQQ0QgNjdoLCA2OGggdXNlIHRoZSBNYXhp
bXVtDQo+IEFsbG93ZWQgYml0IHJhdGUNCj4gwqAJICogdmFsdWVzIGFzIGdpdmVuIGluIHNwZWMg
VGFibGUgMi0xNTcgRFAgdjIuMA0KPiDCoAkgKi8NCj4gLQlzd2l0Y2ggKHBpcGVfY29uZmlnLT5v
dXRwdXRfZm9ybWF0KSB7DQo+ICsJc3dpdGNoIChvdXRwdXRfZm9ybWF0KSB7DQo+IMKgCWNhc2Ug
SU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I6DQo+IMKgCWNhc2UgSU5URUxfT1VUUFVUX0ZPUk1BVF9Z
Q0JDUjQ0NDoNCj4gwqAJCXJldHVybiAoMyAqIGJwYykgPDwgNDsNCj4gwqAJY2FzZSBJTlRFTF9P
VVRQVVRfRk9STUFUX1lDQkNSNDIwOg0KPiDCoAkJcmV0dXJuICgzICogKGJwYyAvIDIpKSA8PCA0
Ow0KPiDCoAlkZWZhdWx0Og0KPiAtCQlNSVNTSU5HX0NBU0UocGlwZV9jb25maWctPm91dHB1dF9m
b3JtYXQpOw0KPiArCQlNSVNTSU5HX0NBU0Uob3V0cHV0X2Zvcm1hdCk7DQo+IMKgCQlicmVhazsN
Cj4gwqAJfQ0KPiDCoA0KPiDCoAlyZXR1cm4gMDsNCj4gwqB9DQo+IMKgDQo+IC1pbnQgaW50ZWxf
ZHBfZHNjX3NpbmtfbWluX2NvbXByZXNzZWRfYnBwKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZykNCj4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfZHNjX3NpbmtfbWlu
X2NvbXByZXNzZWRfYnBwKGVudW0NCj4gaW50ZWxfb3V0cHV0X2Zvcm1hdCBvdXRwdXRfZm9ybWF0
KQ0KPiDCoHsNCj4gwqAJLyogRnJvbSBNYW5kYXRvcnkgYml0IHJhdGUgcmFuZ2UgU3VwcG9ydCBU
YWJsZSAyLTE1NyAoRFANCj4gdjIuMCkgKi8NCj4gLQlzd2l0Y2ggKHBpcGVfY29uZmlnLT5vdXRw
dXRfZm9ybWF0KSB7DQo+ICsJc3dpdGNoIChvdXRwdXRfZm9ybWF0KSB7DQo+IMKgCWNhc2UgSU5U
RUxfT1VUUFVUX0ZPUk1BVF9SR0I6DQo+IMKgCWNhc2UgSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JD
UjQ0NDoNCj4gwqAJCXJldHVybiA4Ow0KPiDCoAljYXNlIElOVEVMX09VVFBVVF9GT1JNQVRfWUNC
Q1I0MjA6DQo+IMKgCQlyZXR1cm4gNjsNCj4gwqAJZGVmYXVsdDoNCj4gLQkJTUlTU0lOR19DQVNF
KHBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0KTsNCj4gKwkJTUlTU0lOR19DQVNFKG91dHB1dF9m
b3JtYXQpOw0KPiDCoAkJYnJlYWs7DQo+IMKgCX0NCj4gwqANCj4gwqAJcmV0dXJuIDA7DQo+IMKg
fQ0KPiDCoA0KPiAtaW50IGludGVsX2RwX2RzY19zaW5rX21heF9jb21wcmVzc2VkX2JwcChjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+IC0JCQkJCSBjb25zdCBz
dHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsDQo+IC0JCQkJCSBpbnQgYnBj
KQ0KPiArc3RhdGljIGludCBpbnRlbF9kcF9kc2Nfc2lua19tYXhfY29tcHJlc3NlZF9icHAoY29u
c3Qgc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiArCQkJCQkJZW51bQ0K
PiBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQsDQo+ICsJCQkJCQlpbnQgYnBjKQ0K
PiDCoHsNCj4gwqAJcmV0dXJuIGludGVsX2RwX2RzY19tYXhfc2lua19jb21wcmVzc2VkX2JwcHgx
Nihjb25uZWN0b3IsDQo+IC0JCQkJCQnCoMKgwqDCoMKgwqAgcGlwZV9jb25maWcsDQo+IGJwYykg
Pj4gNDsNCj4gKwkJCQkJCcKgwqDCoMKgwqDCoA0KPiBvdXRwdXRfZm9ybWF0LCBicGMpID4+IDQ7
DQo+IMKgfQ0KPiDCoA0KPiDCoGludCBpbnRlbF9kcF9kc2NfbWluX3NyY19jb21wcmVzc2VkX2Jw
cCh2b2lkKQ0KPiBAQCAtMjY4Myw3ICsyNjgzLDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWdf
bGlua19icHBfbGltaXRzKHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4g
wqAJCWludCBqb2luZXJfbWF4X2JwcDsNCj4gwqANCj4gwqAJCWRzY19zcmNfbWluX2JwcCA9DQo+
IGludGVsX2RwX2RzY19taW5fc3JjX2NvbXByZXNzZWRfYnBwKCk7DQo+IC0JCWRzY19zaW5rX21p
bl9icHAgPQ0KPiBpbnRlbF9kcF9kc2Nfc2lua19taW5fY29tcHJlc3NlZF9icHAoY3J0Y19zdGF0
ZSk7DQo+ICsJCWRzY19zaW5rX21pbl9icHAgPQ0KPiBpbnRlbF9kcF9kc2Nfc2lua19taW5fY29t
cHJlc3NlZF9icHAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCk7DQo+IMKgCQlkc2NfbWluX2Jw
cCA9IG1heChkc2Nfc3JjX21pbl9icHAsDQo+IGRzY19zaW5rX21pbl9icHApOw0KPiDCoAkJbGlt
aXRzLT5saW5rLm1pbl9icHBfeDE2ID0NCj4gZnhwX3E0X2Zyb21faW50KGRzY19taW5fYnBwKTsN
Cj4gwqANCj4gQEAgLTI2OTcsNyArMjY5Nyw3IEBAIGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xp
bmtfYnBwX2xpbWl0cyhzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+IMKg
CQkJCQkJCcKgwqANCj4gYWRqdXN0ZWRfbW9kZS0+aGRpc3BsYXksDQo+IMKgCQkJCQkJCcKgwqAN
Cj4gaW50ZWxfY3J0Y19udW1fam9pbmVkX3BpcGVzKGNydGNfc3RhdGUpKTsNCj4gwqAJCWRzY19z
aW5rX21heF9icHAgPQ0KPiBpbnRlbF9kcF9kc2Nfc2lua19tYXhfY29tcHJlc3NlZF9icHAoY29u
bmVjdG9yLA0KPiAtDQo+IAkJCQkJCQkJCWNydGNfc3RhdGUsDQo+ICsJCQkJCQkJCQ0KPiAJY3J0
Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCwNCj4gwqAJCQkJCQkJCQ0KPiAJbGltaXRzLT5waXBlLm1h
eF9icHAgLyAzKTsNCj4gwqAJCWRzY19tYXhfYnBwID0gbWluKGRzY19zaW5rX21heF9icHAsDQo+
IGRzY19zcmNfbWF4X2JwcCk7DQo+IMKgCQlkc2NfbWF4X2JwcCA9IG1pbihkc2NfbWF4X2JwcCwg
am9pbmVyX21heF9icHApOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5oDQo+IGluZGV4IDMwZWViYjhjYWQ2ZDIuLjQ4OWI4Yzk0NWRhMzkgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gQEAgLTE1MCwxMCArMTUwLDYgQEAg
dTE2IGludGVsX2RwX2RzY19nZXRfbWF4X2NvbXByZXNzZWRfYnBwKHN0cnVjdA0KPiBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5LA0KPiDCoAkJCQkJZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0DQo+IG91
dHB1dF9mb3JtYXQsDQo+IMKgCQkJCQl1MzIgcGlwZV9icHAsDQo+IMKgCQkJCQl1MzIgdGltZXNs
b3RzKTsNCj4gLWludCBpbnRlbF9kcF9kc2Nfc2lua19taW5fY29tcHJlc3NlZF9icHAoY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsNCj4gLWludCBpbnRlbF9k
cF9kc2Nfc2lua19tYXhfY29tcHJlc3NlZF9icHAoY29uc3Qgc3RydWN0DQo+IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLA0KPiAtCQkJCQkgY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnLA0KPiAtCQkJCQkgaW50IGJwYyk7DQo+IMKgYm9vbCBpbnRlbF9kcF9k
c2NfdmFsaWRfY29tcHJlc3NlZF9icHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gaW50
IGJwcF94MTYpOw0KPiDCoHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoY29uc3Qgc3Ry
dWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiDCoAkJCQlpbnQgbW9kZV9jbG9j
aywgaW50IG1vZGVfaGRpc3BsYXksDQoNCg==

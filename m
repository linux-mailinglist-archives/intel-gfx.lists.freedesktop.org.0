Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JcjjKconf2nkkwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Feb 2026 11:15:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C3BC5684
	for <lists+intel-gfx@lfdr.de>; Sun, 01 Feb 2026 11:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF3610E048;
	Sun,  1 Feb 2026 10:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXaFIp37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27CF10E048
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Feb 2026 10:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769940935; x=1801476935;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JZU9bt1N27gwgWxpm0BJOtZM2PK04DvzaBggWMkh77k=;
 b=UXaFIp37NYHev9bj8f5JvAzDoWJgszGa53mDK+2Ek8tlqkqH20iDVyQY
 9BccuvQocsI35oxMxNbsp4/Td4yo0r+sus+IBgx1fPRkJfJCHA3gYGdkf
 Un7crEQzDOo4vWFSqW/+MFa3ED3U4P8dnk0W6hcsADeeGYtnzbbpxJtvp
 hhDuGl6jgYx00knpRgpKTNFhCNI/G1dbCSh79XmvWXN7gKRf4WxglHzm3
 sw96iYNCATh9b6ULTDq7urkn1Qdt7BOha3lwB81jzw+djZ246jVWKvOTR
 qcTngI4qvxnOIIq4CesV7CyCiyKYqn24vZVxtDQlvaZ2zK5IaNBDCAy1/ g==;
X-CSE-ConnectionGUID: 0LVY7npXTKCKOiZ/0e3VjA==
X-CSE-MsgGUID: ThtelIDZTMajKv5II7MreA==
X-IronPort-AV: E=McAfee;i="6800,10657,11688"; a="93780785"
X-IronPort-AV: E=Sophos;i="6.21,266,1763452800"; d="scan'208";a="93780785"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 02:15:34 -0800
X-CSE-ConnectionGUID: 3bUCFIFMS3Ck8TvF3a90MA==
X-CSE-MsgGUID: /GsH+YZtSNiNdmW+Ntl2+A==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 02:15:33 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 02:15:33 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 1 Feb 2026 02:15:33 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 02:15:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GhCMJrHKH8hIhCM+0iCI95aw0jv57RL35lZay2clAUtzNsjnj/hlcBn7Kbd7l/BLAnjQR6VkiLw1Zdgb5n3a2AA7bRNFLIL9F2zxQf9oGv4C+0ybGEYdqE26iKl9uedjn9hP7BdG3xtvw5fBKPG86vlrH1Fso/ZLWDJ+fuHWLWzAZwG+avkpBISdrlmMAyKNTROaWgfxtEMO+TNmZkz68CpYg2lbzRdEB/OqoXNd/3zltbVALG++iNyLVL9cYyQ8C213NXljWEWunSvkOfGUgtDQAQyOu+fWCsEZ1UHSSFRfH5ZarDvwbVyb15hU0uQB5IzZu/CCd7uRX2RWRfDQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JZU9bt1N27gwgWxpm0BJOtZM2PK04DvzaBggWMkh77k=;
 b=iVIlj7i821KQdlCXSFtV2hPktZkZjpMA6Mc8WY/3sk5ZvQXjOFQffPfVjIQbNzOser68UbEaUF2h/MsgzYoC3oXVClYaOnbN2X6CC2N1rwl5gtac47jZGO4xf/Na/TBViQHuW77qor5e48GZca4A53E8KErWNHCnDum0ISdnXnu/bBRiKXknZWrvzCYpv2XQmL5SmsFCICYUBw7Drl9sYVrFyYKqxKUPjSJ9m0HBdJcGv9fhTg7dZyL6U8m3jWPOoszCOo6TUJWhmp0bR6UpeoAAo7XzhNYnULe0flUE1nDGYCzDqDKC3ak5il/icvVFETm7YqxJDyOFJjqxxTcdrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by IA4PR11MB8961.namprd11.prod.outlook.com (2603:10b6:208:56e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Sun, 1 Feb
 2026 10:15:30 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::22af:c9c9:3681:5201]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::22af:c9c9:3681:5201%5]) with mapi id 15.20.9564.010; Sun, 1 Feb 2026
 10:15:30 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Simon Richter <Simon.Richter@hogyros.de>
CC: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
Thread-Topic: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
Thread-Index: AQHcj8C6wVzGmrsdxUmI2QR5ftbOoLVnGXgwgAALtwCAAACmoIABbuoAgAARJgCAApWmAIACa9/A
Date: Sun, 1 Feb 2026 10:15:30 +0000
Message-ID: <CY5PR11MB636633FFBB10ECA1033BC114ED9DA@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <8e2646fb71b148b3d38beb13f19b14e3634a1e1a.1769541024.git.geert+renesas@glider.be>
 <CY5PR11MB6366560330FE64F22ADF2C2EED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <2dd8286a-a3c7-4a3d-bd5d-011966dc07f9@app.fastmail.com>
 <CY5PR11MB636685688893B7873C3BE85AED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <ab91fa38-2f5c-4237-811e-854d442a71bb@hogyros.de>
 <CY5PR11MB63665464BE137AE70B0D47ADED9EA@CY5PR11MB6366.namprd11.prod.outlook.com>
 <aX0fYgU4FHIbsUET@intel.com>
In-Reply-To: <aX0fYgU4FHIbsUET@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|IA4PR11MB8961:EE_
x-ms-office365-filtering-correlation-id: 6e37295f-aa66-443a-0857-08de617ad431
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TENVME1IU3RiZEY3VTRWUUZyeGpzYThuaWdzdnhzUS82WVIrU2hxeE4vN0Jx?=
 =?utf-8?B?UndOVEljdnpDb0NoTXFyU0xCK3AyVWdiNHczaDlDVGZ2MEQ0ZDVHL2doVXZD?=
 =?utf-8?B?dnNmOFJIRWtldkF4Sms4VVVIMEsrZGtHbC94d2xuMkI2a0NrdTV4ZlkzL2d6?=
 =?utf-8?B?RXBJWkkrZHhXMUhWUnRmdDJsMHpJU21XYkIyMU5GUDMxYmpqOUxORHFjOW8v?=
 =?utf-8?B?R1ZHVERDaCt0NGhRKzZNemRvaHQ0OUVsNjU2NGZXa2lhRkVtWGdJMU5md0dU?=
 =?utf-8?B?WjZueHRUV25tZjhGZVlyL05rZ1R4b1JVbmNxUE50aWpZSGdETlhNY2c1ZlZy?=
 =?utf-8?B?TjJoR1ZMZWdLNDJ5OU95UmtlWVVnY0ZWUExzWHNvWHFKUStmUTJPeklNTFJ3?=
 =?utf-8?B?dTc2dHdOMDNCWGxHUVNYL3AxK3d4NEVHaUdsOXZjMGRwV29xNDlWRGI1QVJX?=
 =?utf-8?B?YUVFMmpZMFJxOWhaYVdMOVNJMjBDdVp0UnFxYUNVMWFCT3AwSFZuU0JqT3c2?=
 =?utf-8?B?WmVIRTErWHNMWUtCYjZBN095V015Tk91ZUJ5ZzdkSmJ2NDFpeWh6NUU1T2dO?=
 =?utf-8?B?RmFLU2NNc0VYM2ZEUXIwL3gzRDNYZ3g3ZUlNUkwvWm83ZEtneUdibUpiZjhN?=
 =?utf-8?B?ZjRtUjd1c05BNU9taE11Yi9sZTdWeHFqLzZCeTg1dHk0dGg1N0ZJVWZTYnFR?=
 =?utf-8?B?Ujl3M3N2akRxNjNra2txNGZCV2FwYzNIaEczTWRqbU5FUlJsbjJpY3FqaWsv?=
 =?utf-8?B?NTN6N01MM01KRGpRWmNIR21lSVVuTGxhZVE0T1Q3TXRUZ1pqYnNWVUtmbFVm?=
 =?utf-8?B?Ym5IZlVxUUJJZDRqWUMzTWs3YXg1KzNoMXJFbVhXTHBrNEo3THgyWTcxbi9M?=
 =?utf-8?B?SVVVdkJhdllqbVVGYzFBL2tTTGVLalRtVWVnQi9zLzFBSUhUWW4xTFZHOU5E?=
 =?utf-8?B?UGZic01qMFJxQXZCSnRWOEttNEFIVEt3ZlgwTWRhV0RMZllIN29jR21tTEV2?=
 =?utf-8?B?bTZyQkw2dk1MeFhIMWJrNDZFOUUzdlUvaWg5NzFZRHlaU1ZORFpFWmdTL0hD?=
 =?utf-8?B?UFdBQ0EwWTdJaUVYaWEvMUZSTlNPcmpzZDdwZGs5NXF3TnAwSktGY0dIQS9V?=
 =?utf-8?B?TGtscERqbmRCc1NiRlhHekUwQjZOZjVDaUJYSURyNUkrOUdjOWt3cDJXekpt?=
 =?utf-8?B?ZVpURVRLZTRQSkIxdndyV2kzWGRaZTVWenpmREVHTkxkNlZlaE9WdWVxOVcz?=
 =?utf-8?B?Vjh3UU1GeVROTERDaTFCOTVNUlVvMWZhYlYxSEh5cUo4b2crazRvN1VxcytN?=
 =?utf-8?B?NU9iem5YK1lYc1RKOUZEMEhSek1QeDFZQVpUdU1FMDVnNjFmQloxWCtidWRh?=
 =?utf-8?B?Zjh5TUNGL0F1aUkybi9sQXhQM29BUk9CbzM4NUhDL1hkNEF3d3FvVFkweEVu?=
 =?utf-8?B?d2FkN1RnZFRLejFGWDlBV0JLWEFjQlFkSnNIMU5tUGxsQUw0dG9rd05HZTNF?=
 =?utf-8?B?UWVubFRWRUJHM1YzUUlxS3hvSlhNMHU0cVNWa3dYY3BCYTRVeHRhb0hvVDBN?=
 =?utf-8?B?MzdTc0c0Rm5aSHM4NEhKVi8wMGUzNWN0VnJyWmNsU21WWmc1YkhEZWZsMThL?=
 =?utf-8?B?SzdYUTcybzEwOTk2QVRPS0VocEpUSzNpQ0QzOURxSzArZy9uOWpSZGE0dWNY?=
 =?utf-8?B?QkhYbnJMOXgzbE00WkVCYkFnZkEzM2hqQXhoRkUyb3hxc2k1Mjh6SDREUHc5?=
 =?utf-8?B?K0Qxa0xkc3BtOW5EdGEwYVhBM250eHpOUlIxL3pwM0ZVaEE3UmJGR0NJUmpR?=
 =?utf-8?B?RkFsUXpaeWVSZXB2UC9aTnJ5TFM3bjJ6amNwNml6eUwzZittVVByelQzQkxJ?=
 =?utf-8?B?Yk9lMTVOZWZNR1QzOThDMHVrd0RwUlR5ejlPTnRBS25SNlVETnNMMXEvcmZP?=
 =?utf-8?B?UEZDWjVITjVnODVkKzJtbHZvTC9aYTdnNStJZzRiZDR0MWMxelJmbHJ5TTdn?=
 =?utf-8?B?TGdPRlkvcjdtQ3hnd1N2NFZnUW81aHRuUWVQUHFCK3RzYVZCS1pxZWxRc243?=
 =?utf-8?B?T0FtL3ZsYkozYTF0b1l3MWVkc1czTXg3ZCtOMmcwOWJnVDFTVFdBYlFhakZz?=
 =?utf-8?B?aTNZMEIvbGFSVjZTUVlPOTRNbGtncHB4cldWempUaUNwZDFOdGV1b3pYZGtv?=
 =?utf-8?Q?rEeu6isGg3bnq/a49Nfr5fU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmhqS1hrSzV0dkZoeXZjdmFjN1IxOTBGWGtnWGVRT3dpNDNvYUtQWWMvY0Fl?=
 =?utf-8?B?Yy9sZlBNeGt5MEpDSVpFemlNd294aUtJVXdPa2laYWxqWlZ1Z0hYSEpCZFdN?=
 =?utf-8?B?Q3BvbzMwWWlTNW53WUdNaU9tQ3FYbnA2a29HOEg5a0MwMkJkNHp4MnViY0g5?=
 =?utf-8?B?VDhyMW5VVGgxait4bURkYUo3S2FlUDVra0RyeDBjZnFCdWNDVDU4RUJDVzNB?=
 =?utf-8?B?M2R2SW9tTWVZWkRlZTJWYnFSQVVBY3puclFYTDIvRkNBQVRKZlZCVWtNdkpK?=
 =?utf-8?B?UzhyeVFkcGErUExRdS93WUUvVzhvZGxsaUg1cXNlNjBlWmZxbXN5YWtUSWEz?=
 =?utf-8?B?akE1Y2VmWlBMM2Nsclk0ZFRqRmFUMTZ4VDFoeFh3YU1vSSsrUFpOOFM3VXUx?=
 =?utf-8?B?NExENjI2UTQxbGxiZDc5WmlRSGpjbmpRQlgxUWxmbVo1cDFQWTZyTlRoc0VI?=
 =?utf-8?B?ZHl4dm5DR0t1Vml6VkRHZE1zQXN3OTE2bzlwaGlpY0Rnb214cXM2TmovNlAw?=
 =?utf-8?B?MG0wZ2dHd0FSN1dTZ2hQQk5mN0VING42eUk1WlhZTXd1aXF5K3l1TnRYSEMz?=
 =?utf-8?B?OE5NUGgrUlpENmRqeElybXNLNXNla0htT3p6eGcrMmtURDNMbVJmUWFYQWhQ?=
 =?utf-8?B?RlFUUVQzOWw1cXpQQmllQXJzNzh6c0o1d0JVT1hXN3QxT3hLbFprOVp3c3hl?=
 =?utf-8?B?QktkbWliWHFyWm1LT3JKQ1dKcTRNdzNEMkJrTkF3bzRIVUUvd0RCYitEWjh1?=
 =?utf-8?B?QWlWWW5MeEFGYmVwczRTV2QveFBleExSMmRyZjEwZzgxQUlpR0hqR0MraHhK?=
 =?utf-8?B?ZjNiNlR0UjBVOHFONUgrc2ZxekNKNVhaNEtrVmtqV3VSNWMxSEZMT3FLc0JR?=
 =?utf-8?B?c3ZIQk1zdElMZ0d1MW1KQkZRMXZpSk5jSDVGSTRYVUo0UnB2SWJqUGphMFV1?=
 =?utf-8?B?T1YwZS9HMmU2Qy84Vkpvck0xQ2l3Q244UnNYcFdlazR5dnRiMTROdVQ1Q3F6?=
 =?utf-8?B?ejJtenpnR2J3OFFBR2VsWW42ekhGdjllRFFKbEVjTVVUY3lLZkI3UkFsVVYx?=
 =?utf-8?B?dFlmV252Ni9icEZwOXprMnJOckg5NGRXK25rVFBIVUNNaGRpWkFQRVEvb2x3?=
 =?utf-8?B?RWxwQWhOV1NiZWxYMmcvb3QxQWd5czhYRkgrT0FkN2FMdm5xT3crT1FjZEZY?=
 =?utf-8?B?VVJjbnVLSDhOZzFvN2JGQWp2dldndnEzcGlWb3V5cFRyQjRHK0dIUjIraGVo?=
 =?utf-8?B?UW9oSUh6UTdsc3F4VmRpemVyR0ZwN1RXblNsYXBiMHZvUFE5V2prZEtFTkYy?=
 =?utf-8?B?Y2VubEN0cS9qOEpIRVlmNlNTN2FJeHR0aHFVTFlQNDZXdDhzcWVFS1hwM011?=
 =?utf-8?B?eEdPM2l3NXZMOVZPeTlTcTE4ZjRmbkJjTFFnYWJzSTBGMkp3TjNWTEo4UThv?=
 =?utf-8?B?VlBWalZ4ZE9ZaENxTDlqY01SbFd3MEJFdkxONGtwMTgrQ3RDSzlQMnFYRHlS?=
 =?utf-8?B?cEZBU0ZWWlR2eHNCQnErREZ6alVodlZvYm02WldpS3J4OVZ3dUl4eG1JR2Y0?=
 =?utf-8?B?MmpWSjA5SndUWlU4YjRyZjNGZ0Rtc2hwQ3NoL0djYkZPang0dS8rSTVUVmZL?=
 =?utf-8?B?RjNZR0pTZ0lpVVFmMTNicy94dlBFV3lBWlEwczNkZW5ORjBNdXFaRStrNzZn?=
 =?utf-8?B?bnBtQkoxMG1oMVlxUW50V2xTQUFaSVIybGdpMWh0RHd1NzJnYUFjSUhQM0I0?=
 =?utf-8?B?R2l5MTM1TGhLVEFOUnZaZ0JaZWhVd1pIcUFqME12bml2WkhicDdYeldRZEVP?=
 =?utf-8?B?VllTcnRoYUNtcGRab0o5WmYrS2V0TDd3NXBRK3NoWS9zMkF3c0FkSGIyeHQ1?=
 =?utf-8?B?V0lndUsyY1U1UmEraHVrZWxYZ21PU09kMEpqeGVPbGlkay9MVEVZcC8wbGtC?=
 =?utf-8?B?MktXTUpuSVczQlNLOWRjaEtsa1k5bU5qVU5uU1R1djhqR2h5UHRneDE4NVI0?=
 =?utf-8?B?OFQ0clhCeS9VRzhCbXF6YThEbFBQY0FmNm1qMnE4d1hIU21WUFpHQXhmVEt0?=
 =?utf-8?B?RUpSSjVlTmIzQVhzcU9jQ084TFVaWUVSWXFVaTR2U0dMbExzR085YXhBa0dC?=
 =?utf-8?B?c2RhUVRBZlM2dVRBVjV6QzNTa2VNbHdmVW9reHF4UnY5YXk4c0lyUzExd2Zw?=
 =?utf-8?B?Z2FwbWlqdi9yK01TWGo2cUliY3hIODBCdElZZ29Ec2V3S3B1d2syTEFCcUd3?=
 =?utf-8?B?b1pWSjJpREYrMXdCQVRyU1hJNmx0dnJnT1ZGNzBBSEtLb1Z4UnVUUzNQMEc0?=
 =?utf-8?B?MWFwQTN1SXZrMlNuVDEwM3ZwSW5EWU9oMWk2QmdkMGM2c0ZXYlQ2QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e37295f-aa66-443a-0857-08de617ad431
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2026 10:15:30.6750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RU8meDGO645aiyD8TTVYBbcpgRnRTxtp94PnhDrHc4F9ZcYtkicvHX7PC/+FXcc9LkDtmkYfOmuSFLAbzodh24GAjcAiFZwAWfe9yKPIVUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8961
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Simon.Richter@hogyros.de,m:arnd@arndb.de,m:geert+renesas@glider.be,m:gregkh@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:rodrigo.vivi@intel.com,m:geert@glider.be,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.usyskin@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,CY5PR11MB6366.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[alexander.usyskin@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 01C3BC5684
X-Rspamd-Action: no action

PiA+ID4NCj4gPiA+ID4gVGhlcmUgYXJlIGRpZmZlcmVudCB1c2FnZXMgb2YgbWVpOg0KPiA+ID4g
PiAtIGZvciBkaXNjcmV0ZSBncmFwaGljcyB4ZS9pOTE1IHdpbGwgbG9hZCBtZWkgdmlhIGF1eGls
aWFyeSBkZXZpY2UgYWxzbyBvbiBub24NCj4gPiA+IHg4Ni4NCj4gPiA+ID4gLSBmb3IgaW50ZWdy
YXRlZCB4ZS9pOTE1IGNvbW11bmljYXRlIHdpdGggbWVpIGZvciBvbi1jaGlwIENTTUUgLSB0aGlz
DQo+ID4gPiBzY2VuYXJpbyBpcyB4ODYgb25seS4NCj4gPiA+DQo+ID4gPiA+IElNTyB0aGlzIHNo
b3VsZCBjb3ZlciBhbGw6DQo+ID4gPiA+IGRlcGVuZHMgb24gWDg2IHx8IERSTV9YRSE9biB8fCBE
Uk1fSTkxNSE9biB8fCBDT01QSUxFX1RFU1QNCj4gPiA+DQo+ID4gPiBJcyB0aGVyZSBkaXNjcmV0
ZSBpOTE1Pw0KPiA+ID4NCj4gPg0KPiA+IERHMSwgQWxjaGVtaXN0IGFuZCBzb21lIHNlcnZlciBj
YXJkcyBhcmUgc3VwcG9ydGVkIGJ5IGk5MTUNCj4gPg0KPiA+ID4gRFJNX0k5MTUgZGVwZW5kcyBv
biBQQ0kgJiYgWDg2IChzbyAiWDg2IHx8IERSTV9JOTE1IiBpcyByZWR1bmRhbnQsDQo+ID4gPiB3
aGljaA0KPiA+ID4gaXMgd2h5IEkgZGlkbid0IGFkZCBpdCBpbiBteSB2ZXJzaW9uIG9mIHRoZSBw
YXRjaC4gSWYgRFJNX0k5MTUgaXMgdXNlZnVsDQo+ID4gPiBvbiBub24teDg2IHdlIG1pZ2h0IHdh
bnQgdG8gY2hhbmdlIHRoYXQgYXMgd2VsbC4NCj4gPiA+DQo+ID4NCj4gPiBMZXQgYXNrIGdmeCBw
ZW9wbGUuDQo+IA0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiANCj4g
PiBSb2RyaWdvLCBpcyBEUk1fSTkxNSB1c2VmdWwgb24gbm9uLXg4Nj8NCj4gDQo+IE5vLCBJIHJl
YWxseSBkb24ndCBiZWxpZXZlIGl0IHdvdWxkIHdvcmsgb3V0Lg0KPiANCg0KSW4gdGhpcyBjYXNl
IHRoZSBiZWxvdyBzaG91bGQgYmUgZ29vZCwgSSBzdXBwb3NlOg0KDQpkZXBlbmRzIG9uIFg4NiB8
fCBEUk1fWEUhPW4gfHwgQ09NUElMRV9URVNUDQoNCi0gLSANClRoYW5rcywNClNhc2hhDQoNCg0K

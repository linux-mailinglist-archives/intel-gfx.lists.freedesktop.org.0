Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022F69AE31F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B3D10E8FC;
	Thu, 24 Oct 2024 10:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KpModakn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9060510E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729767215; x=1761303215;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=EIIYcHyX9cWR4HutooqP3262+yDyugWyY0NGitA5meU=;
 b=KpModaknNMtgqo0W1fw7lAXEVop9ZAwpsjh7iWVZTHjwlIzp87cm39a2
 xHkWv/v9azoBU18E2SDUyc6CV2eduM+ljssVQbw46tmgWw8KCqa3kw5iW
 wiXkScWGuTYwsTPUKAVy8rE4EJ6TqCqb0YIGGtydjArIh5EYiEUacxGnL
 76S3cO1NaI9+333WkCdXMx5btw89rz15hXfLa6Qer2VcmmSRvPfx1z2ru
 Vv60vlI10Ef3z7tYBRPXpSuNB7Kg9kkTdVjyq7JfUjWavUCAhMOiCAt9R
 Bb5hpGE6cfX40l68d1rKCUrB32uI1olnHwF+8YbrcwCLuTYnZUBJ+8afH Q==;
X-CSE-ConnectionGUID: v2V4vC0JQlSb72YXL8UlcQ==
X-CSE-MsgGUID: en1ZQlxaRjyfCSsdrwh/QA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="40760641"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40760641"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:53:34 -0700
X-CSE-ConnectionGUID: VmwlkiTiR7uLyGgp9xyVJQ==
X-CSE-MsgGUID: qFaNvqDvR0yGnCbqpjIFgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80728520"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:53:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:53:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:53:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:53:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SQTn/lAHFrFMd+XCE4cIjBdMMctZKlv5urGeLZblTCX3CzpXyc08QT/uRV6jqYcL4Mk1/b+MmN6mlXtZAAhexwXFDqu76s6UfwP4fYWB5XphqFOwZWgdgnmqTctgsZ3QsTV4VEJvPkL+zikKBHY9uHhIj/2yhuiCMk6sZROR7w7rv6z8G7ohAYL/UMT1/HcJ9CfS6A59HqlcV2MMjgf79SBzqnQwLwbzUT++Lp5nKENgfUo9VFRtNvOpeP0Qbn+MrupSXuG1g98XrMxfudm9Eko9s5Sq6b+igU2SVefSBQ4Q4rPXo36ZpdUjOUdEDfoSmsAY/6M3Pbmo7D7V2/NW5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EIIYcHyX9cWR4HutooqP3262+yDyugWyY0NGitA5meU=;
 b=CEVc/B6bDO8oruH6zaplIOyFByWbSI+z9RUcC1MPhMoLd1OZ34icJ4oxZaUU6TgBDmsYzUH+zta+4X//luryP0MRfI8KvAannMsZJAjUOW+/1iYiHcSd0Qn8tUf/AZc7kAZOO2EWke9YFtdWuBPkoypGrXKtuHp5A7JTclfgeNARv2RuQXrn8RDIojB7ONOmK3T9Cinmbm3cO79EBJjS5PcFACTGw+1cBQDZMBUDYnDJnVdYj/Vgtuty6Zm/uG9mzk+XLbplvg8asKTIkI8ChBJLaoEBxRHxesPA0azOK/PZ02ocbln56h//2/TWwc6XoxO4DOQNEH61JoktFcQ3Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 10:53:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:53:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 9/9] drm/i915: Carve up skl_get_plane_caps()
Thread-Topic: [PATCH v2 9/9] drm/i915: Carve up skl_get_plane_caps()
Thread-Index: AQHbGzP4tgW4B/ZOLUqmdrsgiWjwKbKVz4QA
Date: Thu, 24 Oct 2024 10:53:31 +0000
Message-ID: <200c81d94023b0cf0ef1902458825bf27593ece1.camel@intel.com>
References: <20241009182207.22900-10-ville.syrjala@linux.intel.com>
 <20241010164617.10280-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241010164617.10280-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: a1251407-66f0-45e2-605f-08dcf41a194a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OXJNbFk4N2ZlTkhJOTc5c2xaRCs5VXZwQTlWdUtuYzM2eElyRzQvYUM3SGFW?=
 =?utf-8?B?ZmtCaFdTYlN0MExHVUhwakFIdUZBUjkvWWpIUlZtZG4zbEFUdXM2MHJWNDEz?=
 =?utf-8?B?UVpuT3BFdFNZdlNsWHpnRjFKMVluN2xXMUJEZWpwZElnbmxRVTJRYWxuVzY5?=
 =?utf-8?B?K2w4VTZMSDNWa2pUc1p2c2VhcFNsV3A1Si9Ydk5EbVRtOHIxQkxNUEx1UGJQ?=
 =?utf-8?B?ejZQZk1iR0RIVk1aTytzQTYvb296b3E0Rm9aSlJKSnc5SDNMaUJIUzB6TEJH?=
 =?utf-8?B?ellITURDVm40ZklLZzkzaUFreHExQ2FaMWF2bmFWMitiVWVpUkZlSkk1K2U2?=
 =?utf-8?B?VlhhVk54QVpoK2xhYVBrNlZ1N0JQSTRkMXlPYndpSjFBWm1KVENXeVFjNU5l?=
 =?utf-8?B?UUgzbGZObm1FeDBnaTRoRHllN2xSRno5bnZ5QkUwTVhaWjBzYUhHV1YwTldE?=
 =?utf-8?B?MDM3dUQxT1IyNnNiemxOZkdlVGxpOUdMaTRLSnh5Smx5eGF3REdlOW1yQk5W?=
 =?utf-8?B?VjB4Mk9Zb2ZMY0V5eG5PejdVRWVscXVCT1lmNEJvU0VMV0xPK3ZpUVJWVzUv?=
 =?utf-8?B?cXNWb0xvMFBWZjZ0YXN2SjlsRlFHL3Ftd2x3UERKK2VvYmU3M1o5YmlOa1p4?=
 =?utf-8?B?cVdBbmtkMXN4TmhrUFV5cVpiajBET3JveHpXL080Q0I5akZubFFEcXhIZkFQ?=
 =?utf-8?B?cjRTNXZuam8ycTNZQ29QaVUyUDBybDZnWXJlRnJtV3NpOTZ3L0FhQ3RhNVY2?=
 =?utf-8?B?alBUYUI2MFVEdkpnVTRmRzV1NjhTTEFJZWpUUEZIRFY4K1ZRdllFY1VCQ3Nt?=
 =?utf-8?B?Q2RIZlYvUW9ZcW1TTGgzTmRWblppSHNjc1NyUDVOZk13QnJDejFzbGRxVGYw?=
 =?utf-8?B?RkN1WHdMQ1pFSjVhRkdpa3hUVlFzL0FhUE1GUjhGQkNvdTVXVjVKMHZKa2Ur?=
 =?utf-8?B?UjRBdS83eWRndS9QVmtrK2JWQ0JJb0RqeXRzZ2lxL3ptbndyWldkL3ZGQ3My?=
 =?utf-8?B?R0VTWkhjVjkxYWtXWlMzY2U1QmxzTHpUS3Nadlc5THE5U1VNaFdnZTc0UmRQ?=
 =?utf-8?B?UEtDeWc5WUF1L0Fud1RPWkpYTG54RCt0ZGIyRUpVZXhpUjgzZGtMSE1iUVVy?=
 =?utf-8?B?VEtwdTB0NHVkZmtmd29XdjlhandNZHl2bXBpM21PdDFuVUlRdFY1WDVCbHRV?=
 =?utf-8?B?Yy9BWmpPUVZQQ0d0RXo3Ykluem1tUGZ3N3RWeEkxWG8vTTdCRXlNYVphNGZE?=
 =?utf-8?B?bXhHNWc5Rmk3R1Jjb3ZReUZHekhxZng5aGNKR1hvL2pMT2tiUUZxb1FpTFMr?=
 =?utf-8?B?VnlYeGZzV1Q2V0hUTFppTFhtcENiU3NBUUdMMEpxUzRuMDducTltZUR0L052?=
 =?utf-8?B?TXp3VVhRVkFXTlFjZ3NkQU1xNC8wUkhrS1p6T3dPRndhdDNkbXhKMExES2p0?=
 =?utf-8?B?cytmMmhLV1d5MUFjNkpMazJ4V2ZHTTNTYXFQV3JUK2tVN0ErL2pnMUlIMzZV?=
 =?utf-8?B?LzB4SmFYOWlEdDBuZFJJSXRqUkFLeDdhNFg5SGtzd1RyY1dJQUNXSlZkSVJV?=
 =?utf-8?B?VFp2MGtTcG5WdTJVS0ZHK0t4TVBMc0FqOWNtVWs3MFg4Z25RSHFzbjduUlpw?=
 =?utf-8?B?bVgrWlZ2RXlxd2t6ajJDOGFkTjZ5aWE0S2V5enU1RExBTm1RMnFaelY0VUwy?=
 =?utf-8?B?Y3B2RDE1QWp5bVE5WDExYWFUUHUweXluVXY0VVVUT252am1RU1JhR0pIdXYv?=
 =?utf-8?B?dXJwbDZXM1ErL1RpbDFwbktJdTduWGM1UFdHN3BzS1FzTG5CRUE4WUd1d2Ix?=
 =?utf-8?Q?g4RcxoL3TWeOFVg1TnI8itaeZusBZ8TOZM7+E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXpMRVBDTEtBanJpRzYwN2ZZdmx6bURvL1BWSW0wdG5ZdVU5cnBJb1dqTVJW?=
 =?utf-8?B?dTlYOVd1SWxrYjJ6SElQYVp5VWNLaWcxbEFjbVJpV1RQYitVMHR1aWY1bnkz?=
 =?utf-8?B?NHMwN0JPWnk5ZmNhRVljSDlpajVMRGdVcDkzZlVRSTRySDFhM2F0WFUxcGor?=
 =?utf-8?B?R3lMSU1JODlQSnpyUGFqN0VNVm9hL3R1UklMTGVHVXk3aUZpT1ZGV1VEWXg4?=
 =?utf-8?B?QTFzMndmTW5tZWFKSUhnY1ozY2VaY1o1VjNlYWNrejFtNGp3TXRKUDJBN1lS?=
 =?utf-8?B?alUrODZxYXZ3RUplY080dVdpbys1RTZNS29NM24vRWFkOVlNKzNOT0ZYWXVU?=
 =?utf-8?B?Ym1BQUJtMmg5b0VJVkdZQlN6T0lmN3hsb1NZaXpjSnlwa0FZVXJic0JBVXRv?=
 =?utf-8?B?dUFFS0E4M1Fkampzdjl0Wk9xMDQvU3orVEF2aWRMUjFpcnUrVzF5RXVtWFE5?=
 =?utf-8?B?eHJrRE1jRU0vczhKeVBISDdMZnJHSUtLdWxzUGNLNERzdXY1b0JCZS9yNmZy?=
 =?utf-8?B?VDFSQ0R6TW9rLzNFTkFoK2h5OUJxQ2hCeTlzRzlYV0hBQk1ZVnlDcmpGQXpH?=
 =?utf-8?B?SWRtdkIyZi9RR25POXdqQkY3czJPcjk4dnZZSklyNm1ja2NGSkpFZTNxSkdG?=
 =?utf-8?B?NWdrdFNLY1ZpdDcxcnhVZXJZbVZNQVlWellYMTFBb0lmSHl5L0dBVGxKeC9x?=
 =?utf-8?B?NS9kYkhrUUlNU0VCaSs2MnBIMXAzenJGRGtrRFpna1RuZFpyTktaV1dqR1lJ?=
 =?utf-8?B?UFpxUTRxL2VNeW03M1VoanBmRkgzT0VoV3BCZE03MkszU0JtbGhxc3VHVVRU?=
 =?utf-8?B?aUxaYVR1ZzhHOUlUOWdvQlZpc2RMQ0U1YndBQ1lIUUZXb1RhbUdXVkE4aGw3?=
 =?utf-8?B?SklVVG9JeWdCZGE0eCtTRkFzZ1dCYjJhYVpIK3BlNlJ0MFlpenlZenpnU3Qv?=
 =?utf-8?B?TlBYWHVVVTBLYzExNlkvVWNLajBUYmFMckZjS3FMM1IyNnFoVGV3eXFqT0Z2?=
 =?utf-8?B?TTRrOHBnOWpMSys4bE94S0tldzVqNkg4Y1dDYWtZY2JJNXZYeTdhODBMbnlv?=
 =?utf-8?B?T2R3VGhjZElyR3dHemNhc29EaUhpbTYwQjdMNENJbG9jam5UM2xrSkFVbjFl?=
 =?utf-8?B?U2NJRy9Cd29sVDlTYi9OUTZZQUJjWjV6UWM2NVNuQkQ4MFBxaDRmcVBJcUlh?=
 =?utf-8?B?NTZHZ3E2S3RXMDM0dkp0WER5dUdiTnBlb0w3djlnZk04S0hmSGxWOENTMEZN?=
 =?utf-8?B?NUpoKzI1bzlWZTJ0bC91SjhvT2FtdEdFQVJWbm95cDBRM3FkNzdXZXUxcmg3?=
 =?utf-8?B?MTBsdVZabkRqc1hJRlFocUtRbkN1OGxrRGxISUZDei90N3FlQ3V2OFhmV3hJ?=
 =?utf-8?B?MWJ6Ynk2eXZBTXdtNjdZUWFaYkVMcUZpbVhEbFRYUVU1K1FkYmpPanNmbnN6?=
 =?utf-8?B?MktIdnpjT3U1aEdqYzNuYXkyR1lVUjlsNkFCSVhZV0QvL0lmaG15ZVdCMUQr?=
 =?utf-8?B?cFZIb1U2WXZwamhxVU4vUGNoSldlSmZNYzRSZjl1NEQ0NUJwTnNRaml5UUQv?=
 =?utf-8?B?WW5YUEZ1L1lpNVRRRXJvZ2xqRSsxR3ZSOC9Uc3pQMW95VC8rT3hBaFFyTWRo?=
 =?utf-8?B?aHp1dlhiWnREajdKU0hlOGk5aGV0UHZEZUxkZUUvMU54UE1PMTE3K0oxSGVE?=
 =?utf-8?B?K1dnZ0habFRvUUVHcDFMaDNMLytMZ2VJcUVzdFFGcjVXTkRacG1ZOENiN0g1?=
 =?utf-8?B?NmFpN2h3c3pwenZSMHV1VUNYOEdTOGRqRUIvRG93V1NmNGZ3c24rRGxPOTEy?=
 =?utf-8?B?T1dNeWdVajZzOXhPMnkrZkk3RWVFeXVXR0dRRjhSTzBESkRLOHV0ZXpMM1JG?=
 =?utf-8?B?U2h0anNJZ2JIZjVhTFE0UlREaUFFYml1UU8zT0tVV1ZERG1Nb3h4NDh6R3Nl?=
 =?utf-8?B?S09mYUNBSnV5Y0N4VVR5QVZZRTllOEtQOW1icGI5UHk0TlI4Vit0dnpxUXBo?=
 =?utf-8?B?MVBBb0NwWGk3c1UzRFhOeTNId0h4NlAwUTRzTkMrdHhCYmpPUHlPUGNoclNK?=
 =?utf-8?B?bkwwOHVDOVRiUCtXeCs0bVBEYUFROG55UzhSRnVLand5aU1qb1MxMnJNU2ha?=
 =?utf-8?B?YWZiYThBcFhUdTNQcDFVUGZMQkl2RE01WWcxemdhdmxicnFkdndCZGw2REVE?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1F80DCDBB690844487169D9BE5CA8F0A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1251407-66f0-45e2-605f-08dcf41a194a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:53:31.0299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RrjR+Z8r2JmId18eP2ZRKK71oX3BMdnhgaTTADfEefcNjIS6cHY0CCcb42K33mI5XrCgCf2ubllOvfuOgMZ1hFmgmN80iBgArvxub6/I9Nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gVGh1LCAyMDI0LTEwLTEwIGF0IDE5OjQ2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gU3BsaXQgc2tsX2dldF9wbGFuZV9jYXBzKCkgaW50byBmb3VyIHZhcmlhbnRzOgo+IHNrbF9w
bGFuZV9jYXBzKCksIGdsa19wbGFuZV9jYXBzKCksIGljbF9wbGFuZV9jYXBzKCksCj4gdGdsX3Bs
YW5lX2NhcHMoKS4KPiAKPiBNYWtlcyBpdCBlYXNpZXIgdG8gZmlndXJlIG91dCB3aGF0IGlzIGFj
dHVhbGx5IGdvaW5nIG9uIHRoZXJlLgo+IAo+IHYyOiBza2xfcGxhbmVfY2FwcygpIHNob3VsZCBy
ZXR1cm4gdTggbm90IGJvb2wKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoKPiAtLS0KPiDCoC4uLi9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoCB8IDgxICsrKysrKysrKysrKystLS0tCj4g
LS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jCj4gaW5kZXggYmNiNDhkODkzMmQyLi40OTI0ZmMzNjE5YzUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+
IEBAIC0yNTYyLDQ3ICsyNTYyLDczIEBAIHNrbF9wbGFuZV9kaXNhYmxlX2ZsaXBfZG9uZShzdHJ1
Y3QKPiBpbnRlbF9wbGFuZSAqcGxhbmUpCj4gwqBzdGF0aWMgYm9vbCBza2xfcGxhbmVfaGFzX3Jj
X2NjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBw
aXBlLCBlbnVtIHBsYW5lX2lkCj4gcGxhbmVfaWQpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGk5MTUpID49IDExKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gdHJ1ZTsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgaWYgKElTX0dFTUlOSUxBS0UoaTkx
NSkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBwaXBlICE9IFBJUEVf
QzsKPiAtCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBwaXBlICE9IFBJUEVfQyAmJgo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKHBsYW5lX2lkID09IFBMQU5FXzEgfHwgcGxhbmVf
aWQgPT0gUExBTkVfMik7Cj4gwqB9Cj4gwqAKPiArc3RhdGljIHU4IHNrbF9wbGFuZV9jYXBzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBwaXBlLCBlbnVtIHBsYW5lX2lkIHBsYW5l
X2lkKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgdTggY2FwcyA9IElOVEVMX1BMQU5FX0NBUF9USUxJ
TkdfWCB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoElOVEVMX1BMQU5FX0NBUF9U
SUxJTkdfWSB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoElOVEVMX1BMQU5FX0NB
UF9USUxJTkdfWWY7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChza2xfcGxhbmVfaGFzX3JjX2Nj
cyhpOTE1LCBwaXBlLCBwbGFuZV9pZCkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX0NDU19SQzsKPiArCj4gK8KgwqDCoMKgwqDCoMKgcmV0
dXJuIGNhcHM7Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIGdsa19wbGFuZV9oYXNfcmNfY2NzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHBpcGUgcGlwZSkKPiAr
ewo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBwaXBlICE9IFBJUEVfQzsKPiArfQo+ICsKPiArc3Rh
dGljIHU4IGdsa19wbGFuZV9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBw
aXBlLCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgdTggY2Fw
cyA9IElOVEVMX1BMQU5FX0NBUF9USUxJTkdfWCB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoElOVEVMX1BMQU5FX0NBUF9USUxJTkdfWSB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoElOVEVMX1BMQU5FX0NBUF9USUxJTkdfWWY7Cj4gKwo+ICvCoMKgwqDCoMKgwqDC
oGlmIChnbGtfcGxhbmVfaGFzX3JjX2NjcyhpOTE1LCBwaXBlKSkKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfQ0NTX1JDOwo+ICsKPiArwqDC
oMKgwqDCoMKgwqByZXR1cm4gY2FwczsKPiArfQo+ICsKPiArc3RhdGljIHU4IGljbF9wbGFuZV9j
YXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW0gcGlwZSBwaXBlLCBlbnVtIHBsYW5lX2lk
IHBsYW5lX2lkKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIElOVEVMX1BMQU5FX0NBUF9U
SUxJTkdfWCB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoElOVEVMX1BMQU5FX0NB
UF9USUxJTkdfWSB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoElOVEVMX1BMQU5F
X0NBUF9USUxJTkdfWWYgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBJTlRFTF9Q
TEFORV9DQVBfQ0NTX1JDOwo+ICt9Cj4gKwo+IMKgc3RhdGljIGJvb2wgdGdsX3BsYW5lX2hhc19t
Y19jY3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHBsYW5l
X2lkIHBsYW5lX2lkKQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1
KSA8IDEyKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4g
LQo+IMKgwqDCoMKgwqDCoMKgwqAvKiBXYV8xNDAxMDQ3NzAwOCAqLwo+IMKgwqDCoMKgwqDCoMKg
wqBpZiAoSVNfREcxKGk5MTUpIHx8IElTX1JPQ0tFVExBS0UoaTkxNSkgfHwKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgKElTX1RJR0VSTEFLRShpOTE1KSAmJiBJU19ESVNQTEFZX1NU
RVAoaTkxNSwgU1RFUF9BMCwKPiBTVEVQX0QwKSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIChJ
U19USUdFUkxBS0UoaTkxNSkgJiYgSVNfRElTUExBWV9TVEVQKGk5MTUsIFNURVBfQTAsCj4gU1RF
UF9EMCkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+
IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBwbGFuZV9pZCA8IFBMQU5FXzY7Cj4gwqB9Cj4g
wqAKPiAtc3RhdGljIHU4IHNrbF9nZXRfcGxhbmVfY2FwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGVudW0gcGlwZSBwaXBlLCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKQo+ICtzdGF0
aWMgdTggdGdsX3BsYW5lX2NhcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBwaXBlIHBp
cGUsIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKgdTggY2Fw
cyA9IElOVEVMX1BMQU5FX0NBUF9USUxJTkdfWDsKPiArwqDCoMKgwqDCoMKgwqB1OCBjYXBzID0g
SU5URUxfUExBTkVfQ0FQX1RJTElOR19YIHwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgSU5URUxfUExBTkVfQ0FQX0NDU19SQyB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoElOVEVMX1BMQU5FX0NBUF9DQ1NfUkNfQ0M7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAo
RElTUExBWV9WRVIoaTkxNSkgPCAxMyB8fCBJU19BTERFUkxBS0VfUChpOTE1KSkKPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfVElMSU5HX1k7
Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgMTIpCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR19ZZjsK
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKEhBU180VElMRShpOTE1KSkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR180Owo+IC0KPiAt
wqDCoMKgwqDCoMKgwqBpZiAoc2tsX3BsYW5lX2hhc19yY19jY3MoaTkxNSwgcGlwZSwgcGxhbmVf
aWQpKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhcHMgfD0gSU5URUxfUExB
TkVfQ0FQX0NDU19SQzsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BM
QVlfVkVSKGk5MTUpID49IDEyKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfQ0NTX1JDX0NDOwo+IC3CoMKgwqDC
oMKgwqDCoH0KPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX1RJTElOR19ZOwo+IMKgCj4gwqDCoMKgwqDC
oMKgwqDCoGlmICh0Z2xfcGxhbmVfaGFzX21jX2NjcyhpOTE1LCBwbGFuZV9pZCkpCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBzIHw9IElOVEVMX1BMQU5FX0NBUF9DQ1NfTUM7
Cj4gQEAgLTI3MTQsNyArMjc0MCwxNCBAQCBza2xfdW5pdmVyc2FsX3BsYW5lX2NyZWF0ZShzdHJ1
Y3QKPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGxhbmVfdHlwZSA9IERSTV9QTEFORV9U
WVBFX09WRVJMQVk7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBjYXBzID0gc2tsX2dldF9wbGFuZV9j
YXBzKGRldl9wcml2LCBwaXBlLCBwbGFuZV9pZCk7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMikKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y2FwcyA9IHRnbF9wbGFuZV9jYXBzKGRldl9wcml2LCBwaXBlLCBwbGFuZV9pZCk7Cj4gK8KgwqDC
oMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDExKQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBzID0gaWNsX3BsYW5lX2NhcHMoZGV2X3ByaXYsIHBp
cGUsIHBsYW5lX2lkKTsKPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZf
cHJpdikgPT0gMTApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhcHMgPSBnbGtf
cGxhbmVfY2FwcyhkZXZfcHJpdiwgcGlwZSwgcGxhbmVfaWQpOwo+ICvCoMKgwqDCoMKgwqDCoGVs
c2UKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FwcyA9IHNrbF9wbGFuZV9jYXBz
KGRldl9wcml2LCBwaXBlLCBwbGFuZV9pZCk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyogRklY
TUU6IHhlIGhhcyBwcm9ibGVtcyB3aXRoIEFVWCAqLwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIUlT
X0VOQUJMRUQoSTkxNSkgJiYgIUhBU19GTEFUX0NDUyhkZXZfcHJpdikpCgo=

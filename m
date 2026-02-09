Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKolNfnbiWndCgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:07:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D85710F6D9
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3631010E3C9;
	Mon,  9 Feb 2026 11:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIkIf8av";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B664C10E066;
 Mon,  9 Feb 2026 11:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770637807; x=1802173807;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iakn4sC//v6O+oYewRUz6RFUpVul1TYeMrKygzE7Ebk=;
 b=ZIkIf8avXR9J1xrYBgWCd0MEyH3BHpDkYj+yEJAZErKQqHxG5Rhh7pV4
 ATdspqH/EqVYc/Il1BlNexiTQvSlLHssOT0mdYOxbzaZGlg/qSH4wYiId
 wG2A/zGeig/tmh+1tlnW3pqm/9/7o9JFpnjPctikY9c0HO8fBxOHXDlke
 YDmURsBCZ/DK3F/CKCZX5gG+f7/qz4I7z39quVC+Du8Y+UNRTLvYX1hlL
 YQlTjsQUvlc1uHYBs+l2Bw/N6tas8aitG9iITBRmbtfU/R7AKg59gcBZs
 BRUzzU2xsDsBsgfksrH9DwdyGSTZMnOG+LJ13N53W+3gScJbhf+yIgC58 g==;
X-CSE-ConnectionGUID: oaaLrOioQrSSFQIwhyEo/A==
X-CSE-MsgGUID: /HpLri7/R+aifxeWmUkh7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="70952873"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="70952873"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:50:07 -0800
X-CSE-ConnectionGUID: ED+dpS9ISTSD3QDxd2dZXA==
X-CSE-MsgGUID: DhOUU5GlTRSNAAqOl8rLUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="211380590"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:50:07 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:50:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 03:50:06 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.18) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:50:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l3H516HEXIhMQI1V5Kjtlg5jEG/T3W379ysJoIsfS3H9mfJ+6T+Ek2xeep6pFKFd6Jk0lbvqge6UelPuYn+NtUMLKfb3J7s+CqNmCnJzxKIAdbo96U6Am7+JBbVAymOsq48neNwa2y0OgILoeRDGqt6O7NBiwA3asNXgC/DxPD5uNqsKTUUYzJSn+EgDeFhsNzt2T2Uho4+vwK+VTJQcbNG1ZW0S1a8nctPptBKOmxMqRq7Tupt1x/AH9QeJfCB7bH69BlLI9ala48LDSy8kq5q1+j4FZGeciKJSmk+r0WjWQCxUnzc8Fi07U7uxDmlOSLHI56ATUm5dQX96srQ0rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaWAuUpMbFd9dWmWCv8lvU19dgedOgcsJaFruo/s18c=;
 b=AydHVug3FFBWcTl1in9eoHuUMwFOd8Ow+wZP8xq1kIos0PgKU5LoRg4KL5eQfWU68L+HVdOZYJMrltlYD5bsl0ZQOvPAF0MMvfH+NpjUmIkVOV0DyUZguTmZwmIJT7hSzo9nR9YAdv4qFv05yALt276khEh8+uvF6qnPf+UkAJMlTVrwxL99Orz1qM4Dt93YWOijbV+NzIyNzLlq3JUE5WSPiFPHnmORAf99F0j/5cDO9qLi9dV1xb+LQ8o8UivKkB1P5kmVUENpu9kS4pH/ranQU0k1V3OrY6GSvP68ip5WdelGS0q0ZHWUyaeTsewL/+j2u0XYVvKwX2UuesV0qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB6166.namprd11.prod.outlook.com (2603:10b6:8:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 11:49:58 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 11:49:58 +0000
Message-ID: <2cbfae41-a000-4b54-99c3-964a06f97bc2@intel.com>
Date: Mon, 9 Feb 2026 17:19:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Content-Language: en-GB
To: <imre.deak@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan> <aYmyafbsHVRH2crC@ideak-desk.lan>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aYmyafbsHVRH2crC@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0239.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DM4PR11MB6166:EE_
X-MS-Office365-Filtering-Correlation-Id: 06ed8e61-55bc-4cf8-494a-08de67d1596c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFJ5dnltSll5Qkc2S2dvREVXTzhSV3JoUThKUkF0RFJlbm0yWDZGeWhqVDJl?=
 =?utf-8?B?L2VPTkZSaTNXNnVxY3dzVHVveHZKT2lFZjVmWEdJN2tGUEQwMDJZcXVwNVF5?=
 =?utf-8?B?WVJoQWlQOGdtME53cTFUZ0ExL0ZjYnBsUklYbUZPUmFhR2xkYzFmdG5QODdy?=
 =?utf-8?B?VWVldmh5d2phMEhHaUlCR3J4aVJBVVZCdU1BZkVRV01sTnZPN2hYSitWMEt3?=
 =?utf-8?B?QlVhalBCRWl6NnRGYjN3T3ZuK2pxMHYwT0RPR3R1My9TcGhxU0I0ajJkbWpi?=
 =?utf-8?B?M05wNTRFZ3ZlK0RWTHB1U1NaT3F1S1RDVk5Wcm05QURwSFU3WERGL0JmcnRy?=
 =?utf-8?B?UDdDdjVacXVmcW1ySmNUeFBaNDhiWE9ob3EyQXZ3L1p0eFdIN2VHUyt2NDN6?=
 =?utf-8?B?Z1gwSmY1UDFSeEVxSUVkMWExUHMyaUliRFVjdE1rNEVnd2ZSdENhOENpOWZI?=
 =?utf-8?B?Q25HQkVCS3BjMTBRb3VHMHZoVkhhSUkwQzA3TkNicmF6eWRMWjRtT3pZVHVX?=
 =?utf-8?B?VGhoWnZnU3I0akhQZ0xISWdTS3hBN0xHL3Z2cHVQenRGU254YW14enVBREFQ?=
 =?utf-8?B?eXd5bGtLU2hDc05TeVk2MndDREJnbVlrbTgrN1NRUWJINGZGZVJsczNiaFFj?=
 =?utf-8?B?UVdtUFhRYVN0SGRDY3h5aFEweFNCdkVKempPUThNZE56bURhNmNMZlE1QU5P?=
 =?utf-8?B?S0tnaWFtb0Z4YW1uYzRHbndiMGVJMHphMXByaDdvZkM2U1ZUZFVsWXI4UXFY?=
 =?utf-8?B?QzIrcTV0MkVOR3hmUDNSQVhRdzJmWHFXWTJQc3ZXdG1oY1FVZXdpb3RJVGJ2?=
 =?utf-8?B?bmZTSURDdDFpSytSNkJpV01jaGdDWERpQUJ4b01DeWdSV1JRUC9zK1ZIMnRR?=
 =?utf-8?B?YlFMN2JXVnNZTVdTQVlDWU1QYXZyZzJ6dHR4aXp6UGNVOFZPTjhXYkdFKzk3?=
 =?utf-8?B?Q1pocThIWlZSOWtid3RaT0NBTU5YZVVFT2RSWGhtRkwwRHcwN1ZIaXRld0s5?=
 =?utf-8?B?YThrbk13ZHBWWVVTU1YrZ1M4ek1LdkQyRjZvbzk4bEJFQ1dRYzh0QVh4ZC9Q?=
 =?utf-8?B?cnRmOUt0QWljMXh6aEpRT0ljWFdaU0Q1L1BOQlM4bHdFQk45Ui9HckFJY1Y2?=
 =?utf-8?B?L09nWU1PY0pJRWh0VWEyaklra2pqaVA2SXBSK0Zla2s4YXBJZnRMV3EraStE?=
 =?utf-8?B?N0VxcGE4ZmwvU1dYTng4d1VCelNtaXFGL0RpRU1CN3dhd2tiWWt4UU0vZmY4?=
 =?utf-8?B?LzkzNEFualQwWkdTMFlSaVJRNG1aN0hDeTJKSWxSbHozUGVpRkVzVElMRUp2?=
 =?utf-8?B?N3dlY2laaDlFTnZlMEpkS0J0RnZCWFRFL2ZpaHk4ZTdoSURHS1dVZ2MwbHlw?=
 =?utf-8?B?ZFdaWlZQVXJuUHRpdG9qVEx4YWs4K2ZQMVpoclMvdDF2VGtTQXZyMXhOL0lw?=
 =?utf-8?B?cGdtMWt4aGZqZy8zZzM5a3hyNEw3ZE1xN0Y5ZFg1ZnkxeFNrUHUxMnZzTTEy?=
 =?utf-8?B?bHZXbWJJWEJ0WlltQjdPckx6Qjh3T2hRRHkxZllGNkhMTnMwRW95dGJ4MGU2?=
 =?utf-8?B?ZXRlN3ZUZWpBRCtFU0RGKzVHaEdXVzR6MDV2N09KZS9MUXJnOURlOE5yYldW?=
 =?utf-8?B?NjhOUlIxb2tyS1YxWVZ1TU9lK0lvWHpvVmJLdnZEL1RFOW1EU1NtUXhUc21k?=
 =?utf-8?B?R1dBOERGMHpHWDhHbDMrSFJpVDlPY29ZdnljMC9XYTVsMHFDek9RR0VtYlFT?=
 =?utf-8?B?Q1dZd2l6Zkx6ZlRrdUZsMjUwRVRrWXZJbVd4UXZFMHQxSERsUXF1NUdtVmF5?=
 =?utf-8?B?djN1dGtPdlBpay9aMTVYS0QrR3V2MWwybnpOY1pTOHFBUzdaL1NlMjlwcGJo?=
 =?utf-8?B?UHlVdlhhWG1pVU0zMm90MkpRZ2l4NDBBZmQ3MWlYZndOY2VLbW5pZjhNbU5H?=
 =?utf-8?B?ZXhONisrK29lWGVHemlBTWZZNHVPWHdMc3FUSVdWVEZodllFcExGcmdOTFhr?=
 =?utf-8?B?dkNrQTFtU2tid0lEWkpheElkbnBxdzNneDJkVGJLSkpPVC9vcC8rQ0lJdzVV?=
 =?utf-8?Q?sjXb/a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlVRUmVMdVYxbklHQ2UyUkZZc1cyVWNiMlBzSEFkU1lxOXU1QnJiZTZTNGdm?=
 =?utf-8?B?YzVBVGFWb1duUERBaHFwR2hBU2Z4ZlhNWkoycTE0VFc4VFYvOXRvWWY3T1B3?=
 =?utf-8?B?ZXI4N2hZU2tjYVc2M3NDbjNMaFVqZEtqUTZTZkhqcyszWE9HSVluNkl1Qzhu?=
 =?utf-8?B?cEErbnNRdWhrMlVKWC9BUzV3VEJnTno1VXBVOEVOaTZKY3lnWHVyZnZ6Yndu?=
 =?utf-8?B?OTV4QXpTNW9EWWZmNTRNMHlMdE1qdlJuMys1dWwwdHJ3cWwxbC9hZ2xFZ0Vx?=
 =?utf-8?B?TzBEb1V1bWFLUVEyK3cwUEJ6TFUvSjRjcWhlRWxlcnpYUlRJdVZUUUY5eWx0?=
 =?utf-8?B?RDZScTV6ZFZrMkxVTStWOHcwNW9aZXF6aC9HYTVER2hPQlQybWpySVQvVEUx?=
 =?utf-8?B?cEEwenBUb3lOSC96SVpEL051MHBCY1VVVVl1Qll2SkhDSTh6WmR5OWEyb29N?=
 =?utf-8?B?MFZibmNWNng2YjRMb0FrQU9PK2R4aHdWU2pEMHA5QVFrRllVZGVXdk5NeE1t?=
 =?utf-8?B?dFNWSHFtUmVCWEs4cU1HUTNuOEZVeHZDK3Y2aDhtb1p1eWlIUUVud0pGeWNY?=
 =?utf-8?B?VzBSMmszek9HZU0rV002WUpheVZDaFhHSERGeEZmSXlkSlJlK2g2cG9SeXpQ?=
 =?utf-8?B?ZTJjNEtMRjZENWptSTVoM1NwWUpIUzMvY3d2UHU2MFV3M1duVnlNVkVPTFFZ?=
 =?utf-8?B?RmI3YXpuR0E5aC80cU1MV0I1WFRBL2dSQkxvNWEwclRwQ2lQdm0zMStCSElO?=
 =?utf-8?B?QWVqV2hoeFZvcmIzbEdnTEwvR2pGanhIdGl5SXI0dzFFK2svSjc3NnB1UHQ5?=
 =?utf-8?B?dmxyOEFXODBUZ2NyUFo0SE9NcDAybnJqbGYrWWpPTWYxUkFLZWdHZEoyOFpX?=
 =?utf-8?B?dDJNTVp4Z1g0Mi9ua25uY2tLZm5vdk4xaE5ZTzdNN25PNTlYM2Z3WlFtQjk1?=
 =?utf-8?B?VEF4QVZZdHVvRUp5anVqcUdQdUNJZkhrYnN2WnRoVk1VeU1zQ2FPUkJYb083?=
 =?utf-8?B?dU9OQmZYbkJZNkh5aENFcUJ1OFcvZlA1SUlMdVFlM295NkZIdkt0TnlnaWpr?=
 =?utf-8?B?UDhoQzNrM1V3SUU3U2VtWW4zUzB1akp2T1NKd0VlSW01OEthTmxPdkRSSThn?=
 =?utf-8?B?blVsbm5BN0ovcGpOSmNBbUZuRFpDUkVKcldIcGx2VmhFZDYyeU51dlJXSWVv?=
 =?utf-8?B?YlI4QmxpWkNheFdBRktoTkVuVisyVzkrTCtwby9iT0FrUVBCR0dWVnM0dTBx?=
 =?utf-8?B?RFE1YU1RNUxHTTIrNVAvd1F0amNGY3FnQWN4eXFhektiRVZ3Wm1iRDFkTEg1?=
 =?utf-8?B?dGNjYTMzb051cjNML2Jra1ZHU3NNOWV5UzVUNzRlblloQ0ptRDVkZVFvMTBt?=
 =?utf-8?B?Y3NVWFdPcEZub0JGeUVpNGxNRWRkeUo2UTZwcnMrWkVDa0YxeEwwclNEd1Q2?=
 =?utf-8?B?R0hnUitHNW1ZK2VUWFhWU1F1MmtNYXFRQkpCOFRxZmw1WnlPeEV1b25mLzVv?=
 =?utf-8?B?Kzl3QVVCL0dWS25HTDF5ZEVhZm1Ob0o4WEpzbHkrWmVpMStzZFJyRVZFazZL?=
 =?utf-8?B?cDhIU3E4ZlhqQlUrd2t6aHA3VG5QRUNnWTZuRWorMFRaZW5NZ3BjNVI1NUU1?=
 =?utf-8?B?dEE2VTgzeXpkN28wczgxYnUyY0gwNVlrNUlET05uNUlvTmVqcWRUZTAwMkd1?=
 =?utf-8?B?NHhhclJtNDN4S0g0Y1ZtcUZzOFRmSHd2MEtMWDhyenF2ZEhMckVsUlhoRm03?=
 =?utf-8?B?T2I5eVd5enVMYTZLTWZseGJFQjgwZDB5U0wxOCs1ZWNBUkd5K1RpNkpEZ1hH?=
 =?utf-8?B?WW9kWjlhQWdoSE1IQjQyM3dZcVlaUE9XRjU4aytXdC9UT2tRT1QxS3dveEw0?=
 =?utf-8?B?VTZDSmw1N3N4UWVjMTdxVTR0cmdpWG5teFRxdmF0QU1OVC9RUWxuZXFXbTNi?=
 =?utf-8?B?SDlQOWl5MzBNN1RDMWJMRWRiVm5NMVFUQ3ZRekxpNHNtSFNXa3pjMTNCK0lJ?=
 =?utf-8?B?WkdOQ0tZNitMd0dHdC9GU3Z2L3BvSlZFdy9KbkZ5Z2s1U0U3NjRUV28rOStM?=
 =?utf-8?B?SmtCcStuUG91cDc2d0tzVXZNdDdiZzg4eG5GazlXcmE3dXgrTldoYVFDL3Vs?=
 =?utf-8?B?dXBVZkVoNVAveUt1ZG1rZVhFMlhlUVRlci9hWW13YnY4Q0pYSUl6QXlUVFY0?=
 =?utf-8?B?ajFveG4rMWY5aU04UzV4Z1cxRW1rdCt4UXMvNldiczdGNE5iNldoNVlvd0c4?=
 =?utf-8?B?V21VTVl0WGgzT0RqUGV3UkpXc3ZKdXkwcEUyd3dkTDZiMzEzRGVLSlp6K0VL?=
 =?utf-8?B?T2VOb0xHKzdYNGNmZW1JUFVLcmd6WWYvM3FOelh5Skc1WW5aM05Na2EyLys0?=
 =?utf-8?Q?yqgbSPV+3uxTcCyE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ed8e61-55bc-4cf8-494a-08de67d1596c
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 11:49:58.2269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Drc3rkaWLBpOzmZCwBV7woHVf5tEwi2rWvNJbykXjCi87RwZ3syPQRpylsgwKnFU1uY/hpRB+pJYviUYPY862f+LxKGjiS5VvxrRMlmAYJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6166
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4D85710F6D9
X-Rspamd-Action: no action



On 2/9/2026 3:39 PM, Imre Deak wrote:
> On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
>> On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
>>>
>>>
>>> On 2/9/2026 2:10 PM, Imre Deak wrote:
>>>> On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
>>>>>
>>>>>
>>>>> On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
>>>>>>
>>>>>> On 2/6/2026 4:12 PM, Imre Deak wrote:
>>>>>>> The pipe BPP value shouldn't be set outside of the source's / sink's
>>>>>>> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
>>>>>>> value to 30 due to HDR.
>>>>>>>
>>>>>>> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
>>>>>>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>>>>> Cc: <stable@vger.kernel.org> # v6.18+
>>>>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>>>>>>     1 file changed, 12 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
>>>>>>> drm/i915/display/intel_dp.c
>>>>>>> index 2b8f43e211741..4d8f480cf803f 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>> *intel_dp,
>>>>>>>                        bool dsc,
>>>>>>>                        struct link_config_limits *limits)
>>>>>>>     {
>>>>>>> +    struct intel_display *display = to_intel_display(intel_dp);
>>>>>>>         bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>>>>>>>         struct intel_connector *connector =
>>>>>>>             to_intel_connector(conn_state->connector);
>>>>>>> @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>> *intel_dp,
>>>>>>>         limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>>>>>>>         limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>>>>>>> -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
>>>>>>> -                intel_dp_min_bpp(crtc_state->output_format);
>>>>>>> +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>>>>>>         if (is_mst) {
>>>>>>>             /*
>>>>>>>              * FIXME: If all the streams can't fit into the link with their
>>>>>>> @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
>>>>>>> intel_dp *intel_dp,
>>>>>>>                                 respect_downstream_limits);
>>>>>>>         }
>>>>>>> +    if (intel_dp_in_hdr_mode(conn_state)) {
>>>>>>> +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
>>>>>>> +            limits->pipe.min_bpp = 30;
>>>>>>> +        else
>>>>>>> +            drm_dbg_kms(display->drm,
>>>>>>> +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
>>>>>>> valid pipe bpp range (%d-%d)\n",
>>>>>>> +                    connector->base.base.id, connector->base.name,
>>>>>>> +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
>>>>>>
>>>>>>
>>>>>> pipe.max_bpp < 30 will be either due to the max_bpc property set to less
>>>>>> than 10, or perhaps when the panel itself does not support 10 bpc
>>>>>> (limited by EDID or VBT).
>>>>>> With these constraints doesn't make sense to enable HDR and send HDR
>>>>>> metadata.
>>>>>> However, as we see in some reported issues [1] [2], in practice some
>>>>>> compositor seems to enable HDR by default and with the hard limit set,
>>>>>> they report blankout.
>>>>>> So it does make sense to raise the min bpp limit only if its inside the
>>>>>> supported range.
>>>>>>
>>>>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>
>>>>>>
>>>>>> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
>>>>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
>>>>>> issues/5969#note_3248404
>>>>>>
>>>>>
>>>>> I am not sure if this patch would help with the above gitlabs. For example
>>>>> in case of #7052 pipe max bpp is 30 and the commit still fails.
>>>>
>>>> It does fix though reported cases where the sink does not support 10 BPC
>>>> at all. Yes the monitor in #7052 is still a problem, since it supports
>>>> 10 BPC only with lower resolution, where the link BW would allow this
>>>> and he monitor doesn't have DSC either.
>>>>
>>>>> However, I need to look deeper.
>>>>>
>>>>> I am thinking of relaxing this restriction all together because the earlier
>>>>> assumption that a panel advertising HDR will support atleast 10bpc in all
>>>>> it's mode turns out to be false.
>>>>>
>>>>> Currently, I am inclined on the following policy.
>>>>>
>>>>> - If DSC is not available, fall back to normal bandwidth calculations and
>>>>> select the highest bpp the link can support. (Also preferred by Kwin)
>>>>>
>>>>> - If DSC is available, prefer falling back to DSC and attempt the highest
>>>>> bpp allowed by bandwidth constraints.
>>>>
>>>> The patch does the above, except for not handling the case where the
>>>> monitor doesn't support DSC. The attach patch handles that too and so
>>>> fixes #7052 as well, are you ok with it?
>>>
>>> This should work since [1] did.
>>
>> I think the sink / source support for 10 BPC should be still checked as
>> in this patch.

Agreed.

>>
>>> There is one more (theoritical) scenario that I think is still not covered.
>>> What happens in a case where 30bpp doesnot fit into DSC bandwidth?
>>> As I understand, the min bpp limit of 30bpp would become a bottle-neck even
>>> then?
>>
>> No, the link BW requirement is determined by the link BPP, not the pipe
>> BPP for which the minimum is set. The link BPP in DSC mode can be
>> lowered below that, based on the sink's minimum compressed BPP support.
>> So in the fallback case, where 30 BPP uncompressed mode is not
>> supported by the sink due to a BW limit, DSC is used instead lowering
>> the compressed link BPP as required.
> 
> Although, it's still possible that the sink wouldn't support the minimum
> pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP
> in DSC mode isn't actually needed, since the highest possible BPP will
> be selected there anyway. So I think the actual condition for setting
> pipe.min_bpp = 30 above should be:
> 
>          if (intel_dp_in_hdr_mode(conn_state) &&
>              intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
>              !dsc) {
>              ...
> 

I was trying to make it work within intel_dp_compute_link_config_wide() 
but this works too.

==
Chaitanya

>>> [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
>>>
>>>>
>>>>> I am working on a patch for this and should be able to float something soon.
>>>>> Imre, if you agree with this policy, would you please wait for the patch.
>>>>> That should make it easier to send out fix for stable kernels.
>>>>>
>>>>> ==
>>>>> Chaitanya
>>>>>
>>>>>>> +    }
>>>>>>> +
>>>>>>>         if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
>>>>>>> limits))
>>>>>>>             return false;
>>>>>
>>>


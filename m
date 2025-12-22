Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9A9CD6957
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C627B10E703;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRO2Ay1J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECE810E6F6;
 Mon, 22 Dec 2025 15:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417796; x=1797953796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Fjqgu06q9eqFHiQEMr/b+gr8I1wr8/6VZgCfWXXqAdw=;
 b=SRO2Ay1JfdaU0LSrxLm4sMZTnIdgE4EufojsG8KCvU6AyRcjn6NnViWU
 IfvlcquTQcwrbPIhdMra5CWOUkHbaBbYpjVYTgOxYaPVt7jnFMP9/ATm6
 Savy9gkZoKr8qzz3nGCIaWqms6AeLxiw2UR6VjobtMF0T47ImyPeNCIoP
 X49LIwp5jco8it94ZXWALv/B6gVJx4V1A8vKY4uFQJ9O9P9b3g+UVEUVJ
 +fr5tgvceMnefvQCag99oO3Tck1ahKGz2IAaRQ3TCxXtleZsJD+n30rT5
 5pcUOTgWgCTEF4r3GgeiclXvM70bHAvA3SjqypAw8lUz3YhSYYD6XmBqJ Q==;
X-CSE-ConnectionGUID: urLdGYrKRayTZ2Fex3iBkQ==
X-CSE-MsgGUID: Xgqfe+H5S+qJqx5FBURM+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211507"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211507"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:36 -0800
X-CSE-ConnectionGUID: LzPIPQ4pQnaHvKpcAvwmiw==
X-CSE-MsgGUID: zPmEaWyURgi1xjdVWWi7tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854994"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:35 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LXD4VkvIxDTUXt8sbwS8tcxmZVd8lMn+JyL89fJeGzqA64D34+azI0gfGwv2cAOZHDChV6jo6AYI8P1d8ZwicbcXAHs581lNkfQ0CTVVyD138mfKkFJutrSF4tiPbdpsuTgtWdw/1LZ6/mNRo/sbl462zlXdyHBDWuBs/FMhNquuiW2pomboCqthejUn/R1yx9w5BoAeIhNLUf3uaaHXVRsJqXDGHa09GpqxmZkbwstTAJqW+B2JEx7UsL67iM6xx63YD9mRg8yZitvihPrwDJGMkV6WXD5LENxwAnaHgcPQJe1MPkDPjabxV/v487/XprABktIxuPH1i7I3Us7CYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oe7cVTHoUmw0Zv0saqbfvvHtSTLTpn3r/ZuQ1dpQ2Rg=;
 b=ZsH9cGa4K86W2kYyvxYxKJRk0vSh/WSrO4Q4CVL/5zPOdGtAdtyHSx6FROu2jl+cpKis4AYEhWk/iR5pq+5xZXNbOnoucjS/DJFdrFqt50sTIFkaLnFKJvbF8ZkbINBQuQuSPkpHCYHOqujsvEq371KOKonGTaWWE2ESPN4WfnrtYYYSksO8fk9O/sGBjXUTnH5JJJg9vSqUgb2t+84icyQZqMvnlC/Zs6uYc4fkc+8f023AFCPeb43CrLgvb87nOdKpfkJ3La0B1xjxjNYnEOLPydi5di01tydq8Q+eYZdy/ej/JfpW8M4ZbXHg/yDfM29ydtPOdHWD8+1VbHzEiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7489.namprd11.prod.outlook.com (2603:10b6:806:342::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Mon, 22 Dec
 2025 15:36:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 19/19] drm/i915/dp: Simplify computing the DSC compressed BPP
 for DP-MST
Date: Mon, 22 Dec 2025 17:35:47 +0200
Message-ID: <20251222153547.713360-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7489:EE_
X-MS-Office365-Filtering-Correlation-Id: c3dd1ec6-728d-4ddc-64ab-08de416fe29b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UmdybTNRSHV4VzBhNC83amJ1WUcvREJlMktyTG9EQWZ6Z1EvNzZYRGIwVHd2?=
 =?utf-8?B?R2JxcnRFSkNmMnMvMDdiR2M1VjkvcnFuVXNxRm0vbS8rLzVNMXI5VG1BOEMv?=
 =?utf-8?B?YUtEWWtVQkNhM2xZcmdvMDFMejg3ekZWNVRodVZwS0NCM2N2OGtTZy9yY3Bs?=
 =?utf-8?B?Nk1zYzg2dzdBbWVoT1plVlF4SjdnTHVkUXErY2U4SFpWOVpqWUowZzNCVHpO?=
 =?utf-8?B?WU9saXlFbnJ4MzVndHJERjl5L05KYnNUVkhTZlQ5eURyRTBZUnkxQXVzTi9q?=
 =?utf-8?B?NTd6YjdwMTJLSG00dDhKM0d2N1J6NGppS2g5TkF4NmhJcnlVTTZHLy9yQjRs?=
 =?utf-8?B?QkNiSFl5bmY4dE5OZnR0RTlXWkxrMElFRnErNG5TOFd3TWNRSTJjWGJQWThS?=
 =?utf-8?B?M1JaYXRJQmlXaXk3MGlqN3dhY1UwR1EyVHZ0QzBYZG83TFRpVVJUZmlUUE5E?=
 =?utf-8?B?TGlsMWVoUUNwclJWdEwwVTZQOW96VlMzWHdscy9ZV0JsTGM5QXoxVFJkODdO?=
 =?utf-8?B?N1VTQUw0NXEvTlpHVno0eGlLaTh1WThUcmdMczd6cW85YkZSQ2pnSnJMK2p2?=
 =?utf-8?B?VjJsWDlKY0Q5anBkbnJ0M3VhYnRUMWhqY1RpVGlYNmlldWlLV29rZkp2S3dw?=
 =?utf-8?B?eTAvTnMrVEVoQVNtdWFtUkg4SXZ4U1A3VFpodjJrRStuQTFydVk2YXc2bFNR?=
 =?utf-8?B?RmVzclZxMTAxVmh3R1dvd3QweHNLVlhvdXhrbm1RbU9sNGJscUltTGhJY1pi?=
 =?utf-8?B?QktYV2xFWGhwNkhiNGkyMm90empSMUxDVTdUZDhWYTYzb2NJWVNCZjlvNmNC?=
 =?utf-8?B?RDlBalJyTTNLNFphQjVCTFFMYk9Pb2ttenpRUTZxMWNtem9vaW83RU01WExE?=
 =?utf-8?B?dHBReEhsYzRzM3pJb2R4alpGS2tvWjNPUWF2aWs5R282MnlEYlRxaWVVM2lu?=
 =?utf-8?B?MGV4cW8yZmJLL25TMFVWY2FTYVRoYUsvN2FHL0VmK3VCdkVOU2hOMnJZV3dS?=
 =?utf-8?B?d0djQVVNYml1YjlSR01oOXo5eU90TXNZdDBzb2hzNEF0QmNScXowMzByQkhY?=
 =?utf-8?B?TEdDK01oVXQ0OGNzY29vN0hIcEJJeXkwazBhd1poeHYxclZ4czJjRnVEMGVW?=
 =?utf-8?B?UlpSa2VyQjJoNkhKbVpSL29TemNrZC95V1JaZ3VwNXpZTlI2ekw4RVBWNEwy?=
 =?utf-8?B?OEJEZWRGWmxtY2QxSmkwNEpjb2pBSmdXS0NmVWlRbTNzTk9rQ3h4d2RSK2xR?=
 =?utf-8?B?MGZaeUdKNFhnVEU2K1RMMHBDenYwbmZkcWN4QmU1UUdwVEc5aVlxM0UvR28y?=
 =?utf-8?B?d1kvaUQ0eklFTE5LVXRNdHRISHFiSW9JSmlWdW5ObXJscldGYUtDSm82TXpU?=
 =?utf-8?B?ay9nTlM4N1ozOS93WS9sWDZyeW9ab0dYVmZOQzFPY1JQZmJCcnJiUDB6VmxK?=
 =?utf-8?B?M1E5OWcwS3hwMlUzTzRjT21qM3Z4QkVReTlLVFVTZ3hDNjlqM2piSTdLVnIw?=
 =?utf-8?B?aDEwbW1adTkxUDJOb2htZ3I1UnZScG5ZWkd3WmtEeVNpVHdMTDE4R2w2VitD?=
 =?utf-8?B?WVduL3pmNVRPd1JKb3hlZ20rM2lRUHIzZmdWWjBzenROa0ZrZENxQTkwWkt6?=
 =?utf-8?B?YzFWSVZSMXNsWkh6QiswOG1vTTZTN21hMjZsWGNKOCszSXRhZmxTYWN6aFlk?=
 =?utf-8?B?SVFrVlNsWm1GRk5uQXpsY0NIWFAyQkJmbHRQalUzUzVTbUpSNi9uUmYzQTJh?=
 =?utf-8?B?Y2FDMmIvN3ZjMDhWaS94NnR3OUpPcnVLMURvazFEWlp3WndqM25SOWVkRnhS?=
 =?utf-8?B?OVptMHRRVlhzUTQxTm84Mk1yQ2pjakR0ci9Ockd5a0NRUnk0NGRvcWxmd25C?=
 =?utf-8?B?dGd2bjZEKy9FR3pXNXZnOXhsRHJjS0kyVlFRYTdtT0lJSmFXMFVGQ2I1MmZG?=
 =?utf-8?Q?2KckEhRmcL1wgXOV/J0Kp9GnovpYs+aM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2JING9hak9VMS8xbGhWQkZZOGlNOVNzcmxzOTUzNkRVb0FxQW5iVm5vNmZ4?=
 =?utf-8?B?R0ttdVVzelpzejduYW9PeWxMZnUrMGlPWFI5d1pZV09XUy9UMUp5SlhLSHBv?=
 =?utf-8?B?WTU5NGRuLzJtaG04UjN0bkFzaFZPTkorYVpjQjg3eW9YeURTTVJYaTU5OUNO?=
 =?utf-8?B?WEhCU1dHQW9yTThoUVhtWGJzT0VwTXVuRG93R3A4eHRRb1AvZC9pV1FUeEZF?=
 =?utf-8?B?aDhqSlN2VFEwR0ZTcDkweVZ6UXNzYms1VnFEbHFYT0xiRVlyNElGbEg1a2Fv?=
 =?utf-8?B?ck9xOSsybFhySnBZcjJLSjl1YzE3QXhzQ0JFK3dURGdWWWRNUzFWMUdpQWtJ?=
 =?utf-8?B?Zk44VkhmNGZqZUVxeVMraVdYemZZeEluS2M5aUkwYytZcUpVUVNsL3AzWHVY?=
 =?utf-8?B?MTNadVZRYzUvQjBYL1hPODBHa1o1c3FEeHlQWTRmaTB3Z1FsN2NMZldIdDZh?=
 =?utf-8?B?a0FMNVIxdC9DcEkvcTJiM2ZManhFMWZmTGc0NWZCc2xnaWdXMXlvdHJLNERC?=
 =?utf-8?B?d21NeHF0UjBTeW5kNmt4ZDB2bkhNWWFhTmtBNjc2b01iS1hqMnNoQUh1SE5X?=
 =?utf-8?B?bmY3QUdzN3ZOUnNjcmZucVV0eGpueVI3WXpSeUgyQzZyUTZON1k5bm5pU2F0?=
 =?utf-8?B?WkZkWEVRbURiRVQ3b05lekVLSjdmMEZIdFVKRXZZY2ZXMXdRTWs4bVEwditS?=
 =?utf-8?B?eEo3TWFqK3ZqVkFGQmZGL3FMN052WWVKQTFIakZmMGlZSGpQSENsdW5LeHcx?=
 =?utf-8?B?WFRNc2tJNWpXSkZpZ2YrUFoyVmRQdTBTaUphNlZ1akt1OVU0N2JCWlg4SmQz?=
 =?utf-8?B?akM4SFdLajl6RnJZNWIzeWF5R1czMVJlcnpUdzNFRis0OHRONUtIZkdmeko3?=
 =?utf-8?B?U1NpbU9BYkozNjFtcHF6MG5qQldFSWlsZkZneWZsb3dqWnFIS1FSZXVaNzYx?=
 =?utf-8?B?OGFvenhaSlBMQWIwOGFlR3lac1lFZEwwejlwWkV0b1RocE5YTmFqY215N01y?=
 =?utf-8?B?TUhCdlRlOFJvRXRjSERYQkhuaWZYemkwR21xSmpndkNoZHlrUmNpT0NuV1NV?=
 =?utf-8?B?MEFTS0pMVmZ0c0NBQnRKUjc3amZabzRvV2FNT2tMRk56QnRJVGlpR0Rhb0tD?=
 =?utf-8?B?QTBkTzM5YmVuU2lkUDRYWjdNdzFPbG9qVE0zTmZIUW5Edm1SeWMzbHluaWNS?=
 =?utf-8?B?b041cXdmYmw1QlFNeC93RExNSXk1YmlkZUE3MlRWMTFicXM2dVpRMi9RUlhr?=
 =?utf-8?B?MkxGWVZuVnhBQ0ExR1NscHBkMWYrNUQ4eEU0TUc2elVXbWFsYitFZElMRUhM?=
 =?utf-8?B?ajl3YW9ibFRJNlM2MTdaVzE5bGVxOUdTZzRhMGZPUHNJQXBqUm9SZDZsMitP?=
 =?utf-8?B?Q3V4akVVdXRMQWtocXl4ZTNtRTcrU09ab0RuNXJxQlJUUnVyVkNTN3RFWlJR?=
 =?utf-8?B?cCtxWXgzQlFZVUhHSDQyVEhWNFM3YXdvbHNBYndCYW9aZWlKNFI5cG0vOWh0?=
 =?utf-8?B?dEFnRjBWNDZaTWMxU0xUUG5ZUjhUV2hINldLSFRaSXdrVENWUExqcWYvMGY1?=
 =?utf-8?B?YUhObUZnMDFTdndtbE4xUGYzRzVBSVl4ZmUvbVhjeDhiUlZWTDhJZTZzcWgy?=
 =?utf-8?B?cS9DY0Q0NW5FTU5XR0NEWVVsT0pSTFVCUjZVMDBvNTNGQXk4ZHc2YXloQTBB?=
 =?utf-8?B?UittVzMzditLRFBwTU9MQzJwaU9hVjY0bEJRRzJuYkxmWmV4TDA4ZnUyVTh6?=
 =?utf-8?B?VzFWR1A2eEdCNWgvQ1pVVW0zU2l6Vk9mb1R3MU1XSE9teGllZmhjV21YVWZF?=
 =?utf-8?B?OXFlcVF5eTN6NGUzc0Yra1ZRc3NvOFNrbGt6WUdXMUZKK0N6MWFmblNpVGpL?=
 =?utf-8?B?WEZvM0I2OEpYbE1oekJPMk9UeTZJd2NkQWQxR0VDTFdOOGNrVWVtc1hudWNr?=
 =?utf-8?B?eDFFUjBzWWJNVlk0TFZpUEtjZ3R6cC91SzB5bDVHcmZTRVgrRzJ4OVJ5ajNk?=
 =?utf-8?B?M1lOOS9aYTJrMDFqVU9UZzIrd1RYVzNOUUlIY1h2QVBpeFB4OXU3MW1xeG5W?=
 =?utf-8?B?ZkdUN0VudXRrTVpZZUxWcHdYbWZOQlMxamFVVndUZVBGbTJidFNZQXR0TUo3?=
 =?utf-8?B?VXFqS1UybmpPcGJ2U3gxMUYyWmVReGs5eENLWk5lajFUVzFRZlQyZnlEVVNR?=
 =?utf-8?B?M2FNSUl3eWN3bUVGdmE4RnhMQmtVMS9HVVpMdFM1TDBVaEMyZkltcnFWaVg0?=
 =?utf-8?B?YXhmZi9senhweUpVZ0tFRXJtM1owM1NYYktuT25xMkdPVFY2eGJSV1Y1bWNr?=
 =?utf-8?B?MFJlZnVJNm9CZUcvbnZqczJ1eFhManNMZ3VQbUNCa1RhRmxSdEJlQnZOMWli?=
 =?utf-8?Q?n1HxgB3uLUnVH3tnk3GRu5IdOXVeGkkF2DNihS46R57nk?=
X-MS-Exchange-AntiSpam-MessageData-1: gRs+taA78HdV3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: c3dd1ec6-728d-4ddc-64ab-08de416fe29b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:33.3906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M65xeGxrHM1HXLyJN7nC09WYUF9NznckCYM2v+Qak5OqOURMRmQN5vnxe3zMWWAyBMQQ2o3KbKyKJgZJlwL1SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7489
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

The minimum/maximum DSC input (i.e. pipe) and compressed (i.e. link) BPP
limits are computed already in intel_dp_compute_config_limits(), so
there is no need to do this again in
mst_stream_dsc_compute_link_config() called later. Remove the
corresponding alignments from the latter function and use the
precomputed (aligned and within bounds) maximum pipe BPP and the min/max
compressed BPP values instead as-is.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 48 +++------------------
 1 file changed, 6 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f8679e95252..24f8e60df9ac1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -463,57 +463,21 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	int num_bpc;
-	u8 dsc_bpc[3] = {};
-	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int min_compressed_bpp_x16, max_compressed_bpp_x16;
-	int bpp_step_x16;
 
-	max_bpp = limits->pipe.max_bpp;
-	min_bpp = limits->pipe.min_bpp;
-
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
-						       dsc_bpc);
-
-	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
-		    min_bpp, max_bpp);
-
-	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
-	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
-
-	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
-		    sink_min_bpp, sink_max_bpp);
-
-	if (min_bpp < sink_min_bpp)
-		min_bpp = sink_min_bpp;
-
-	if (max_bpp > sink_max_bpp)
-		max_bpp = sink_max_bpp;
-
-	crtc_state->pipe_bpp = max_bpp;
-
-	min_compressed_bpp_x16 = limits->link.min_bpp_x16;
-	max_compressed_bpp_x16 = limits->link.max_bpp_x16;
+	crtc_state->pipe_bpp = limits->pipe.max_bpp;
 
 	drm_dbg_kms(display->drm,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
-		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
-
-	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
-
-	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
-
-	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
-	min_compressed_bpp_x16 = round_up(min_compressed_bpp_x16, bpp_step_x16);
-	max_compressed_bpp_x16 = round_down(max_compressed_bpp_x16, bpp_step_x16);
+		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
-					      min_compressed_bpp_x16,
-					      max_compressed_bpp_x16,
-					      bpp_step_x16, true);
+					      limits->link.min_bpp_x16,
+					      limits->link.max_bpp_x16,
+					      intel_dp_dsc_bpp_step_x16(connector),
+					      true);
 }
 
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
-- 
2.49.1


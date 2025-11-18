Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2FC680AD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 08:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8EF10E419;
	Tue, 18 Nov 2025 07:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/MScrPg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25FD10E104;
 Tue, 18 Nov 2025 07:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763452027; x=1794988027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7coCGoJgk0PUeKHwT5r3xvO4dk/Snp+rx09wK/qIbRM=;
 b=j/MScrPgi1ITxnnn+9EfzEmC0rQGCYbpCkGC9Gz7Qa+aFLU/B0eNs07B
 bf/wAHFgHeGLzZTXdhB9SCd4gHfNesmwMMi/yZu98oygTm8hNIz9+Q1vZ
 3f96RRY9CoX20q8PQhQOjXrW9J2KvjIeo3NaJEP8LV0xtmFij0ylHuzQ4
 4UxtrwTQQ6r1mAHFYxjbORn3yBy/BTiMNIrXdzebFmtd2USnNKyXoGVU0
 pWPnCw+6sSCm1eH2gZ51/JW7FjzvJWQONZM7n72L8BEK3bETGdPQgFR/B
 0BNXFRNqufWx53AsYVK1UMdPpFF+eWHirJUTgF1HRP6VkJSIItqkY7V9M A==;
X-CSE-ConnectionGUID: 6MAX2PF9QRW3vuto3ZyCVQ==
X-CSE-MsgGUID: c4zhPWQaQ1iPaXhOYgQGxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65403935"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65403935"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 23:47:06 -0800
X-CSE-ConnectionGUID: kz3L9K8/QIWEH+814qny8Q==
X-CSE-MsgGUID: RdbNuqHDQfqHtEhaB0sqqQ==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 23:47:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:47:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 23:47:05 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 23:47:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xyJaiYd1rbw8+VIn3bJgTIFyc9B3JlJtmPtARiIlaaLf8slqIE7q+m0xlk12P7CEKtonentpXvHSOHZurAlIHf286vudkY8OSwPujQDPCelLLQJ1O/Ja4LntVhRhftXYEbqZCDV0aJDBpLGstMnc944qlueDz0xqH670dElpzGEEz7NEvduIEHqQcpIpJEHn1xlKt3AdfeRYlJBpunXA14UYw3LpDCMC512ml6syn/SavyTZN8KqHz6nkDjwdpNES1f6ixT9UW6S613ZWOjscSkZvEm2dYd0iqqIQODibiTQtpEcKhCV/BXgaDDxhx5Rm6fpKMUCgfP+nTO1psVbDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7coCGoJgk0PUeKHwT5r3xvO4dk/Snp+rx09wK/qIbRM=;
 b=qFiXiQvf4nkQB1FyBLoDyZAV5MAZulkx7dSHK5mt2fdEP4Kucr6bYKvqYDacB5insJVrojy7hANrm1qVTinqe5OAjJWGEcd5GEEdx/A1j0C0Zgi9hw9hb8CTcI+bQe4dIJkTvMVkCCwpfA5zIiRjZIVvLwebFYAKvdpb251lRc+i5dMkzfJTdo+R53hFN33pjfCGKRR1KwjYah4aQWXwTR5lURkSYteooynpC/OGb3cVJvI/nqIzKy96PKnlItJYBgMsx0Qfn8Xnk6vQlFN+9HQjnujFFshC0+xSKehYYt2GxHPRt5RnePMrem8p0BvzINmY3weKFYk4pklAPUztWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by CH0PR11MB8144.namprd11.prod.outlook.com (2603:10b6:610:18d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Tue, 18 Nov
 2025 07:47:03 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 07:47:03 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "iommu@lists.linux.dev"
 <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELT3sYoAgAAg3ACAADFBAIAAFq7A
Date: Tue, 18 Nov 2025 07:47:03 +0000
Message-ID: <BN9PR11MB5276323D350AEB5C5C3308228CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
In-Reply-To: <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|CH0PR11MB8144:EE_
x-ms-office365-filtering-correlation-id: bad6bc17-0c4c-43d2-bf56-08de2676aa0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SnJPQllYWEtRNDBDNkNsemw5WSt6SVhya3dNblpXZVkvMzhtS05WNlRuSWJj?=
 =?utf-8?B?UEFBVDJCa0VFU08xWm94OFZPdUUydUVwRWpDUHVQRGtDYTdVUkYwY2xGUEh4?=
 =?utf-8?B?cFpKNFpvZ1V0M0VCQktWN1d6ZytRYVhtVFB2S3dLeU4wZXRjUWQvN0Q3d0Rs?=
 =?utf-8?B?M01BM3A1KzI2U1VVM3JyUm5nRDk5ZlZ5OVRRRWIvcFZlaDhwWEpIQUVXUFlz?=
 =?utf-8?B?M2J5N3o2QUJJQyt3N3g3S3VqWHF2YVc5dVdBNFo5ZmtyVUNTRnVqNlJPQkZ0?=
 =?utf-8?B?dnVMZ0kzZWt4NDMzNWdQckxEcEYzUXFJT3c5UVRrd1pPa2VRSTFDQXc3K3kx?=
 =?utf-8?B?T3diOWYwQWJHOUJENEMyaEZ2elR0SkpPYkxFTEZnek9xQ0FZeDBtM3VmMXdH?=
 =?utf-8?B?VkNZVFFwWG9XZmJua1YvOTZsT2F3V0NGbHVRY01wNzRwSmVwMmNoS3RvdkRa?=
 =?utf-8?B?Yy9xekk4UFZzKy8vbTd2Ynhtb3lNTEhLSmxRalNsZDVqb1RFOTBad2hZc1pp?=
 =?utf-8?B?dEpUSUc4UkJXcitSSVZXcmU3S245ZTd0dnI2eThJOWhsaUllTjNiZEIyeXhD?=
 =?utf-8?B?NFZDWVVjS1hvTUZjeWljbE1TNmdUKytxYXhQVkJNVytvbWJwL01VWkw1WmJ0?=
 =?utf-8?B?emU1Q0Ftamx4cE1MU000QUF5T2I3RDJzV2laNUJ3cXZnaHBqZWhnd2c4ZDdn?=
 =?utf-8?B?MnNyUEZ5RElmWkMwTGpGRmpoQlhWdGlnRnpoR2JweEJMRDFkcE0rQVZrekpJ?=
 =?utf-8?B?aXVYRnV2N3BqZnRjTEtGQlpKWEtoRnYvRWh3ZytzbGF5Y0E0ZHJiSGZWeGtJ?=
 =?utf-8?B?bnZDZXdtcUgzRlZyLy9JL3BZZzZmN0NrQTAyb1JFOU42aFd1VlZuRzc1eFp2?=
 =?utf-8?B?a1JRS2x3T3NPdGtpMDNERkxwcGtkSkx1OTNzdlpIMzlsNGhHQzUrTlZGNkpY?=
 =?utf-8?B?TVQyb3RIZVVKa3krMnJhbzlZTmpuTk9YRGFUcVhRa2FsR3pFQW1NVURNL1Uy?=
 =?utf-8?B?L2FiWXVrV3ZpSnp4WEExcHozV3BWT2lNVjE2aGJHMDNhcDhqTW1Sc1RrUVVn?=
 =?utf-8?B?Vmd5dHZINkUyWGI0a21EeDZrb0w0Nlorck5aVkdiR1BEVU5rK1dObEhDMnVu?=
 =?utf-8?B?blh5czlEWDczbzM2VFV0RXc4Z3VPTUorNHEvNkxtZk1tQm5qaUgyZzZyQlYz?=
 =?utf-8?B?NGlIVDFRcWZMczJvbGhrRGdmcFlMRWdRV3lrTTZvNU96MHhqaktBZkMyTGNI?=
 =?utf-8?B?NXZIdEdoSVFuQWdzb3o5MVhHOGE3UlczQ0RZdHBlcTBRVU5mV3dEeHFES0di?=
 =?utf-8?B?d1Y4SjFmTThFZ1hFL3VUcHI5Um0yLzZTS3NXZmYybTI1b3oyNWtONldSdWc1?=
 =?utf-8?B?b1dHdDM5RVFUakJWc2JWNjF1Sk5rUkJXR21tem9rQTI3UTF6UWFhbHgyVUY1?=
 =?utf-8?B?ZXhIVGF5ZFVJdFNPOC9hTGRzVG8zcjc3RFV3NEt5MVArNEptdDJHNkpTTFRN?=
 =?utf-8?B?RGU4Qms1QitKcjZiN0VHeTd6eHdrdFlWYys3Zlg1R2R5aEFqL2RZaEtWZGhz?=
 =?utf-8?B?QlZER1lFOEVCNGs0dXp4dmF4SmNoWmF1OFNDVjZTL2twVjZMZk5ObEJMdXYx?=
 =?utf-8?B?bHA1c2dEcGNGeFZURDVkVyt5SytTL0NZRlNUV3VXYllkckIzcHAzZjFqMzVt?=
 =?utf-8?B?OEtjNytnUTFSbCtzM0FmRUtzcUd0eXFXM3hUd0tCaU9JWUw4LzZ5YTY5dEw2?=
 =?utf-8?B?VWdRQVVZN21UTGI5VHRDSjdPRVBBMDlUQ3d6enpkMzBrUFBEQ3FHTk9oOWcw?=
 =?utf-8?B?eUhRN3JRbk1lbUxVRitCMEpwQW5ycU9FbG5XUzg3SlJwRmJGd0VYbFNmR2pv?=
 =?utf-8?B?WHZMS2U5V3N3SjUwdVFuelhkcnhkc3FhVzRqVWZhM0I0QWg2dldUVG9MKzl3?=
 =?utf-8?B?bTN0WklaRFlxT1JQOTloZVNLbXQ0NG1zSHhUaVBibFV4QU0vaFRvQjMwVDZk?=
 =?utf-8?B?MzlBOWN3WFRtWUQrdUwvR0N5TDBxODlscUt5TFE2S255ZllNZGFjN3ppWlA4?=
 =?utf-8?Q?qLLNef?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlVmdVU3MUpNVkxRdi9sT2Y0MVFxaWJjUDhZenczc0VORmxtMzdFN1QwaWdu?=
 =?utf-8?B?c3JCWjcyQnNjVUJzMnczNTFBSjdCWDNaS3RZR0czMDZlUytPVU1TZ3BJM2do?=
 =?utf-8?B?NVVWemVoNWpDdUJYVUJRY3V3SzNxRHlRTGQzRnlvYmVNTDdkQ0hQV002YkpX?=
 =?utf-8?B?cTFVMHZBZSs4dVYwdlI4N05NYVBXUkx0TjgrVWljVlZqSWIvV1k0bjhkMjA0?=
 =?utf-8?B?WVlCTVdDQWovRzdNZnloRDhnV0NFTk1uNHZGaFhTOW9WRjFVald4cnZJSmcr?=
 =?utf-8?B?WWhvYjVEbGl1Yng4VEtnNm5qOHdENDFqOTJIejNyVGRrTEx1ak1HUUhVTzNV?=
 =?utf-8?B?VnpkTFVyNFhCSHFabGcrRkJJd3NwQTBSMEJWT2RuVTNjRFVtdzY3ZlRtTzVV?=
 =?utf-8?B?VG1Da1cvNjdRNUtESDBwVEE0MEZESUpmYU9SUGVzL3Z0RlFhQ254dlhjODdn?=
 =?utf-8?B?RlYyRDB6S2JWa2lZWEdEbEtrYnhyWGJjM2p1M1hYUDkrS1NTeXdhWk12UEpi?=
 =?utf-8?B?MmVyYjFKVkhXL0RSV2xzR2RSUk9NZGVCKzN2OVcwTFhtaDBJTXptRUpOdmI1?=
 =?utf-8?B?YXo0Y1BJYzNLWG5OYUs0NW5zOFg1YmlzL25zdkFEcFJIR3Z4aUxkYkYzV28r?=
 =?utf-8?B?cGJONUcrT0ZldTJXUXh5MlUya2k0SkZEQ2FPdXpjYXpkR1Y0T29lbEV3NTdG?=
 =?utf-8?B?bnVKakZ4SmZsZmZNYmxHM2pENzI4RE14OWlJU0xjZ2JoZnE2NmJWN0VkY0dH?=
 =?utf-8?B?SE9XMXJ0OWE0YXZtcm1iQXhyWkdjaVFYQm8xTmxOQnV1cUMxcmxRSVp1NG1E?=
 =?utf-8?B?K2x4cnRmcE5TdW5rUVdGdXJQYU00bHE4UjhyWVo4MWkvcEZQTklwTGozNUZp?=
 =?utf-8?B?aHdySkxZVFdZZWs3YzVqcm02aERJNGphUFBma2Rwcmd2R1V4dHh3bEdrblVr?=
 =?utf-8?B?QTF2R3l5SnRRQ2l0TXcwQlNzNEY4Y3VrdnI5alJ0enBJcGUweGRsOW11UytR?=
 =?utf-8?B?VW9lNTdpQTlWN1pFN0JXVXByckg1cTJ1NHlFbXpzWWZoQy84ZDJkbG4ydTVE?=
 =?utf-8?B?SkY1WWsrN3VpNys5UngvOEJPT1Q1RTlJTkxmQmYydVFpZG5Md1VOZWNUVFRM?=
 =?utf-8?B?RS83UXYzTDZWVGZHWTVhaGFpbnh4dUlSMDN3V2NHTU50dWVhR2JPV0ZDZlR1?=
 =?utf-8?B?c3hiRTlwemFXYldPa2t2WEpWSk5LZHV5K1FCNGhYOGZZSFhlZFpoOHpCZGdz?=
 =?utf-8?B?d1NCYmRtTTJiSGNVQ3pTMkxRRkRNY3UybkpwRnQwK0VnZExhcTgzcjBWNDJr?=
 =?utf-8?B?RUNabXVuQ0Uxd08xLzZwOTN2bk9uWUlnL2NxSnB6TjFtbFg0S1Q4NkE2V3Ju?=
 =?utf-8?B?V2oxcDlGSGFEOEdDWktvWGhoaWlYYmNUSkNQNlpEWFB4bVJBNmcvaE9ZbFdX?=
 =?utf-8?B?Sm0zcnA4VzRidG9haHZnenM4VHJSVkZJcHFpWlZPaTVVbVRNek9KeS9MZXF0?=
 =?utf-8?B?U2c3cmRzTjlsY3l4ZnNwQnkzSUk4bnJNRk04Wm81WExUWjBqdDFqUWdBN3VL?=
 =?utf-8?B?NUgzNVNaT2lKVk1hNEIzd0JNMmF6RlhTQzVMSHppVURtbnd3dm1ySGgzUVVX?=
 =?utf-8?B?OGk4Y29BZzlaTzdFaVIzNFQrTGFrVXFSRFlNZkdFMlJhRjBYRzg1M0FCVTFE?=
 =?utf-8?B?bEdaTWZMUlR1Yk4vRFBvZHU0Y1p4SFh1b1dZZG5XYVNFZmFzRHl3dGhPWjBY?=
 =?utf-8?B?R2lPY3ZZTzhhdThvS2gwSUpDM3U1MXFudWlsVFYvVGdKVzVBUDl4WDE2TGQ2?=
 =?utf-8?B?bTNmaXpuRFFQVFA0QWxkbyt6K0ZsMHBTRGI4TjhOOGZDM0djdFBGejRtYVgz?=
 =?utf-8?B?WWszSCtHR05wRUxlS3RQY1MrZmdzMVpxVVRxRlR0SGl1Wldzdi9lU3ZZWGE5?=
 =?utf-8?B?dUt1VDRVNVBaQUk2SnVzcWl0UjQ4ZVhsTmlSWVphN2hTdDNtSUhJb1dWT3g0?=
 =?utf-8?B?Q3ozVTZzTWRpeFlXNkdENXF2b09sNGtmZU5WNThMZnNIK2xJWmxPcjUxRUJK?=
 =?utf-8?B?NDVidnl0L2svU1ZxTmd5NDh6UjBCNk9IVlRNeVZzT1paT2JQb1NTWitMRllP?=
 =?utf-8?Q?GqiRq9H5fE+gdymKOYrx6Kvdb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad6bc17-0c4c-43d2-bf56-08de2676aa0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 07:47:03.3663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CjATMMwUJPaqfQWJJWfIzhnRQMF0EjDYUOBxYgfJXLP70vrTmyUGU+Da6tXZWRMJQOPqFZ41BhBS+NmXotsqgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8144
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

PiBGcm9tOiBCYW9sdSBMdSA8YmFvbHUubHVAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUdWVz
ZGF5LCBOb3ZlbWJlciAxOCwgMjAyNSAyOjI0IFBNDQo+IA0KPiBPbiAxMS8xOC8yNSAxMjowNCwg
VGlhbiwgS2V2aW4gd3JvdGU6DQo+ID4+IDQ2IGJpdHMgaXMgbm90IHBhcnRpY3VsYXJseSBiaWcu
Li4gSG1tLCBJIHdvbmRlciBpZiB3ZSBoYXZlIHNvbWUgaXNzdWUNCj4gPj4gd2l0aCB0aGUgc2ln
bi1leHRlbmQ/IGlvbW11cHQgZG9lcyB0aGF0IHByb3Blcmx5IGFuZCBJSVJDIHRoZSBvbGQgY29k
ZQ0KPiA+PiBkaWQgbm90LiBXaGljaCBvZiB0aGUgcGFnZSB0YWJsZSBmb3JtYXRzIGlzIHRoaXMg
dXNpbmcgc2Vjb25kIHN0YWdlIG9yDQo+ID4+IGZpcnN0IHN0YWdlPw0KPiA+IEFzc3VtZSBpdCdz
IGZpcnN0IHN0YWdlIGZvciBrZXJuZWwgSU9WQSwgaWYgYXZhaWxhYmxlIGluIGh3DQo+IA0KPiBJ
dCdzIHRoZSBmaXJzdCBzdGFnZSAoeDg2XzY0IGZtdCkgYWNjb3JkaW5nIHRvIHRoZSBQQVNJRCBl
bnRyeSBzZXR1cDoNCj4gDQo+IElPTU1VIGRtYXIwOiBSb290IFRhYmxlIEFkZHJlc3M6IDB4MTA1
YTgyMDAwDQo+IEIuRC5GCVJvb3RfZW50cnkJCQkJQ29udGV4dF9lbnRyeQ0KPiAJCVBBU0lECVBB
U0lEX3RhYmxlX2VudHJ5DQo+IDAwOjAyLjAJMHgwMDAwMDAwMDAwMDAwMDAwOjB4MDAwMDAwMDEw
NWE4NTAwMQ0KPiAweDAwMDAwMDAwMDAwMDAwMDA6MHgwMDAwMDAwMTA1YTg0NDA1CTANCj4gMHgw
MDAwMDAwMTA1YTg2MDAwOjB4MDAwMDAwMDAwMDAwMDAwMjoweDAwMDAwMDAwMDAwMDAwNDkNCj4g
DQoNCnNvIHRoZSAzcmQgZXhwZXJpbWVudCAoaWYgdGhlIGZvcm1lciB0d28gZG9lc24ndCBzaG93
IGRpZmZlcmVuY2UpIGlzDQp0byBmb3JjZSB1c2luZyBzZWNvbmQgc3RhZ2UgdG8gc2VlIHdoZXRo
ZXIgaXQncyBjYXVzZWQgYnkgdGhlDQpzaWduLWV4dGVuZCBsb2dpYy4NCg==

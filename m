Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA01A9AEF5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 15:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FE210E7FE;
	Thu, 24 Apr 2025 13:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FEQj7DeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4272210E7FE;
 Thu, 24 Apr 2025 13:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745501298; x=1777037298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BGhb118gVvAMBXLFmON3iTxrQiclruUsmvMQoTrN9qk=;
 b=FEQj7DeApXsUNKnJ1Bp+X6+stKgFZy2UEQzD//YzQ5bIb2zTgeK2BVAY
 8Yef0YDHWE2KtAyTw91QpSITBk3i9ewJL70noGm5TjNLmbGm+POCbw1XW
 Jr1Xg6Y0Evl/wxWHeDod26ZB/Up+RYhEznGcPjOhIBM6uOUToIQwNelDv
 r1TOjecU722kSzzg3m6AtieZ2UqyN6DC4ct76KUbDHx1T7uBPDzXX7dJ1
 QdyIYbCR0ri1jTinUEL9gssatbcIoyq4rBd+pwsNqYLCVTFkHXY/g9BLk
 Zoiz0b2kkWoj99iSgendp8+Te73XJb3L4OQset4QCU+wJN4CoiV+3ctDf w==;
X-CSE-ConnectionGUID: kKrFz4e8QyarEaW/YN+A+g==
X-CSE-MsgGUID: XJJMiTskQTudyHmnU7waLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47149133"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="47149133"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 06:28:17 -0700
X-CSE-ConnectionGUID: J1rc/l5YSFaX7zuMP3G1rQ==
X-CSE-MsgGUID: 0Q6KMfmNSzu7kaH2R+FPOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="169831526"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 06:28:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 06:28:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 06:28:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 06:28:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NaW3urB1vS01l9sjn9KLW53f4G5daXjzrcvGAQNba+pDbTF8wMzczuSUmZqZU7kUsDMHA/c5Edrpw9lz/p1IpPDsn5Zbo4756WChEN54X/49vVJRcP+Rin9e+nfqbB+sUDn6bYFM0B/N0nwz7ZqVJBgjT/ad6rcuoTLWPJBuZixrJQAgVt3pSUDD2kfz9WvuPEWMSQRSQlFI8OmDjlTkFewD1W1hMNBCqxw0QGVSxTiNMau266zDJl3cbDJpJZKTbL74T2R9Y91cdIpLCSuJn4JVMOa7+cHr4JeiIf7XlupgDuZgHtrhb4GWVc5R5Mpx7FvxsA4tWy+V7gFfHQiRxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=akZTP87WymqHWw36TFJBfpuvT/T+H8oX5cJMtXkN5nI=;
 b=i/r98BGJHpsQX34KWohxfbxGREJfLs5JUADVrY8fpM0rft2cBucVAvK1nvyNSipVx0fixBGPTuKoa5weVXvRxzpcKXhZqc8UWVbErFiajyM3ds4paDM8A/adRV8j38O7mUlMQAJMGUfwaHo8YVxmb50K3g2bc7hZYuW5EKgLLK1ixLKD9hF+syH9xaDZqrp8Jcaa9auNiRnsiSvVIFKC832l2a9sXFrTQ2dqtHiarqIqJjs9HbVuKWwX99q6fuc++CV8ztcE5fypMSFiMfAnHBKnmg0IYafGEzAG8q3ZKl8rJS6sbNFLpuT9ld+o3Nf0rEGefTEQOqYlUtiuFkIAaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB7666.namprd11.prod.outlook.com (2603:10b6:806:34b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Thu, 24 Apr
 2025 13:28:00 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 13:28:00 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "luto@kernel.org" <luto@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>
Subject: RE: Regression on linux-next (next-20250414)
Thread-Topic: Regression on linux-next (next-20250414)
Thread-Index: Aduu+j9070JL+I5FRPOhRZgCFNsjtAGIbYwQ
Date: Thu, 24 Apr 2025 13:27:59 +0000
Message-ID: <SJ1PR11MB61293655E9386DC0FBD263F4B9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129E62E3B372932C6B7477FB9BD2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SN7PR11MB7666:EE_
x-ms-office365-filtering-correlation-id: 5ded73f9-9c9c-49e4-6e0a-08dd8333d52c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|13003099007|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?T1oWxHOy27gD8HIBmhPyOr+BRz3d+yDa+F3LnU/4sA3Q/heW8E542lGICy?=
 =?iso-8859-1?Q?J4SeAM9YujL2TJfwnp07wa2es7cjw7Z3cHQZklhglCWX0e0LIJibQyqjfh?=
 =?iso-8859-1?Q?7peCP898koO64+TUQwnHD5F+LlqtShBS3vyw4EyNfJ3ByV+iT4hcxTqzkE?=
 =?iso-8859-1?Q?lLU6tLMCc7q2nqoreIiw8m3XEzLXMCrsjXPbXB7l9uNpxJYJNZSnAgYOB2?=
 =?iso-8859-1?Q?7dM/7cGOaMztIEaG1Gl3uYZbTraKGnzy5UkEa7Gj5oSJDm45BciKUcS+Rh?=
 =?iso-8859-1?Q?Hi3QluNRppaeNHrschqfR9AKLtRtpf3MOO/OC/ZbbMjQkRgavnXj8lExUS?=
 =?iso-8859-1?Q?KMpRcwvCXWTFdNc1YbQsNEEMnAR6MY321Ms94QTfKWYneZGUzf/aHG6RDt?=
 =?iso-8859-1?Q?vr+PmQEM7UBwBZWGtA7/Q8vThVOhYj6Jxu+AlBbK9bay1ZcgreTd7o4SzV?=
 =?iso-8859-1?Q?IRcgRAKm4ty5jcQw2RzaXczMISI9lNwTHAMHSnqd2z+iAq2RVy3JGmaMy8?=
 =?iso-8859-1?Q?aXxDsHk17oXB/dlySe/K4xLhBDqKDmvmSvCUYS0H6NtE90f5NyK/VyGG3p?=
 =?iso-8859-1?Q?11QCHGt9TAt1iw0EkyYPJQv6C5OTKUq2mXgTO2TWqMRiY9IrRiIisZFIYn?=
 =?iso-8859-1?Q?+rU0kTOfvpHi7YzUWxCy69nwi+6yTkOuLaJdt8Jz7rfzlBQOZ9Z06B17Mr?=
 =?iso-8859-1?Q?7PPrO+EtWi833pdka2WkrDDVXk/HCSwJTRYcNwx7HcKI67XyJ5BhX5lPfh?=
 =?iso-8859-1?Q?ZQd9m5Dc7zrepg2D3w9OryDLqDgC26CM+bp3bxKaF4wTBlzHFi9kR/Bp8R?=
 =?iso-8859-1?Q?FykKGxcGu90eKGtSBg2gUGNv6NuqIklKszuXDGpq3LbvCQ107ewj945+gT?=
 =?iso-8859-1?Q?bNhbhVCAf5o700oh7e35jDm2DyyFaev9aelOv2ZjPq044IFmLXPTonzNz3?=
 =?iso-8859-1?Q?E8nbsWgjngHalCLW84btiUfm389CU9YVIp6/E79eLsvzK0+2s1fue9JONT?=
 =?iso-8859-1?Q?gpfQ3nASOEibjEwtzNAdEnoLJIk2ARtjGjOcge7ahwH1719vCpTp+Mjryx?=
 =?iso-8859-1?Q?+a86Yb3aO75PTlS6EAYcB2tSPnks/VQhYgth4dwRPnGkUAt5dJxYCeb4YJ?=
 =?iso-8859-1?Q?NG2DSBP/wWBRSGFl9h95+MLiZAmNC8+Vgk0sl4+ePTqhv1/X7uDmXoXmyN?=
 =?iso-8859-1?Q?RjndwdFj2/IEU/FW6pwOroL8GCNtG3bHBgezf7WkRSm8EVVcEof35rnhYp?=
 =?iso-8859-1?Q?Rw4xnYayySAX0kmHNA/C1Ucbb+SS5ti4ViGxLH3Sv79NZcnTSW1yp6cxBB?=
 =?iso-8859-1?Q?MIEN3RA1mgVFeROlZnTLbmnVyxRmD02eqwoZNvKU45CeGkp1w6j9pqH15J?=
 =?iso-8859-1?Q?SH7ZkDGZ+c2i6CZk+7rbDcO/sUDwvJPgi09HcC8LxBJJyXGY0gSEUDi5PO?=
 =?iso-8859-1?Q?hcTM7LVaonxbxURQC2RnWGIEOGJ265flBLuzd+3lkkx5OkwHeXzfe/KNqc?=
 =?iso-8859-1?Q?Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1RRGxCqJKr016LTL9JMLEVXy/pF8t1AdmvlFszj48sG7JrVJDRAHbagYW+?=
 =?iso-8859-1?Q?anqupywD+nZtpVT/4OevsIfr3jhANJYpvJmEvkoVrWB8yEel+VSZGu5+7y?=
 =?iso-8859-1?Q?oDaJ+G94JMVSHJ9CBQ50Uk3RKht4Tl5gRHNy+AR5Tkd1RlrMp/PWZw9B7h?=
 =?iso-8859-1?Q?NouJC4ZvEznjISLDdzE1VIavj6XFvWDkoyIUVpYqS17pOb/0POb+khfpK4?=
 =?iso-8859-1?Q?Qj58vMp3TZzIxukUNNST1IQyytL67kz2fT01CMaCCjz1kxtgQDYQiFlRok?=
 =?iso-8859-1?Q?6g6teRskJjCsWp39dQF/DBlvsXrfP2MH6Ql8A7sYrj+oqsEdVHO4hQVFVd?=
 =?iso-8859-1?Q?Dx0iv4faUPiOB2C+MCRlPWkmd+gQyZXeGrdBCYg4TRqRNC5hQYFh+A1aMX?=
 =?iso-8859-1?Q?xd42JGFnnEikqOzXVS+HNmQjjh8SNhYKjXbkemuKvghPyUVoN1JZYMUyRb?=
 =?iso-8859-1?Q?xVFL+JINHx+b9/rP2zl0UAvp/KHfTocqc7oxmE4CLFg49WT4iXsGw5uDQH?=
 =?iso-8859-1?Q?nd2z7WumVV+FEhblqmDARNhyTvcin8Ln3vRA6KScNRWHns10pazfUDYlUE?=
 =?iso-8859-1?Q?45mQBaBvoC7Vo+rLkJ/NCudQt++vjul5rgFSgm//0/GaPpyzQYIbsDjmRA?=
 =?iso-8859-1?Q?GI9xB+R+Rt+1DTfBR8KKdrk0k6TStQRopfderVzNI/ebFFRmNFRKLbOnsk?=
 =?iso-8859-1?Q?S5/uOamlYY0cwJ7UFua7FiiVA5JAZCM3eBYOkg1LjVkS08J6ZySsU+3n/5?=
 =?iso-8859-1?Q?gX5SUN3r8Ok0QobxTKq7gCZYEkXmQhvKkk3T5T6z2ezmKffvMc9rrBWYbM?=
 =?iso-8859-1?Q?aGya3be/Jk7hsxWPYYdGbLR9G3MGRV9MMVSey1tPXkswsgudKGK5DWKw8X?=
 =?iso-8859-1?Q?IxwBAcBgJGLm1X3GWJdzRceGWqHQxMMUIJaItJWdoBRyTBJ9WMUQQ1Gae6?=
 =?iso-8859-1?Q?JBMgvPNZMamurQ3j8beZZ1ar6EzC4T4Jgdbvjc46MZBeCLNptDNjyTEiFq?=
 =?iso-8859-1?Q?RymmEn38xNxpkPYqJUZj+wwyEHJ7upiBJa2wdITLVuWA3KX5YdrE2kqV8i?=
 =?iso-8859-1?Q?wO3FhTP4rYt9wHkxkoRQbeArYhngWu/yj7HzyKHwCXvy+FPhdc3kgj29iX?=
 =?iso-8859-1?Q?3v5gOtM3ALk4dFwPRUhVPsgoHQYwDdXuKe/kFJaCiJ1s9/msMHVr7v5Pjk?=
 =?iso-8859-1?Q?n+pb21cZTfIdKKPV9n15BU88tMvvvbf5CXY+wBHj10yON5PhcCH6bP3wxC?=
 =?iso-8859-1?Q?l5R3ifzk8rmJNogKR/v7ucswcBmkcntdh9JEUsbdpZq/jSfoPcUZ2HUIm7?=
 =?iso-8859-1?Q?3z/o9UMSRVXo6vVKD7HMNLQCqcqKSS6Vy33qWfnF/tgkSnJuE4Mw2mehZ2?=
 =?iso-8859-1?Q?As55ofL+364FJNIqnE2pmHhBsBw23vgRZCXInE0HJqrSLCIyo7xuLSH3mj?=
 =?iso-8859-1?Q?as3YAHISp2T0oihy//iQcBxlf6P9/uT7EF98T4XOEOWVvgSDy9Hs/Ogb6q?=
 =?iso-8859-1?Q?kgeqEyqnVznulO+tqq/2zgziS5Nd7JKp0+Oey1r6pcFsMkEQjOAh/9e/6d?=
 =?iso-8859-1?Q?WUaPhfD5sSOqhUN9OYPgPyo7HLt8bCvVf+OkshNDBeGYLIlxOxtFC2NXmx?=
 =?iso-8859-1?Q?wDbNdcuP0DrfzUH/MQ2bHc/pD9acUnnRvwuGmjY42zb1OD867eUErKVA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ded73f9-9c9c-49e4-6e0a-08dd8333d52c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2025 13:27:59.8946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rQh3xL1VGl+NeXaHepLfNWO+bmSpCF3lHtGdvoJsbcmecnaaqEgInDuRiaVXJjiDkHMYiWtqjg/majVV6m7Gs0OEsXHh3ybofBi7FUpwtLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7666
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

+Andy, Ingo

Friendly reminder.
Issue is still seen on latest linux-next runs.

https://intel-gfx-ci.01.org/tree/linux-next/next-20250424/bat-rpls-4/boot0.=
txt

Regards

Chaitanya

> -----Original Message-----
> From: Borah, Chaitanya Kumar
> Sent: Wednesday, April 16, 2025 11:39 PM
> To: luto@kernel.org
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kurm=
i,
> Suresh Kumar <Suresh.Kumar.Kurmi@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>;
> linux-kernel@vger.kernel.org
> Subject: Regression on linux-next (next-20250414)
>=20
> Hello Andy,
>=20
> Hope you are doing well. I am Chaitanya from the linux graphics team in I=
ntel.
>=20
> This mail is regarding a regression we are seeing in our CI runs[1] on li=
nux-
> next repository.
>=20
> Since the version next-20250414 [2], we are seeing the following regressi=
on
>=20
> `````````````````````````````````````````````````````````````````````````=
````````
> <4>[    0.203154] WARNING: CPU: 0 PID: 0 at arch/x86/mm/tlb.c:795
> switch_mm_irqs_off+0x389/0x410
> <5>[    0.203173] Modules linked in:
> <5>[    0.203184] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Not tainted 6.15.0=
-
> rc2-next-20250414-next-20250414-gb425262c07a6+ #1 PREEMPT(voluntary)
> <5>[    0.203207] Hardware name: Intel Corporation CoffeeLake Client
> Platform/CoffeeLake S UDIMM RVP, BIOS
> CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
> <5>[    0.203229] RIP: 0010:switch_mm_irqs_off+0x389/0x410
> <5>[    0.203241] Code: e9 4d fd ff ff be 00 01 00 00 31 ff e8 60 ba f9 f=
f e9 29 fe
> ff ff 48 c7 c7 60 25 a1 82 e8 bf 73 a2 00 84 c0 0f 85 d4 fc ff ff <0f> 0b=
 e9 cd fc ff
> ff bf 0b 01 00 00 be 01 00 00 00 31 d2 e8 1f e9
> <5>[    0.203271] RSP: 0000:ffffffff83403d90 EFLAGS: 00010246
> <5>[    0.203283] RAX: 0000000000000000 RBX: ffffffff8389f080 RCX:
> 0000000100a8c000
> <5>[    0.203296] RDX: ffffffff83414200 RSI: 0000000000000000 RDI:
> 0000000000000000
> <5>[    0.203309] RBP: ffffffff83403dc8 R08: 000000008d3ea018 R09:
> 0000000000000000
> <5>[    0.203322] R10: 0000000000000000 R11: 0000000003f55067 R12:
> 0000000000000000
> <5>[    0.203335] R13: ffffffff836d0b40 R14: ffffffff83414200 R15:
> 0000000000000000
> <5>[    0.203348] FS:  0000000000000000(0000) GS:ffff8884d94f6000(0000)
> knlGS:0000000000000000
> <5>[    0.203363] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <5>[    0.203374] CR2: ffff88846dfff000 CR3: 000000000344a001 CR4:
> 00000000003706f0
> <5>[    0.203387] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> <5>[    0.203400] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> <5>[    0.203412] Call Trace:
> <5>[    0.203418]  <TASK>
> <5>[    0.203428]  use_temporary_mm+0x5b/0x130
> <5>[    0.203439]  efi_set_virtual_address_map+0x4c/0x250
> <5>[    0.203452]  ? efi_sync_low_kernel_mappings+0x10a/0x220
> <5>[    0.203467]  efi_enter_virtual_mode+0x205/0x5b0
> <5>[    0.203482]  start_kernel+0xa38/0xc60
> <5>[    0.203492]  ? sme_unmap_bootdata+0x14/0x80
> <5>[    0.203504]  x86_64_start_reservations+0x18/0x30
> <5>[    0.203516]  x86_64_start_kernel+0xbf/0x110
> <5>[    0.203526]  ? soft_restart_cpu+0x14/0x14
> <5>[    0.203536]  common_startup_64+0x13e/0x141
> <5>[    0.203555]  </TASK>
> `````````````````````````````````````````````````````````````````````````=
````````
> Details log can be found in [3].
>=20
> After bisecting the tree, the following patch [4] seems to be the first "=
bad"
> commit
>=20
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
> commit e7021e2fe0b4335523d3f6e2221000bdfc633b62
> Author: Andy Lutomirski mailto:luto@kernel.org
> Date:=A0=A0 Wed Apr 2 11:45:39 2025 +0200
>=20
> =A0=A0=A0 x86/efi: Make efi_enter/leave_mm() use the use_/unuse_temporary=
_mm()
> machinery
>=20
> `````````````````````````````````````````````````````````````````````````=
````````````````````````````````
>=20
> We also verified that if we revert the patch the issue is not seen.
>=20
> Could you please check why the patch causes this regression and provide a=
 fix
> if necessary?
>=20
> Thank you.
>=20
> Regards
>=20
> Chaitanya
>=20
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
> next.git/commit/?h=3Dnext-20250414
> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250414/bat-dg2-
> 8/boot0.txt
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
> next.git/commit/?h=3Dnext-
> 20250414&id=3De7021e2fe0b4335523d3f6e2221000bdfc633b62


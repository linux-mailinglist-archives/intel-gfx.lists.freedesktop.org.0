Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F9C973AFA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 17:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EEA210E853;
	Tue, 10 Sep 2024 15:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQDK8NHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D93F10E851;
 Tue, 10 Sep 2024 15:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725980768; x=1757516768;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2758UN2/iNbDBuZ4/6r3T0V0OaEWrNHLZsxtcbRbGeo=;
 b=dQDK8NHX/fw+5OYqol2qxG7Fm/q/8WsQze+HHQkrsY5dxByzrOXMnaW0
 Hrr/DqD+yaChk3c7mNqMzj9nR0twUYo2FqIKah8O6RgYs49/o5C0yDYAf
 83NBPSkaDwNavnLukCAIBDemL8K0u+y4C3YHrZbqGVCcAIkRhKPE/GPM5
 gQOJeZxOD3vvlWscsxDcjhLMMR+lZd4hCDrRtfcybs3U78f8aAMPHNEC7
 /6/FkKPcVjvOOWRtMElcVg3NPVUACvkaCXgTpDPqDjyxYtp2oiYoPXZLd
 c5TjM+V2elHop4XF2yoXaeN8ZbtHpVQeaf/+LXkoh1YQ/ky9brCp4CZm2 A==;
X-CSE-ConnectionGUID: pn88agKeRuO5qJQaQ6Zlpw==
X-CSE-MsgGUID: KkKiLG2AQiOIUE7tVMViaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24836814"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24836814"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 08:05:34 -0700
X-CSE-ConnectionGUID: 7CVnGf6PRnucEEzk9Pylzw==
X-CSE-MsgGUID: v9ZBe/y4QSmcmqIPW8g6gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="104518943"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 08:05:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:05:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 08:04:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 08:04:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 08:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EcVvyWiOL3t1mYcfQPJOZ4vV7I+RJgqYWyu3xarIfY7mHbsTNmpn4sZKytl7WiIWcJPysQlyZCaWYPgBCsYXe5e3i49YpHj0mIl1mIHs9YABxKTR7Qa0IetzbVgKC+yNvAt9/3r9QXjT8fJ4qFGwh69t+go67lOp1yrpKQ1VCF3bVznAdTqW09JyKnnqfCqEYp7YHlCFxNlaF7NWguzJMVck30zYdccWQ79THAmmaSKvzycDgSa08AEX12+pOfn9jkDXdS0mKVb42opk1iFUlGAyn0FLPZAERwzH8aE2367KyaIuT4gmbpsmcYKHtU7nMbCvSfccWaHh+oJZbes8IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2z3X8B4dC6Bwr6UVSMtdXgyvaxPwMN0M53CqjtxBa4I=;
 b=l9t2WBMxMZ8nSIdwMtaMi0tVWcvI2Na7dNecR4ERnQ1jiBpAqNIqdMrORVkOmgbKf7ZLHBWgFTMZ7+2Apo9270vQgFmll22SAORlJNFt4T5r1o+AEFkNWK1xc60g3tZvXOPkWjy1wa1J0dxzU8e36/hvF0QnWIBlmp0R5FhmylHx7pyHoZHC+8lRSwGI+qIY0eSrcv/2p5I7xP10LiFYCHXkkQ2SGWr+iAKtX/UDvZyDeXNi9EpH3vNnObqoEmkOhGndb1pPjd+P0frleYU5wy4B0+XIdv2QsndzOFibJrbrSY758EB/TuQuYgln+eqeofHpEMeCqQMflS57cqy/rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6728.namprd11.prod.outlook.com (2603:10b6:806:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 15:03:36 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 15:03:35 +0000
Date: Tue, 10 Sep 2024 11:03:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Kamil
 Konieczny <kamil.konieczny@linux.intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Tejas Upadhyay <tejas.upadhyay@intel.com>, Tvrtko
 Ursulin <tursulin@ursulin.net>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Alan
 Previn" <alan.previn.teres.alexis@intel.com>, Tomas Winkler
 <tomas.winkler@intel.com>, Alexander Usyskin <alexander.usyskin@intel.com>
Subject: Re: [PATCH v2] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Message-ID: <ZuBfwqpIX4HAGwb1@intel.com>
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
X-ClientProxiedBy: MW3PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:303:2b::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6728:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e70fd87-4d40-4348-4ff5-08dcd1a9be33
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?FyiMImBVz2qVONIwmt93Jmot7gBPGmKk5GFOjSV65DB31EWx9uptgnEv2o?=
 =?iso-8859-1?Q?2D++wSpKhFLtETHsfaqucDYIhSBBILV6GfCJatP3Y3/8qUwkNJLpKO/s5M?=
 =?iso-8859-1?Q?JqsmwSyZ466RC9X0/DXY0wz/FmS1Uave2fZEZmG8M3pMwlDjFmG+wUoBBX?=
 =?iso-8859-1?Q?/cJ1pHigXcWbKTWQeUpn1IreE7HyZEpiBLEeVCrXFsy2ggHySneMB3JEgf?=
 =?iso-8859-1?Q?lqHFjXmSwrx/RPN/ZZL1xHyo8sJm8rDs10esn16eUWSisj14B6cq/gRNNd?=
 =?iso-8859-1?Q?6cBO0AebQ6mfXTxsG5npw6uM5vv+Ux7gWq4/3XkwjbRKKQBXcIdt3NJbvf?=
 =?iso-8859-1?Q?e5XOT96PkWa7Fc6mwJv8QvZXKz0VRkxA6ZmNrqXZ7i6k1Zgbz41idfq3Io?=
 =?iso-8859-1?Q?xumF/qI5eZTyh7xFvO3mGjkg+YX3SgIHU+EKEnJ/o2PWviCrNI4Adj1zVa?=
 =?iso-8859-1?Q?4b8muvUDHRwYV7Cv9Oss7I89a+Pb7AXaM3YlJmhXVYPHiG/+MtLZ5AIrIJ?=
 =?iso-8859-1?Q?qkfu3hyTfbUV/I4kGCPzfjCImVsNgGNb5YgOnVg0+8PGt2+8+afbeaQNu6?=
 =?iso-8859-1?Q?KdzSY5xAMlIyAGoOq3ecxG+MHneqHHWtXpHXnwqSCJbuMoT4ocW8Guvh+l?=
 =?iso-8859-1?Q?ppILBhCoSjvWJDfE3/4Z/+AMNIpoWX50XElGDM3zQPgpLzobJ8rMKEpxN9?=
 =?iso-8859-1?Q?vTbQZozCxNNtOb4UKAueS0f8qGv9ANxwYHf7ODzLb1+2qjTLnPCii1mhAJ?=
 =?iso-8859-1?Q?YHd8wI9SxFv+o5yg+XvbRYao/TDmZdaS/ibSD4ldXxjdSv86HYH+rYZA4I?=
 =?iso-8859-1?Q?P8bKdPiIDHbDdXO2DWpsINF8dW179TY+X3JN625tg5phOkSyouC8mPwXXq?=
 =?iso-8859-1?Q?jrVItPDPXZ683ovcahujh105zZyr6OX8BF5Mj2OvZUKcXaTXJwD9oI3/7D?=
 =?iso-8859-1?Q?eDYkQRvkFRINRoodCZPDDdH+r4t9IpFH9mWtGOkBF3trocs3JcTO3i0NMS?=
 =?iso-8859-1?Q?DHWxyR0HHn9hf0mUZ9nJbmgJPFc1NlG+TOsmc7PYACSuzFXwqeU2aX7hCT?=
 =?iso-8859-1?Q?VWZ+R1az9+n3dyN8n4/cf6Vfda5Hbd/aEQ/hCX1YPKosUFtGGVm0nUIU9f?=
 =?iso-8859-1?Q?WgbZ8ZqZq6n3vt1dNyXJMGs6mYk3Kr7C2m9r7MGEijylGviU454dmVzre4?=
 =?iso-8859-1?Q?0Fgd0Cs1yNyKpCKdo1B/lORVkwwgui7y5Y3mgDmqdI2MLuSYdrgPZJOOPh?=
 =?iso-8859-1?Q?+7Ox4WLPec43tkgX0fE/64173hOh7y8cRk8YyYEPEi0wxiYKiHkzwY/ko/?=
 =?iso-8859-1?Q?2GIQpKIIo7CMJGeA2ESH7K9qJRtRqgvxHsmA0/ii9bTt39VMeY6xZhcRsm?=
 =?iso-8859-1?Q?spgJ7UJXo1FlRPfVvXT+l+psWkY2P5ag=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?GAtDRZT45wsaJke988riss3V9f0mVcY1oNzkDe1cUmHmH2JJoqs3f+s0Hj?=
 =?iso-8859-1?Q?64K3woEK8DA68dHz/C59LVbiFt3mbKS/RDoOkrn8NOyCOaUIsCsCeCj0K7?=
 =?iso-8859-1?Q?L12+KLsacucYpLap5HigrhgKuwgXfk+0bD3DriMWCN3a17I+9UFT99Z9Ww?=
 =?iso-8859-1?Q?PFQhdIk1nDMXt6aFe+xddr/jRYL5URe5bAJR91wP60xbSqA987ab4U+nn1?=
 =?iso-8859-1?Q?5sMSKoLPHOX0dZZcmbgbry0JExOSXS1S/znNaSlzUN+jy+cyWsJC0p7MRZ?=
 =?iso-8859-1?Q?BHQ+HlsAyNgkt2enCxrF3UMZSIfYWP4pe+AsYwldCphCjQXhydUJB0qOLO?=
 =?iso-8859-1?Q?yy0FTbT/nwPMVq/U3ro5RCG+96GLnjQyreZzd62mHVYEJpHEuNydpgxi14?=
 =?iso-8859-1?Q?ZwI7ZTQrmRt5DouDcxJuxwnXjGdT18YE+oOoUynlV0iLs9aNQOE0xsWRt0?=
 =?iso-8859-1?Q?QCJbTu78Yj/vi+lWlKPfV5fU6Pmg0/J6EWexERvnifesZ2WiImA+MvTG7L?=
 =?iso-8859-1?Q?82b27RFxkXnrDKnLJ6cPjjhsXwtNeiQegpkGDJYtp4KgUK9bc9OAxfryAt?=
 =?iso-8859-1?Q?MUsD16XxD+722+vQq4t/5a8J6yVuHdDoohynsKEFTYW/69kDZWaUeQ24B6?=
 =?iso-8859-1?Q?VfJnYJ6CVl/0Q02TfAD5CetoEmlZfAr5UBBqGv3/tCEnA4/G4oGU6m1Jod?=
 =?iso-8859-1?Q?JR3c3AQNplBG6ONamfdasZYzOx50iFQPFD6gzCuTXVbXCciDtF9bDaOov/?=
 =?iso-8859-1?Q?/DRQOj7yqcar8+oW9zkNbFE5bEuDl8DOX3byMRfs05l+QOcg6HChQ9fQS/?=
 =?iso-8859-1?Q?N2FYN8ox4/jGG8hHeCLO6XpqG7CO+emMPIhjJF3L4SWOWtI2FblQlrf9j4?=
 =?iso-8859-1?Q?4U6aw0UiAdAAG7Zl29mtSEY/vLAaPscBH65aOtsIvZL4QQFYrb+NT2Ssvh?=
 =?iso-8859-1?Q?d+o6BpXtBtquI77Q/52KesKEM9EAd8OTMg+7GpTA77btFZatBkJpKTs5fW?=
 =?iso-8859-1?Q?+jawdXXow57YTQ3wLr7GyfOidh7f7w2OWv1GzAm49EAt69d3u4brN3/Klc?=
 =?iso-8859-1?Q?HHA2e/3CqoAdr2JMaJ96Ud7gxvH2qs012mvfoblaRR8M96OTUcsIS729Fi?=
 =?iso-8859-1?Q?6T/GRBmaURQOhGQcQiui72fGk7q/UyNDxcQWYsJajzmpQy6fhNCvhZb9vS?=
 =?iso-8859-1?Q?Q4gr/O5qmm+a5uhf3qOOkzQZEL248jzkgLC//cNO8/8JDlZAITcYbVzns8?=
 =?iso-8859-1?Q?UsogM/luajrGwGsdyrJsuUzl00Amh1rUmFLmk0NSw4TGW1p9w1rj4gVhE1?=
 =?iso-8859-1?Q?PdEbriT4jmIqvcWs/jS7r/WLVMT/IpkawkhCZ6seMbP5o+A/KMxWbQ3nyM?=
 =?iso-8859-1?Q?82ANCnPm3G4kRfGM/PCVSN/VWlJ0i9u+7fmrrG+OHHtTbEW2NmTY3oBGmo?=
 =?iso-8859-1?Q?GDTicnw5g7ViqSbRKp9V7iw7+9iHgmZAvtXPT53lrxcBWzpSPoGiRzK/u9?=
 =?iso-8859-1?Q?6IEOGFuqvVoc+Wic51Fqsb+fq3wJXejRezdkx+QCzVqRwhNSwobSk1cci8?=
 =?iso-8859-1?Q?RoCZpLPS0+KDZZxFOjg2PqZvbXVEWDvhE/aschU4KyM3eE1fo+HGyqDkJR?=
 =?iso-8859-1?Q?UI5EWJ3ntRdOCD9B9hGmVssj8LQXWCYJUrOlfgjIS47rTG1T08W4xPEw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e70fd87-4d40-4348-4ff5-08dcd1a9be33
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 15:03:35.5009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KRffnbhL8mmsfLxE0uPOZsd+15wNc4wfQMEemXD+n+ZiF8qPNNBcAdAapMnvDWIwPQlq1XhNb3aQvNQ10V7iMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6728
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

On Mon, Sep 09, 2024 at 09:33:17AM +0530, Bommu Krishnaiah wrote:
> This update addresses the unload/reload sequence of MEI modules in relation to
> the i915/Xe graphics driver. On platforms where the MEI hardware is integrated
> with the graphics device (e.g., DG2/BMG), the i915/xe driver is depend on the MEI
> modules. Conversely, on newer platforms like MTL and LNL, where the MEI hardware
> is separate, this dependency does not exist.
> 
> The changes introduced ensure that MEI modules are unloaded and reloaded in the
> correct order based on platform-specific dependencies. This is achieved by adding
> a MODULE_SOFTDEP directive to the i915 and Xe module code.
> 
> These changes enhance the robustness of MEI module handling across different hardware
> platforms, ensuring that the i915/Xe driver can be cleanly unloaded and reloaded
> without issues.
> 
> v2: updated commit message
> 
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_module.c | 2 ++
>  drivers/gpu/drm/xe/xe_module.c     | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
> index 65acd7bf75d0..2ad079ad35db 100644
> --- a/drivers/gpu/drm/i915/i915_module.c
> +++ b/drivers/gpu/drm/i915/i915_module.c
> @@ -75,6 +75,8 @@ static const struct {
>  };
>  static int init_progress;
>  
> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");
> +
>  static int __init i915_init(void)
>  {
>  	int err, i;
> diff --git a/drivers/gpu/drm/xe/xe_module.c b/drivers/gpu/drm/xe/xe_module.c
> index bfc3deebdaa2..5633ea1841b7 100644
> --- a/drivers/gpu/drm/xe/xe_module.c
> +++ b/drivers/gpu/drm/xe/xe_module.c
> @@ -127,6 +127,8 @@ static void xe_call_exit_func(unsigned int i)
>  	init_funcs[i].exit();
>  }
>  
> +MODULE_SOFTDEP("pre: mei_gsc_proxy mei_gsc");

I'm honestly not very comfortable with this.

1. This is not true for every device supported by these modules.
2. This is not true for every (and the most basic) functionality of these drivers.

Shouldn't this be done in the the mei side?

Couldn't at probe we identify the need of them and if needed we return -EPROBE to
attempt a retry after the mei drivers were probed?

Cc: Alexander Usyskin <alexander.usyskin@intel.com>
Cc: Tomas Winkler <tomas.winkler@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>

> +
>  static int __init xe_init(void)
>  {
>  	int err, i;
> -- 
> 2.25.1
> 

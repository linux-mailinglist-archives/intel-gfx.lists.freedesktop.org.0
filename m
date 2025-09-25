Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E128BA0A8D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 18:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657B110E992;
	Thu, 25 Sep 2025 16:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiWhpp6k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0A410E992;
 Thu, 25 Sep 2025 16:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758818427; x=1790354427;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VyBkqqV8xWWdReMszs/i31rgv2YQAFCgXXni9hv/3oQ=;
 b=RiWhpp6kN6bii1Uxi2BgzVONBdVgGBBWJ2KivPIxYbEOebC7ctuy+sBg
 7o0CRUEKqnj5TNW9Bhs5wGyh8B0MWsKqxl2y4064ekO5Je4ZGSr5LztMs
 xiDqN9e4ZO2Vn7i4itbH2x8HfUSjGFDZVQHttkswb2MjT35bg1rdJRkl0
 gVgP/x3A8c8uKRgKuVh+lwiGxyva7S7QMl2aq0YfTkmR0TtE+JmzQNf04
 TSef3IVkldla6Tx+topFhom8BSjqRjGxrWpZPEkRvf0JFmMOlstyh/5ru
 zPzoPwuzOXOvUd/YD2GsvIjwU2V6Lw/LKWeRifTTI2hG3eiJrN+dR7dG9 w==;
X-CSE-ConnectionGUID: s28U513ySJe2XXyZi9vV5A==
X-CSE-MsgGUID: b6zWhjefR0+/2I4SJ4Ugkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="64991342"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="64991342"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:40:26 -0700
X-CSE-ConnectionGUID: KnOzW1JqQIWcMKpanA0eWg==
X-CSE-MsgGUID: 0mwxn94ETmGLHH9UIVwEPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="214515965"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:40:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:40:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 09:40:23 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HaVF8h1PRtmjPud5oncmJrCDiOhRkJI/i/0QVB8UxSlacGmxdJFvqRI5D7sQz1fpnr8f281GKQ8JIMGo2WfxW+5PolphQIdeWAEJJuYiUs4Ak4vZeou8b2lctOoz0vh26Ntwb/m5CnvqZc7c/yXGrrgsT7vi/0OZ93RAescy5xD3pkig8A/HLBm+rZmFmGx3hP/D+ZHqvQQDZhsoW5cKRE5xxSCor7OBRJUlZv5g5PaAJh1lkChFp2fpkuShlH/Tk9UBZ4WhSDIN1+NJIXI0RPB/sXAdhrd/IoI3/coMEAZ0hTyqjgldi8T56i0nmcyv8Dv/hzRcAikwltN60f4xZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KTb+9w3PwE+NP3sS5Y4woIf9juZwD3FvZXPy6xc1jj0=;
 b=WOTcFBCZ0cU+U24n6plWScxo9eBqT54Q5KhS2+K0Bv/0fUTky4iRrh8fjcUX5jgkMZRsumJayUpG3HaLz2dCIqp1Ug9GCk18W50Rb4rCjBhk+di0CAByUsYPcXU9qmOSuGE4JsuebGqxIZFroZMSCdSRxWpg5dFmYTUeJTcr6WN/xCyHDfsFRRUxuMslN8fgsTo2L2zio7XnQSfMqTyX+CKCyNX1/sqeXWbTLIaC2ni77VZjqo2gakyIa71CeJ5srWfbIPeGZFuMdRjdy/wx1AXCS+/Nhs1YexeRUq7LAwHdb5oos9rdVeBZBkiKBuslTqDDM0VXCVoGuuMC4M4upg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Thu, 25 Sep
 2025 16:40:20 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 16:40:20 +0000
Date: Thu, 25 Sep 2025 11:40:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Joshi, 
 Kunal1" <kunal1.joshi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Message-ID: <km7lcdgnkzhsgfiv7ppx4ej63om4ymdx6bgndl6fwc7kxxyp6l@3nu5lpw63hqc>
References: <20250924100308.346808-1-vinod.govindapillai@intel.com>
 <6dvl2tpadc43l26tuzf5mieqkeynj54vxrq4f5qscn2zn7cb53@6nopcpcsqnra>
 <aa9009ee225ea08072aa0c8881fdb8ca7667c169.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa9009ee225ea08072aa0c8881fdb8ca7667c169.camel@intel.com>
X-ClientProxiedBy: BY3PR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:254::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5072:EE_
X-MS-Office365-Filtering-Correlation-Id: b27f8f90-6488-4881-7da6-08ddfc523732
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?jxnqoLF8WxAwhXjYoXZ/cGcnpA0XBkIYxxqh6nO57MbZ/h1ND3k24xg91K?=
 =?iso-8859-1?Q?40oSWeZTD778WaE3ovs0VGrS8jCx1Kh5RmHyzHAvgnuWxRFbzJQodByHs7?=
 =?iso-8859-1?Q?RNwQS5AFKwpKwTO8WQrpdgen7bX6QBsR1Bes6K+aDeGEGk9qfD274xhvSy?=
 =?iso-8859-1?Q?HajplTkErUKaB0NLi2gaEXobDh+WjwjzMksOPtxAsTh4gjCSP6JzMQv/uw?=
 =?iso-8859-1?Q?IQKJmKhu2GS19oeBUQ6qufHAD2AvTT4k9YvjTmMk/PL2PVyXOUIhhZGfXh?=
 =?iso-8859-1?Q?b6LnLv6M2+sbdyMiyOadVp/WWkO+pLTzBgnBsp53J/VMD5psVnZI3nLXTT?=
 =?iso-8859-1?Q?PW80yi1S83sX4LrrlsnET8VLzDrcwN11nueZNfpBBaXvn5PeFfVMVMGsas?=
 =?iso-8859-1?Q?hrbp3Gc0BGNUDl9DUF8RKw3gsuBZevMhK971wAcoWcMjohwtv0UXkO972q?=
 =?iso-8859-1?Q?WerWkuGAqTirJE2zau0MyeU2InXDteS0HtR49obE0oGMR3RvHMy1/VIiSS?=
 =?iso-8859-1?Q?R5wc5nOT0XifIMaG35KENKwLF6Vmw5S371Wp7C38x29nqiAR5Tv2y/rPD2?=
 =?iso-8859-1?Q?NEbZK6C5qWbigm37zIFj43RlM+3w547BPZ3mXzQLw4+w/YN5uYkU+g0Wew?=
 =?iso-8859-1?Q?uQoERj9dSwA74S6Joox9Fr4Uizc23Z96rE+8qEuwNNq5KoebSvFCy7Xg9B?=
 =?iso-8859-1?Q?9YkPHC9SABtpUXMHUsLSY1hzpFJCHAIoeRfFndf0/gS8h3u1ohIc+b2nnI?=
 =?iso-8859-1?Q?sOMIuriLbijEhw+gWYl7SOKrZN3J1+/dzADSbm6XCoyQE4M7sNEYNgefzJ?=
 =?iso-8859-1?Q?UNGerOSonE0MZeVYfG5Qr0RnegMnlaXCG/GF5aPln+3us0g+PwOQKYeFMN?=
 =?iso-8859-1?Q?l90wroggLu02ZRJXurKxlxvG4dOOOTx1JmFjp2GIZmMCy68KWQo3PmHisP?=
 =?iso-8859-1?Q?p3dvu/SunrAb7dSvb0AOPMxMeT6pbRdkdcKYrWy88GS2Zhx3dDnhe7r1en?=
 =?iso-8859-1?Q?aPgxvH08mA7XP9t2+2jQz55luOUfEjyrRNakUkMGAQWAT+mJC/eGZ5dT84?=
 =?iso-8859-1?Q?ZDveNcf11rebD56wiwTHxC3Fhv8X8A+v2csuH9w/A5Hf2DcqcsX8QyCcQx?=
 =?iso-8859-1?Q?/rfteRwta5ATtd5g7vWuB1Z6KIn68dCbSdafNrZGyRbRttx/GSkeywwI8w?=
 =?iso-8859-1?Q?4buN142swVTvVeiV5oy/6cNXqpvmAr3DLvsx7dzrRfTx1qQmcnkB3AG8R0?=
 =?iso-8859-1?Q?Jrk1A9P6DcDwwNB+XjPHGcQgUKp0aSsJBWaLFeE9sq8+N8Ca/wwxmCoLMo?=
 =?iso-8859-1?Q?35lz2/5n6hOUYrmMJaRCOXVN675Wp6buJEr46sowxFN8EKzraU33HjH+uY?=
 =?iso-8859-1?Q?+WKural6miANK+DZHLi04v5sT5pfZHGPy93vfHkmTkpxdfXzwxyhd8KRCY?=
 =?iso-8859-1?Q?qKZ8NsncUhXlS6YxWGIK0hWkUtuujQVGZwoeICMYFGMF4NumVhuu9QFYoy?=
 =?iso-8859-1?Q?nOO1KrUns1V456B8QzQWze?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?6uYiKaP1fASUOllI0rgFxlTefgVw3N54wNISYi6vt607YC+2AfGn5qg4SK?=
 =?iso-8859-1?Q?RksEkS3aCMdXEfvewsx2WHaHPGVNBitYPsNexPy601vKCLyQAQX2wSwH0t?=
 =?iso-8859-1?Q?df2OLv/C0YeoejdpoYDRnEDaaiMjEA0pLUslQ6WKphUaYkJ98z698rMjMO?=
 =?iso-8859-1?Q?Ox0ZY+tF19atzfitpMpIalTFY+6BjxKkOCznciBUASpi6PwX1eUgyebuAr?=
 =?iso-8859-1?Q?h1qcrBHxlkVlxcR8e/LklIYAy29zYq0rbreucoj6CXS6isLJzbdRGUWdmW?=
 =?iso-8859-1?Q?fFohVXYztXHpr6mgCOxKI75aNNdH0Sp4P3je0kZxRaiUkY6H6K4ulnYrF9?=
 =?iso-8859-1?Q?5dO386IxyhcMb/8SkhEIsL/wwocpv89s5z9Dt3ndlbHbljyjkqJboCZC9q?=
 =?iso-8859-1?Q?ueCqCoe5GKh1Rd421xKAUjCGNH5WKWKiU5ZZqde1OWu3fID19TSRxQIX3j?=
 =?iso-8859-1?Q?YZkVQA/glLbNVR6vOwGPmVXw0pAwgMhebIjTf+Mp8KM2WRmFme9DE8nkYk?=
 =?iso-8859-1?Q?L9sFSzDbg4LViuujCbb65Sruo2ho8+4DBLOwMcXClHWlxRknlvUeqKO9Qr?=
 =?iso-8859-1?Q?Yt2smZaRERyf2Z9TjBcAeAHayYT8iWyhFdh8I+i5o8/5t2MHKz5U48803h?=
 =?iso-8859-1?Q?clPECa6vEZw1AF7RyIMime/pBS5I/x5J1SaXNztjF1ImM6OOpyTnF12E4J?=
 =?iso-8859-1?Q?KSgLNPqPOf98bioeBS61nEk12wsJvDUDFvr2iu5T7D8URFOBSsYj6KFJJO?=
 =?iso-8859-1?Q?xsyxNcI/A/jb6NSMo5y/8kaU75seMk1pHXtbSMOW4c6QqohqwVm6FDkYfC?=
 =?iso-8859-1?Q?P2bkjJpFbGBCePGJGuoyqAeOpmw7+7fu10ja/7RSkU0cbd7LvbT/NM8cyu?=
 =?iso-8859-1?Q?f2aKD+SjS+AaeLZbYaY4TritFYKlknmX9eDcuTsRcULilyzCgc6dv7MBgu?=
 =?iso-8859-1?Q?tpOB5KhIexBkhpopEiF/0qisjt7ZIQFpM3hShEI5TojgW3d5mhJD/9JQU5?=
 =?iso-8859-1?Q?qlpAd2Qftmd0w5CHLPm+E+sB7fAeOlL4VcH0STOy0b9Shxslw4j9cuhqPp?=
 =?iso-8859-1?Q?W0Vs2IaSw9d+gnhBZSCj+L2M8Czj89qvAXGpWpPRXpRUkCbeIx9WyLvQ4p?=
 =?iso-8859-1?Q?88dD2qKeNGbRlflwhISFe9XM7XjQxcQqC3bYLWw4SMzHjy3uxEflz4f8uo?=
 =?iso-8859-1?Q?WN4f9yVoeEuCDPxOunIic5MFOsCwc6VdLaVJtC54SR9IcU2DRKJ7Y2dhiC?=
 =?iso-8859-1?Q?NYFoA6QufpBJd4rX58mIVKvpzdV/FW2NdU+TvtfVzqbKD0jNhG0aZXP5T9?=
 =?iso-8859-1?Q?5yI7AyYAukJqFd4HIzh1ys2gWoA35KBB5l9Hv+OUAh7KwviuLLukT1y9vy?=
 =?iso-8859-1?Q?nVme8zrCkQb2S2FpxD8VR9XuhM/QS3iD36ujTgTdNx9skzAH5XYFq0YtgO?=
 =?iso-8859-1?Q?8zHGbTNFyKJDKgFSITxxp53ZRPT+beyQoJw+im3V2zKq+VhwO66u5GAW1U?=
 =?iso-8859-1?Q?p+YbZTNczH6cq9sno/ifVHTH0i3uCunE4LlEsucUGVxjkum5z4gcwrHjAZ?=
 =?iso-8859-1?Q?so5dNF/1aWqIlxYKuX/LEEYTTIOtMIeY/qKtx1RjQOYnqXUUG+sj4dD1NM?=
 =?iso-8859-1?Q?ITefckpSGCuaTmto0rw7OO/qNBSwcGQ2tcsCaNu4UM0MF0cVi4/J9zWA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b27f8f90-6488-4881-7da6-08ddfc523732
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2025 16:40:20.2706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4/C5kySvHqMxFnmRQk6jNOueH3f24d7jPncsyhEZxZUAMdJbAiO2wiVMslcf6xcEJwv2QpHqFief9rr0KsUNW3Z8reLitdipmYnSUrn42jk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5072
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

On Thu, Sep 25, 2025 at 11:31:13AM -0500, Govindapillai, Vinod wrote:
>On Wed, 2025-09-24 at 15:46 -0500, Lucas De Marchi wrote:
>> On Wed, Sep 24, 2025 at 01:03:08PM +0300, Vinod Govindapillai wrote:
>> > wa_22014263786 is not applicable to the BMG and hence exclude it
>> > from the wa.
>> >
>> > Bspec: 74212, 66624
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>> > 1 file changed, 2 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index 0d380c825791..2938ee4b64d8 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -934,7 +934,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> >
>> > 	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>>
>> at this point it's pretty safe to drop these comments as they are not
>> being updated
>>
>> > -	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
>> > +	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2 &&
>> > +	    !display->platform.battlemage)
>>
>> is the plan really to keep adding exceptions? That doesn't seem to
>> scale.
>>
>> According to WA database, dg2 should **not** be an exception. Commit
>> 1d7426945716 ("drm/i915/display/fbc: Do not apply WA 22014263786 to
>> DG2") added that exception without proper follow up to update the
>> spec/db.
>>
>> And besides BMG, it looks like LNL is also not affected.
>
>Okay. I misinterpreted the "Project" column in bspec 66624. That's the reason I decided to add bmg
>as an exception to the list! I will fix that!

I recommend you switch to querying the WA db as it's much clearer (and
correct).

>
>>
>> While at it, please migrate these to use
>> intel_display_wa(display, 22014263786)). Then you can probably just
>> check by IP version  `1100 <= display_ver < 1401` seems to cover
>> everything, but DG2 situation will need to be figured out.
>
>Okay i will use the intel_display_wa() and about the DG2 may be I will put that as "Todo: assess DG2
>need this wa" or something like that?

I think it would be better to follow the spec and test if things break.
If they do, then follow up with HW / spec owners about that.

Nobody will do anything if we just leave a TODO comment in the driver.

Lucas De Marchi

>
>BR
>Vinod
>
>>
>> Lucas De Marchi
>>
>> > 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>> > 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>> >
>> > --
>> > 2.43.0
>> >
>

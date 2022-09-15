Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 443565BA2F5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 00:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC09A10E187;
	Thu, 15 Sep 2022 22:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5744710E187
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 22:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663282002; x=1694818002;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:list-id:list-unsubscribe:
 list-archive:list-post:list-help:list-subscribe:cc:
 mime-version; bh=sr3bi5Ho2nJ9xxOamW7sASuDnJhDYQxpiFWbAFVoyyM=;
 b=HxQik1iTBv8i9rfTVO02M1R8MZuVKOqPWvWtAlDvNUFLHIagJ+7rtqag
 DbvdTz/G+b/A3gAoDmx6Gmxex3fjg0H7QmOsXDRVY8Hsc5mDFRNWNVWhZ
 9R4gRUNhsTEUeDId2NnryfmfdANnHAthBPvTvBGIqry6v2hZAmJnuSWHJ
 Vvg4nUs4nFjcX5SOyG3BcQ+T/5aOYTau4mxH/hkfzBJxCfemnfp4ws6Sw
 NmzDW0yamyZ1+3ESFd6Fg4C6jX97OpcY9Y71vDBO8+4m6tLo9NIayYC68
 3hlvKu/jylHadyUOLVoWXLj+ZD0fUs43LKmm3+GsgQyv4d2XUMcyBgfU8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="325123017"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="325123017"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 15:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="721194819"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2022 15:46:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 15:46:41 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 15:46:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 15:46:40 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 15:46:40 -0700
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=DY7f9jkiOp2vhapHhoSk+N8u8EyOW54nb0yf/hlNezNvPcpxsabVEx8faFDB/O/ZaUb+DipAEtoi2Kne7Gh1N9NTe90sMHg0Gzn/gKheBPEyorHTPxaggUxriPtGgGw3apMjlADsxa0cNMkTfWr9SdfSpi7xE4oTdj1fadcYXEIbUQMGHBux87s5+TGpsULTymaapMOkWEBW3NOcWtLxzu/a7xtd+xI+m5gCNDVs6z6YB2Goj+yLGHMFsBIJuHGYTY1L7qmO3vKoPC/5Y8sCXxnW1qnbRdmlyDH170Sfttfzm4RwC6gRIw0/JCxQ3ne1i9FcF4dKqC3opGwkODUCrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FbequxvUAZpzT6tmI7raxTxBpVy9HS5eOiTkdj6MAac=;
 b=AliSdpQNxIToZcl9NsF62CRKcEIpUdfw6Z8dkEwOr6RESQSi0z4HIAwjIW1bU8i1pcREiHa/rXmxZT4J+/mtyNiM/nBJ90IKJ5N/GHW4OGFdWfLaEeKNWZX6XByMfFd25DrKnMxle9vkvDVLS82ioAEDI8Z+5lRHr6t++reD5ko6NvAsRXXqs3649T8V23DpicQJU8RutK4pcvs0Kok20TLG1+F4Tx7dhaza5OBd/spnKgfthi/n4NCQindsOpaKw1okzFXOqUTtLbH8TXF22JkDSMySuD0eh5w5P5YuaWlGAS4L9k32D0xjcJYw3thbz4EMLs6PhKYp6LBIoioW9w==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=none; dmarc=none
 action=none header.from=intel.com; dkim=error (no key for signature);
 arc=fail (41)
Authentication-Results: dkim=error (no key for signature)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB7001.namprd11.prod.outlook.com (2603:10b6:510:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 22:46:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 22:46:38 +0000
Resent-From: Lucas De Marchi <lucas.demarchi@intel.com>
Resent-Date: Thu, 15 Sep 2022 15:46:36 -0700
Resent-Message-ID: <20220915224636.hvstyxcheg7ipy2f@ldmartin-desk2.lan>
Resent-To: <intel-gfx@lists.freedesktop.org>
Delivered-To: lucas.de.marchi@gmail.com
X-Google-Smtp-Source: AMsMyM6aP8RN3Ja4QQSsfrJ5ZgD/LGCzJKDvLWdrBmLU8vDJSfJdXGZgYClICeEkJxV5V/EZqRFN
X-Received: by 2002:a05:6a00:1d9b:b0:541:1894:d5db with SMTP id
 z27-20020a056a001d9b00b005411894d5dbmr1931521pfw.78.1663279719106; 
 Thu, 15 Sep 2022 15:08:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663279719; cv=none;
 d=google.com; s=arc-20160816;
 b=DWPezIxk41u96gFs7ksFd79m7nJn5pfR7xHCIdoIdmAzZhHjLQpV+k/MEha6gQWkhS
 kR4wBNPK3fFZ2EE6nM3348didIZTrEG7Th5VNo6K1TlXhCiywA/VB03ttliyvpIfbd97
 Gg4jZtNdrkW+EhEpt+jjnW9iCkf/RF+2oVkMOamd5i/CppDvbPBUoMP/cMTAksQkTFv0
 aloaoPjv7ei1c3GvItbW7bZh4UJziWmwwFp9v6Ur8qa9CJHoQ4TMkQBCwFDUIJ65G40R
 PMcZlpNPF0e9/upDUJ9FI7OQTGbKZ0bSLn9q5IJOVWOYBYZD0zJP8hKhgIbt9XWNgxon
 wT6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=sender:errors-to:cc:list-subscribe:list-help:list-post:list-archive
 :list-unsubscribe:list-id:precedence:content-transfer-encoding
 :mime-version:references:in-reply-to:message-id:date:subject:to:from
 :dkim-signature:delivered-to;
 bh=FbequxvUAZpzT6tmI7raxTxBpVy9HS5eOiTkdj6MAac=;
 b=JKYt9JiaL0lN0Ph/kOAddB5C16RBy0xp+W7kbi7xEuXxdc/6Mn+CuJxMnFOHN4UJX4
 YdzkSiL+M3GCor1JYEOJJMYjQeRygaEiIt9M2LtsBQgerH4bAaKsofcm528BnxT0JwQ/
 7Vl+j2WhYqKxo1CsWYO2R+QwWNer0Iz13XX4S8SqlWfBD6FqGddqtg5uDHCt5LaAN/zw
 VbfwIRyYvkNqYWILytRTLA0jj5TkVYVNw+LP+mUtvBnDCcuEJbLfU1eYCOFEyCTG2M7U
 k2LE/TAI9jNtYtv7bpGUmGgYHBPYUBbvCwRDai0xLPmNPiDIeY1cbsIvQRZ/p86fXYQY
 0k+Q==
ARC-Authentication-Results: i=1; mx.google.com;
 dkim=fail header.i=@intel.com header.s=Intel header.b=nyle1ywa;
 spf=pass (google.com: best guess record for domain of
 dri-devel-bounces@lists.freedesktop.org designates 131.252.210.177 as
 permitted sender) smtp.mailfrom=dri-devel-bounces@lists.freedesktop.org; 
 dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Authentication-Results: mx.google.com;
 dkim=fail header.i=@intel.com header.s=Intel header.b=nyle1ywa;
 spf=pass (google.com: best guess record for domain of
 dri-devel-bounces@lists.freedesktop.org designates 131.252.210.177 as
 permitted sender) smtp.mailfrom=dri-devel-bounces@lists.freedesktop.org; 
 dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-Original-To: dri-devel@lists.freedesktop.org
Delivered-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663279709; x=1694815709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sr3bi5Ho2nJ9xxOamW7sASuDnJhDYQxpiFWbAFVoyyM=;
 b=nyle1ywa/vrcuIGlICk3ABiTaJgEsQZw2RxYDXctCKWXsAvMkeX7X1YO
 AAPZu7LNDr3eXAVahpnp4l1zeAd7MFO1aAt3SU2r6vk8ADX7kdZRZdi3Q
 +aWjGKj1exj8yHKbdjk5S8P+RkNX7QHR7nfSIABlrb2SmqLyYzFOzftCl
 HilfXJV/3V0MSb9+HMB/pC1+w3MO73GLt+4yOBi4hkS8y01pVaMh8bxBK
 O7G/9sLUaFWERrVpycymUy7mW04jz+BtkUf5sdZYOgaj+dKjMYPsT3XC4
 zucFMqCEN9pLxeXe42vc4WiBcHj2sxZt0WESqeCJejFx01cbrbHUqRmQL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="281880472"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="281880472"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="650650698"
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: gfx-internal-devel@eclists.intel.com
Date: Thu, 15 Sep 2022 15:07:45 -0700
Message-Id: <20220915220745.411958-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220915-stolen-v1-3-117c5f295bb2@intel.com>
References: <20220915-stolen-v1-3-117c5f295bb2@intel.com>
Content-Transfer-Encoding: 8bit
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
X-TUID: GjlyAktLfJ/r
Content-Type: text/plain
X-ClientProxiedBy: BYAPR01CA0050.prod.exchangelabs.com (2603:10b6:a03:94::27)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB7001:EE_
X-MS-Office365-Filtering-Correlation-Id: 73425cae-e90a-47c6-1806-08da976c2687
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jQMlvNTK5GFvwr98XmyO5UiJD8I7mYHePwCpWjc3ASChtgg7CBPtoF5HvJC+PWMSO3XiRUtE018v0Be9Xelw7qAGhIwQkY2M6xxQODpxfUa1ISU8hpr4ezqYDkQYf2cYKDvOyDs8B6kF8sbisK72SqNATYCTI/8ryDNY+nXlBlLM+DlNV0T7c8yv0VTP0tGnBA7sWNh7NhkYBB0EaMt9olR5c4lSVwiOarlr1amrgs5fMn8h+sH7adcQ8VgCseiss+2nxPO38zltzGp4VMYtGNVz6slFjzREt/1VT+s0fybzRbaOGfkR8ozb0YivPolAqQEVm+u1uCzS0TQ26QfDBo8BLNLhtY/PrVaLoiZRuU6hEfsjH1VtcUrY76tJ5F4HE1FdDNEMdp88rsYf8WickJFsw7nJBPmx8t9GqhdVOZJ/BkrBsxlK/8yvi1CfShx5O/AxmPnTbJ25KaUd4WySm2tZdUxQ/iFfLOhKw8cATJaB8HsaBfJqlY824SFJYDtc8AaeMH7l9zHJsZ0EitsVrRN6app0pJiFiMPAfg5POFdXJI2MR++/8XqeKgmqL+5oYAwbxofJg/zAupaylFgewLNjc5eK0M8aZCJ1WKKpT04Kj5I9LGFQmO5km2/monCDZEmHC0QiesKHJFpn0Zgt8iAI9cOFFBC38poj3t9EGXI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(346002)(366004)(396003)(451199015)(16670700002)(82960400001)(8936002)(6512007)(38100700002)(83380400001)(34206002)(26005)(86362001)(1076003)(478600001)(66946007)(6506007)(4326008)(66476007)(186003)(66556008)(6486002)(36756003)(19810500001)(2616005)(6666004)(5660300002)(8676002)(2906002)(316002)(9036002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x95Kf+kg/GrBXzpzCbgwrbAb+p33B94/pCMlGbBvrASxSFVCs2xwF9eZZJBu?=
 =?us-ascii?Q?zHRKuC8xwAEg3oC51kIc+n9MNyIMlcyTxtDDU4bQultw0A8yjhO6P82HnxXH?=
 =?us-ascii?Q?IWHd84U22+Re8ZqjYJpVq+meMOPMdfWS58gvNMVv94sm55QBY7GIe4SKkR+h?=
 =?us-ascii?Q?KAoe60xX1jBNB0U3hqyNtF8jZjuH3tJ3JSx63iMo8WdEugmxPMF+W+eYcajL?=
 =?us-ascii?Q?GahqylbvnHw/tYNlNbplY+aUIzRSSz6wsyjQCeqFZyZ3b+SdrxAD474lIyhE?=
 =?us-ascii?Q?OGfL2mFbbxdfazSz3Jnsnt7pUZ5sc+K1x+Cd6MsKhp24qSLNz2eENjDG6OlZ?=
 =?us-ascii?Q?2XPY9jLNA0U5nLnHaC00WSBW6gMJSfGp71P1Tn/dZ6Qe9Oh9vd3gRnFlKq2H?=
 =?us-ascii?Q?DMABcDak5AHA+KS/6qg6xAFkRZr0sEa7QX9by2TZam24Uw/bPaDn8t5cQtwO?=
 =?us-ascii?Q?C8PQSFP+HD/rEirB8DTghTM8v8UYbBsLZncDn7EHErbvob47+rDkpL7+2ft2?=
 =?us-ascii?Q?anbXXdvQ+9IPj27ItWIzObdVa71+KVGRO+Sg1f5+1/7hfxSfAJM3tmrDqyxI?=
 =?us-ascii?Q?VUJ3a94wcGhNF+9q35W+aV/Q3pYKjs2ccWF7jf+MRdqvtUmjM05WzsOIPLnN?=
 =?us-ascii?Q?TcKb5EIE3LUiUsHVZyZ6Dl5wTwGc0dy1NPsSxyoyeVu28wkBM2/aV4++ghid?=
 =?us-ascii?Q?uQat3q2r+MVxJ4EbXKuUaWhhifymS+4CQrbATRBgT4iSgzCA8NdznAUeL8PA?=
 =?us-ascii?Q?ZCwnlBo4ZOOl6SD1dtvjEAfnYfsItWWubC128V8CZBSafFOa0e89X0165vvn?=
 =?us-ascii?Q?2EeHiRAziuwe1QXt3LB8JRRxcd9kXDaWVmgUIV4XSsulxjyz5Pw2lBBauYDt?=
 =?us-ascii?Q?X8i5YfJ+gjVFhkB0zpbe3Ymmed+MCW7Qnq3+axCk/M0NiadE7V37YAsUNtvU?=
 =?us-ascii?Q?N9RscpLawkfMoeHLGDSmTDNpittfT2XUVZifhzH2cs1VvI7BEtE2kP8dY4TA?=
 =?us-ascii?Q?lXmh5QBB3FDjfLPgMoBDe8eMEpGDpEticAPcOd2wnWicm6PHEiwvwpB93RTh?=
 =?us-ascii?Q?xHlhhhEnb4UBjIgTJXXDt/zQIma8uB7YaVc0oweUcGm7fyYoYTqAg9TNhUPI?=
 =?us-ascii?Q?MYAFq6VV0JTCRKz6+Jskk6BHJVo1q+bwR29TRJn4LrjJFA/dpYzU8mBBWrNR?=
 =?us-ascii?Q?d/mhlaPImBm2aTcbwN+9wToQrdaq8hIo+70RjhjsLqwEsowjnPKsHqnrY8C8?=
 =?us-ascii?Q?pTBXOU7ceM/kdgk2uvVhnnQ3AroqhquFAAvu89JJ3W6suSgvq3IpLxlogKjW?=
 =?us-ascii?Q?e70YR4OgqZivuOfZY3rh3BrUAYm8H0APyZvgZNaXqqhBsJyT8Etgy91D+ay5?=
 =?us-ascii?Q?zNjlJUjbOwSN+3bi1wsYs305JUyBW+YxIeYAAz6J9ECyVrZcT5iTdXeL2vSz?=
 =?us-ascii?Q?6lnSoWOJEfTAzj8vuDFzufOZnwcEFerarfvSywt6FLAlnzdXjMAHc9+RjUiP?=
 =?us-ascii?Q?lZahlUP42cG6nSef+0uP2mmBTpVc4tvfKjgDAfMMkcngQqsUsDoTg+5bApW1?=
 =?us-ascii?Q?0joihb8CwzcGN5VbY7apF5vxsFZJscTZjaN3ZHJgDMhJ19MDZ2NQYGHLDQIp?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73425cae-e90a-47c6-1806-08da976c2687
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 22:46:38.6558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2mpm3h14yZQluIQYB61BJvrUe36QeJiff+ypmK8TIbkLpuz+kyFzj7kU1qVAlAlgbj89K5kK0wlXc/Pm+UH4c8Fapilcx7GSI4cAvZciZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7001
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v1.1] drm/i915: Split i915_gem_init_stolen()
X-BeenThere: intel-gfx@lists.freedesktop.org
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add some helpers: adjust_stolen(), request_smem_stolen_() and
init_reserved_stolen() that are now called by i915_gem_init_stolen() to
initialize each part of the Data Stolen Memory region. Main goal is to
split the reserved part, also known as WOPCM, as its calculation changes
often per platform.

No change in behavior.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 143 ++++++++++++---------
 1 file changed, 85 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index c34065fe2ecc..6279eed3cdf3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -77,22 +77,26 @@ void i915_gem_stolen_remove_node(struct drm_i915_private *i915,
 	mutex_unlock(&i915->mm.stolen_lock);
 }
 
-static int i915_adjust_stolen(struct drm_i915_private *i915,
-			      struct resource *dsm)
+static bool valid_stolen_size(struct resource *dsm)
+{
+	return dsm->start != 0 && dsm->end > dsm->start;
+}
+
+static int adjust_stolen(struct drm_i915_private *i915,
+			 struct resource *dsm)
 {
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
-	struct resource *r;
 
-	if (dsm->start == 0 || dsm->end <= dsm->start)
+	if (!valid_stolen_size(dsm))
 		return -EINVAL;
 
 	/*
+	 * Make sure we don't clobber the GTT if it's within stolen memory
+	 *
 	 * TODO: We have yet too encounter the case where the GTT wasn't at the
 	 * end of stolen. With that assumption we could simplify this.
 	 */
-
-	/* Make sure we don't clobber the GTT if it's within stolen memory */
 	if (GRAPHICS_VER(i915) <= 4 &&
 	    !IS_G33(i915) && !IS_PINEVIEW(i915) && !IS_G4X(i915)) {
 		struct resource stolen[2] = {*dsm, *dsm};
@@ -131,10 +135,20 @@ static int i915_adjust_stolen(struct drm_i915_private *i915,
 		}
 	}
 
+	if (!valid_stolen_size(dsm))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int request_smem_stolen(struct drm_i915_private *i915,
+			       struct resource *dsm)
+{
+	struct resource *r;
+
 	/*
-	 * With stolen lmem, we don't need to check if the address range
-	 * overlaps with the non-stolen system memory range, since lmem is local
-	 * to the gpu.
+	 * With stolen lmem, we don't need to request if the address range
+	 * since lmem is local to the gpu.
 	 */
 	if (HAS_LMEM(i915))
 		return 0;
@@ -392,39 +406,22 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
 	}
 }
 
-static int i915_gem_init_stolen(struct intel_memory_region *mem)
+/*
+ * Initialize i915->dsm_reserved to contain the reserved space within the Data
+ * Stolen Memory. This is a range on the top of DSM that is reserved, not to
+ * be used by driver, so must be excluded from the region passed to the
+ * allocator later. In the spec this is also called as WOPCM.
+ *
+ * Our expectation is that the reserved space is at the top of the stolen
+ * region, as it has been the case for every platform, and *never* at the
+ * bottom, so the calculation here can be simplified.
+ */
+static int init_reserved_stolen(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = mem->i915;
 	struct intel_uncore *uncore = &i915->uncore;
 	resource_size_t reserved_base, stolen_top;
-	resource_size_t reserved_total, reserved_size;
-
-	mutex_init(&i915->mm.stolen_lock);
-
-	if (intel_vgpu_active(i915)) {
-		drm_notice(&i915->drm,
-			   "%s, disabling use of stolen memory\n",
-			   "iGVT-g active");
-		return 0;
-	}
-
-	if (i915_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
-		drm_notice(&i915->drm,
-			   "%s, disabling use of stolen memory\n",
-			   "DMAR active");
-		return 0;
-	}
-
-	if (resource_size(&mem->region) == 0)
-		return 0;
-
-	if (i915_adjust_stolen(i915, &mem->region))
-		return 0;
-
-	GEM_BUG_ON(i915->dsm.start == 0);
-	GEM_BUG_ON(i915->dsm.end <= i915->dsm.start);
-
-	i915->dsm = mem->region;
+	resource_size_t reserved_size;
+	int ret = 0;
 
 	stolen_top = i915->dsm.end + 1;
 	reserved_base = stolen_top;
@@ -455,17 +452,16 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 					&reserved_base, &reserved_size);
 	}
 
-	/*
-	 * Our expectation is that the reserved space is at the top of the
-	 * stolen region and *never* at the bottom. If we see !reserved_base,
-	 * it likely means we failed to read the registers correctly.
-	 */
+	/* No reserved stolen */
+	if (reserved_base == stolen_top)
+		goto bail_out;
+
 	if (!reserved_base) {
 		drm_err(&i915->drm,
 			"inconsistent reservation %pa + %pa; ignoring\n",
 			&reserved_base, &reserved_size);
-		reserved_base = stolen_top;
-		reserved_size = 0;
+		ret = -EINVAL;
+		goto bail_out;
 	}
 
 	i915->dsm_reserved =
@@ -475,19 +471,55 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 		drm_err(&i915->drm,
 			"Stolen reserved area %pR outside stolen memory %pR\n",
 			&i915->dsm_reserved, &i915->dsm);
+		ret = -EINVAL;
+		goto bail_out;
+	}
+
+	return 0;
+
+bail_out:
+	i915->dsm_reserved =
+		(struct resource)DEFINE_RES_MEM(reserved_base, 0);
+
+	return ret;
+}
+
+static int i915_gem_init_stolen(struct intel_memory_region *mem)
+{
+	struct drm_i915_private *i915 = mem->i915;
+
+	mutex_init(&i915->mm.stolen_lock);
+
+	if (intel_vgpu_active(i915)) {
+		drm_notice(&i915->drm,
+			   "%s, disabling use of stolen memory\n",
+			   "iGVT-g active");
+		return 0;
+	}
+
+	if (i915_vtd_active(i915) && GRAPHICS_VER(i915) < 8) {
+		drm_notice(&i915->drm,
+			   "%s, disabling use of stolen memory\n",
+			   "DMAR active");
 		return 0;
 	}
 
+	if (adjust_stolen(i915, &mem->region))
+		return 0;
+
+	if (request_smem_stolen(i915, &mem->region))
+		return 0;
+
+	i915->dsm = mem->region;
+
+	if (init_reserved_stolen(i915))
+		return 0;
+
 	/* Exclude the reserved region from driver use */
-	mem->region.end = reserved_base - 1;
+	mem->region.end = i915->dsm_reserved.start - 1;
 	mem->io_size = min(mem->io_size, resource_size(&mem->region));
 
-	/* It is possible for the reserved area to end before the end of stolen
-	 * memory, so just consider the start. */
-	reserved_total = stolen_top - reserved_base;
-
-	i915->stolen_usable_size =
-		resource_size(&i915->dsm) - reserved_total;
+	i915->stolen_usable_size = resource_size(&mem->region);
 
 	drm_dbg(&i915->drm,
 		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
@@ -759,11 +791,6 @@ static int init_stolen_lmem(struct intel_memory_region *mem)
 	if (GEM_WARN_ON(resource_size(&mem->region) == 0))
 		return -ENODEV;
 
-	/*
-	 * TODO: For stolen lmem we mostly just care about populating the dsm
-	 * related bits and setting up the drm_mm allocator for the range.
-	 * Perhaps split up i915_gem_init_stolen() for this.
-	 */
 	err = i915_gem_init_stolen(mem);
 	if (err)
 		return err;
-- 
2.37.3


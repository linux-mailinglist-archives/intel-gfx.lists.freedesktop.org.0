Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF774AF776D
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 16:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA71510E858;
	Thu,  3 Jul 2025 14:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEAz7j+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3140110E857;
 Thu,  3 Jul 2025 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751552939; x=1783088939;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=22S9UwbaqxF0ky3MLsPncd+9XKnhGWi5HZl5u0InXMI=;
 b=HEAz7j+vEqIVX++IIvrBEqmPH5uN1Kji/ady6Mr2FOzg3viIY60FS5FJ
 2FXHeL0pq4tDS4P/qZRT2gNXJmMykc79DUFkEejWt8qF+Ni88jzpIJ3W0
 F3isNZCTbfd3IE6y50SiKj1l3mZ6/a/e+GtIufhwWQ0q4uXNHZ5ngStCw
 x0NppdY9X14jlLvM2IbvO7twZ1/Y04sm/ctFur1Ig56Gui+y3NkElz1uo
 TMeOUR9qNlhbKq08rxsrhWD1MANyTLGDHq9A3PAcIfrBKiLlzUniUinLR
 Qbl9BcVoqQizLh0cMMA/0AOJAE8ZyTQSSRTPfodv6t+2yYdgOPRZpgTDl g==;
X-CSE-ConnectionGUID: GVx8I9DESUutd1PEHgJWVg==
X-CSE-MsgGUID: gYxbN1JlRnWQCixuMCJX/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64480448"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="64480448"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 07:28:58 -0700
X-CSE-ConnectionGUID: eRfLbrYjSaClg/HIBv7NyQ==
X-CSE-MsgGUID: 6yK6KGpOQeOdhWdVP+H7SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="158946656"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 07:28:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 07:28:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 07:28:56 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.89)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 07:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JbkI5kQYoJHmF2M8kCJjOkxHhBJy7yJvuVetBEtBYHnegRJ0F42NYY2tUXEwTl5mSXfoRBBAiZG01ih6xDIpLIM792rwgL48tb/M8Ho7C3rtIau6Xg9yehoHIRkSe9l5qNJKBDRh7P2isbUK3dho+Um99uou4PJFsNDwBbjtQ+7bhWufb27BCpSs3sJ5QlGGu078cLbDr/oEY9AC87ejczvk1sv8HLxTpyWp7hu6ntM0teAn3JHi5ruYsuSyqdqxTwY+JdvA0EUEkR/dsXofai952/WMOMnaadoukmUmEgmIfZmIA4bXIuPTUm+L607rDy3DCzILxRmiLLl87mglrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWv9s38mis3HDFg9HEUX0dAljvX9HZwVCyKXlYDYY1s=;
 b=c5dn1AfP/63BF/uYxwoYBlg/GvT7Az+i++bIYcjABO+daWrwrP3zgrH3c7eTmi7p2BURdBnHcUJWcVxX3ONT3G0divLJ4uhHLhxsWCdOcFs3DOymyM5mYPDWgYusmFQ5HwQh0+xCaLS6P7KB0xJW/aCYO+WrtcmhrdY7F/oJTEFCdyjxVMzij1D8PwEcPNNOhBGiXFDGpQzlFq4zCPT5Ch/j7chevgzy2/HFi4Xc87mQmMnfEkXRVp4yFw2Bm+4Ht938nXTovjAPW3OfdZrECqPMwYtIQq//sxvpOETX8RNOevdY+4Drg7guDpXMcxr2nFcMc2KA51vmfxxyymwRSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Thu, 3 Jul
 2025 14:28:22 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 3 Jul 2025
 14:28:22 +0000
Date: Thu, 3 Jul 2025 09:28:18 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <linux-kernel@vger.kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 Imre Deak <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, 
 "Geert Uytterhoeven" <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
Message-ID: <l2dmr55iucsg55e2qtsf46fn3huy5znd4tctzqcr7vq4durr3c@4xgp5ch3vrfl>
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:334::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c717803-eded-4e1b-a25a-08ddba3ddd26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?mLOalWSjNudbtw25cBzDxR3Wtqu0YOBrmyyvWMdOrneKjArqeCB643aqwM?=
 =?iso-8859-1?Q?Btcm/I5sHS6DB01r8jwJZICo+gaV4OSyJEzNQOwu487T/j+Sxg6+nJUXle?=
 =?iso-8859-1?Q?fSeNm1KIdOKRhSietynpYt68X4P88DIpL74jxWt4r2tooD4EUc2cejIcL+?=
 =?iso-8859-1?Q?MJhfz56f1nNH9t/8MEAa04ny+Miow8d8T0DVAh8XFT2PzxJbwd02AqJuXg?=
 =?iso-8859-1?Q?VU/+C4NwFLNtEFNfhL7IUd41QRRCLMtgUE5J/+mSa7AdPAqrRdVazP8jZn?=
 =?iso-8859-1?Q?xeB5k6DNVOhbNItPIE8+8/QMz/efw5gZNahEOV/ZDYVCEsyiaMpTUTP3as?=
 =?iso-8859-1?Q?PtMKOm+v9TEYCfDMkSmTvdHD67qqlEXx4+ZtjziDrwFuew7SL/WznaTSaL?=
 =?iso-8859-1?Q?Cj2jCwieGmGd9lEWcrlINy/ehZ19TWxMbE1vBYFu6IS1VFccGjtBbajXU4?=
 =?iso-8859-1?Q?LE6lmieSjsDxecKGuQnSjFpcmLvIqskLuxiLdlWlV+/6anFckOXMMoYngp?=
 =?iso-8859-1?Q?znC3+SqtNkpnxuQgh1xBUn9ul1M4VaifxVLwib49ezzaJF1nbyQAEGf6yU?=
 =?iso-8859-1?Q?6W/l/X9E+O5piap07hKj3wn/pS9qmdOCLklD5UO5Ht+a7bjHn9HIGotw6l?=
 =?iso-8859-1?Q?CcAzCGGiCGrGCSyDKKrD5jAoDHlzEVigCM4q4nDNx9YL2nygnAEsWTIM6x?=
 =?iso-8859-1?Q?eN2RdVrD1HszUWMEiv1ZFoNGp+UoClM7zjWYkQ7U/nIsW25L02B/d7AkDs?=
 =?iso-8859-1?Q?L9yW7tyB8O+ldhlyNWi0Msx4mD+8H3omIO/PKg1H6C4ZF19AnT1kuPT+IA?=
 =?iso-8859-1?Q?nNGr+NX+t169ULp6LcnZ0pYPS8GWcQfRrdW62JcwXKXQCN5wtcqb68PIcp?=
 =?iso-8859-1?Q?tpCzArixdKcRuvakGQy5xhMVNq6Lp9GFYUABP5NYtjYQv1v8ItT14je+PX?=
 =?iso-8859-1?Q?c9VkcI2Ig8YVSOpGeBVAy9wWkpjKBqFutB9p4Zwe8doi4JgjqjHPxlp7Q5?=
 =?iso-8859-1?Q?MGfZCGAcrClgIsDRAd9FnHIkPQgdt7N8ufGz4goofab1tDAw6OTnVw7byp?=
 =?iso-8859-1?Q?akY05GxKCNa+Bg8vEgFjIrwXHOfXIbA9f6QOtQ1QMhUK8+03MO8UtlLf/o?=
 =?iso-8859-1?Q?GZfWeKK9NFxSMka/qsI6V9ayCNU7wd1VN/obMJ/A3ZlCqkkYgA94Jk1hbT?=
 =?iso-8859-1?Q?Ffo49sEkp3U79duprpDW6wjtims+aaJctIZRnGJ1SSCjVOxaqkh8LZbs08?=
 =?iso-8859-1?Q?LIImsh+Qla7/VFCjcX9c45ZhRz50++IEqCMk8bwYXjje34tLPukQAdnzeX?=
 =?iso-8859-1?Q?0Z7E5ByHXjVUC9f6LlYRgxDk0j+LX9xfVr75hsJyZDZFzeBwDeLRI2yCi1?=
 =?iso-8859-1?Q?DT4pbKvyzMuutrIMzFZJl1Vs/P3aEO4nzAUSclBm2H3EEZARGDKfhS3DJQ?=
 =?iso-8859-1?Q?IqrRvhlAvp8RfwwN6wCX4NmY6dakc/Av4LPya1FwmKLyxb/U+0T8P0yn2B?=
 =?iso-8859-1?Q?w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?jMVss66VLRZOD2r18EcDKnZcwqOQ3zcsVdxiRcl9IuzxxWTE7q9Ed1nVv0?=
 =?iso-8859-1?Q?lVUd/SHeQEWqCC4aO3AWztu9N8EouT6p9lJijkzS6xlQciomQfq7ycmlrx?=
 =?iso-8859-1?Q?lDX5z6l2jRfdEt0TQj3jF+VdV/dXRnMUVaOGrmtclfbU2ZxmPKmESJ6NoF?=
 =?iso-8859-1?Q?lKn5BxtxmCXGyMyeH7GY1KxyiD8TzTixKEEtvxpRgQGEsbXyRZ6I0od/TE?=
 =?iso-8859-1?Q?JnVxBSuy8wFg20bVgl48CtZ+KRFAysd6x5FMCuD+0KgFRkxingxHDmhWO2?=
 =?iso-8859-1?Q?7dyrJ+G4LM0my1eaavpIBtu4J/ePnJh25wpVrjfW8n/JLhEfx1qxoN6yya?=
 =?iso-8859-1?Q?mqSvT4sEo1Lw/NMjPi3sLlqadZCS17Jmk4v0cvCMgc878wwwdDUa5wr2Gb?=
 =?iso-8859-1?Q?Ugy693WzguDOMvnYnJfEmplAc9TLV9YCWcsX5Xa+GHQhKBJ4cwOpHzKLY8?=
 =?iso-8859-1?Q?7tFy7EgT5OsV0SdPJoDLJq4JHkzmS7sOSsy+YyXSrXbSaStC3JL7C9D1jI?=
 =?iso-8859-1?Q?55UWzbYi8hUOdZ6Vba9f2HQVdS0DP4dL8d4senOWguZJREhttE3w1CGM7F?=
 =?iso-8859-1?Q?sb5YRN7jQU0KgAyDS8SkmSTcp9CtdQeKUx6BGC5PLJTPdechn6OayaY/7Y?=
 =?iso-8859-1?Q?gns/Nw/Ki+DTBvCO/yJxgBmh5lGah3aq9vJKAh1K9q0M3Yuvl5jYTFO9eE?=
 =?iso-8859-1?Q?cXYG1BHYohQP5brfu/81DOvzEXbBnZU9DHbq5WxP6nSCFoSq2tb5KBuZt/?=
 =?iso-8859-1?Q?RbHw6VzBGWslkyBGOVEsxfEGK2/g6ame6hdcjB6MCtPBQ5jjEy9DtdRzEO?=
 =?iso-8859-1?Q?0+lUpmhDkL8bFOYlqUoEuXQlENXXGDOWmFeDxBaPT18X4cZjDOj/UpJdi1?=
 =?iso-8859-1?Q?GJCnMDdSDq5Ys66nU108c1DJMi4jZ3GZqY3IbZ+E289yMYa/C5ZiGVzskp?=
 =?iso-8859-1?Q?h3AExrQL9pHpZVVofqz+gtSeGNoUu5hHrtyHaUsW2PW6bHhYhVbY3bzVx1?=
 =?iso-8859-1?Q?44Gb3HxTQAq0OGbBe9KXWkwXTrkdbplPDgquiRZkKMxJKTpLB82hYOsDLi?=
 =?iso-8859-1?Q?nmynYTRHMhAtHv2mK2Efu0wp/RFuiFmlMvQ+S53o36yeGA7K+VoH8M9cG5?=
 =?iso-8859-1?Q?p6Y8FYYOmQyhaiZ4BTHm+UUgc4oElOcryv0/sYKiSqhW+lNJyka1fFzRHY?=
 =?iso-8859-1?Q?J0hzOZRb7lNGOEhop/hy4Fyses6zRh+GNegLzL5oPkiWycAafl/D2RxxC8?=
 =?iso-8859-1?Q?71n+gSWIzQmmfQP8D14Nu8p/mmawnjXPo2KShvyXn0Hb1juECC/P/0hY27?=
 =?iso-8859-1?Q?8yHiOKwhVsBC0pOBG9gusMXqLmMd/nq0veXH1H+2t6wPn++OBZ+Pd6bE7x?=
 =?iso-8859-1?Q?1ztMjpLx9cOmqUv+gq1NBv41H1dPhkpqq/mEpQHi3d8q2sNcv7TmYORJcc?=
 =?iso-8859-1?Q?+izHR+w+joaYpT+4M1wie75IfTxy92gbqtNwcSYncknH4S0+Q+EqN5f7/s?=
 =?iso-8859-1?Q?Xy+hyI1FgqkBkDNq7KVjfgdbFV2KoX5xlElpvfWqnjwycPJX1vN9QYmWbs?=
 =?iso-8859-1?Q?6gh7biJO7wE3jCA/ONpNIcvFy6/EtcjPR8KBsQ9ppfMLNOjHFKgFTjuhxZ?=
 =?iso-8859-1?Q?B1zE38Pd4q3ipwRyyEDvCvlbhDI5v6hn+kNrRM0djLnQAb490yCcY16w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c717803-eded-4e1b-a25a-08ddba3ddd26
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 14:28:22.3682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzYB7ojiUTk+JvM2Z7iBaFIAoUesa/mkB0bip2iIo9A6/VW9iTJ266LjpP09j2g1cj3pyortNBFP477kGSEdsJmNZpoVbG5VsbSaixAPPII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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

On Thu, Jul 03, 2025 at 01:34:36AM +0300, Ville Syrjälä wrote:
>-#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
>-				sleep_before_read, args...) \
>+#define poll_timeout_us(op, cond, sleep_us, timeout_us, sleep_before_op) \

nit: could use use usec/msec etc that pairs nicely with USEC_PER_SEC
and friends, also used by tools like perf and are a little bit more
greppable than ms/us?

Lucas De Marchi

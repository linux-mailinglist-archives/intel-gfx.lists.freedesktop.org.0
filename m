Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMylFJf0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9594F7C98
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A838310F507;
	Fri,  8 May 2026 14:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfSV3tT6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81FDC10F505;
 Fri,  8 May 2026 14:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250900; x=1809786900;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ODUg3y5GrEuYuCf2ZBxVnpHeyYxPQAjDOhOkeEaCBRQ=;
 b=nfSV3tT6geWrJzjuoklRRgLE5M62FEbd7AeWLmQhYRavw7nEKTFV79PD
 Xum3CfPLu71IbfQCD0NSjDLsAaAZT4qSCawzDG6+vkohfnSh0tJ5WiXDq
 pjY/tZvazH3cKn8U6jiowDTMGhGtn08Y98S3vorbONi+ayCtuGq0io7qv
 jt5lBwIpe3DR+Ms8Y3sUlJLZl0sY8LpzfO6qWq1d03Edfjc1BksIetJ2b
 E0Tyb/ktg/9YeHU8ZCLt4lGH4UpY7G99gRUmfBG721PW0VaWkAiXJkqYk
 vk4IOitIwgPnl4kQrzDtBPKoDANV0iZQhkxwa5CvQTM68EUs4nCE383WX g==;
X-CSE-ConnectionGUID: ZOYf8S3MTCmU74vzXUTmaw==
X-CSE-MsgGUID: Gj/rhytxTuabf/4r5PP/1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="79208342"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79208342"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:59 -0700
X-CSE-ConnectionGUID: /qT6k1VSRH2FlVtvPHGVLw==
X-CSE-MsgGUID: LDab+01oRBiiAxEjHjGVVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236718541"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:34:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:34:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 07:34:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 07:34:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NijpP+extzoC2Ki8VMrLFDG4cTNG5BcEK/Htqz+duayXn/vkvqzobF2D6zHaxSctrUq88OWeZc5SG59ca+WLZTP8lPiP+9X/1GVLUQZ5gGAJWZ6mJTsGiVWm42CWGyt54kDr6NEo1qpprRQcIKjM8IGHI/MkT5RPd80kHgkTcndIQhIE49pdvnz7ys4+npjhDUqz+1VLm4HVq3SbXlCNChNK/B/zdlUP/sO/MKaDzyQXGY2H8r/f4LGpIDzsHTmhjHcJhVeuEOGE16BJHk1ZdHb97WCSZd95+XWiBcauIhR5cXrCKKaNoILBqIeuey1ijyEFhuk0BqHM/W7svznxIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUU0gxoiw35ac0FamwU+Q3+W0nMw3hebWoGmNMAmAs4=;
 b=cEVMmy41JzFTMnL5j2CtZxBHP/q9Q+VBJ+eHsnjmM9UMqMJ/22/DTtXMftM1Oopk0pWC/dCsrl4/0RPFhSOi+b7nTJvPptEw5Rj8boHqxG4/l8KGdwY6/5q4SOU9cYbHKC8n2rGoWK9Z0R0uDbUuJve1G+A/fYRjC5jbfqi3U4m1ZfqKX7/nW3KNks7GzO0CQPi781DjkucaT9lb3yWKvNx2eduZEqzBtmc3zOZykJv1vmJsQdksX7+ia8PNewUE7XlcLZjszVlwaW3WRi9M5V8spAsmiOCMQLho1Dpjh4eYI7rVJJvl41VoAGe954jd6HQOqlYhIV/RP4K1/eoHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 14:34:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 14:34:52 +0000
Date: Fri, 8 May 2026 17:34:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "sashiko-bot@kernel.org" <sashiko-bot@kernel.org>
Subject: Re: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Message-ID: <af30hT2PQOtWlphB@ideak-desk.lan>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <20260507065940.2046690-2-imre.deak@intel.com>
 <f348388379810e126a436259cd9e59237fc8c4cf.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f348388379810e126a436259cd9e59237fc8c4cf.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A336.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::69b) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB5911:EE_
X-MS-Office365-Filtering-Correlation-Id: fd9abf0b-aebe-42f3-0cef-08dead0ef782
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|3023799003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: US5M195wn2UVkiH6Sga3j7uxQS7UGdKpthrTQ97Mht8X3KYdfLnZ4zPpJhEfgO10Ekm6vOp0CwgoXNBJr2pkEW48JnheR53JPVxG/zVb5rhvuKgZ9rtgLxepzkjXyWM2QC681iGbygLlNi5s7xrZVBRRAKvckKpERBOTleYcoPHxIe5x5HRPoNUBckPlxhB8bmhWCakYGpFfuZBULnnnF8otZ2cauHVxUJ108OZqknPvh4Cy3uvoOrCLpx/oI2/u10HkCGw+4fTlSB04hjZHKzAhj2Lgep0dr7QqirKeLq71Yi9Mm4t+FGXklSnSR/w9i77GVX5PnZAEYLrnh4SQhhijqhg7L8XDeZlL69Kv5PghsRzir2y98oKpJI2z9/SJMOINJLJDGNepvAwnmd+GRBGmffo5fM1jPMiT/j4E3IWYnE4LKzqeRdwNf1l2LNxxHQHvkN0wpZ9YKl9HQZ+72oOVPwS9UtXwC9n7H6kBO8SE3AYaw8E2EsHyNwRrEequp44EQFsPL/QITvwF+aR8iTrvQdgA2LZYp89lZM/vAztqwbTasQFWjB8uWh/LSYbqM6mGmwvtIP3AlIV9xzJ5vz6g01w6qYXKcqkFxNDChEvzqXRk402G64dqYfJpSE2l3oRXN9ggZhaP0liviyz0o8Zvb4D025JGAgmTM0EChxmL7LwdL1ioc6q1RdUvBl/2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(3023799003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?UIAD2wgrAm53sIXSzvLdL8DHo9LHGPpEUGuxSxENAUMutEpld4uHIDjvzJ?=
 =?iso-8859-1?Q?shxUQt6QmoxiCs857/skfqkIcv2GRavsb/LncDzqJU0iIsvgDz0xLNwf2X?=
 =?iso-8859-1?Q?K6E8V520Gs1KEpXmXm1OK7mMn0i+gawZlrBh3yKfSf9NaLGyww4frX0rbn?=
 =?iso-8859-1?Q?twILe+Cy/iwlVw1G1nR6K6b8n7o0bNHJgo+ii54MBrx1och5n4l2FtY62L?=
 =?iso-8859-1?Q?+BAIo+Vsn3aMi5DmN3ikH0jEc5W2/iYO1/9lCJIrXpdmw2SIccaRSwOIgq?=
 =?iso-8859-1?Q?GxH4WBJPlh6cHoW6To3g2T6/kEdt54+CHknDi4gfIpTpZhffTzb9w9xv1w?=
 =?iso-8859-1?Q?xlPNUvgSrC5EK7bCM/F/gul+IkOp+iYmLPJRowAH3Dh6Hxdp5cN1U0uOzp?=
 =?iso-8859-1?Q?0RC9AezAI6MT2TXitw9PBQCxVL97LjIdYtvw7dpf+ySIN5+IYmCklNhChO?=
 =?iso-8859-1?Q?Pjgil7eMK9hR/eSnhYruvd/2Lb5hFOzdlXpqQFm4ps9czzKHqykqZp55PN?=
 =?iso-8859-1?Q?wFDieEMOCQ4egoHL4wsUoJD4wLR3ZTvqyHRMf2yhX3MXxGRd1B2INSSyel?=
 =?iso-8859-1?Q?7PCWEE+azBWy9woAPuONbn5yQ0Hps0fHu4QPVuH+tUa+FYy7bE4Ov0yOSA?=
 =?iso-8859-1?Q?HhGwuA3/xuQei7LqKwG7XlABpsmokEhBxSco/pi/e+fv00ilPJ8RY4FTV8?=
 =?iso-8859-1?Q?Gp3YNSqxq7FldlNPbC+/z5Ga+WpxUPkiahdSnGxab0axbjQbKhxyagRb0n?=
 =?iso-8859-1?Q?FhFgWS/53X7M7q9aq+Gc04Axl9oT6S81w8wmmqNSHpFEQ4Gq98b8X3jP8H?=
 =?iso-8859-1?Q?O7fzg51dd4QdopS1WzT613tvUf0qS7GqAHJxe6vUukn0pfEgBTmJwFKLLl?=
 =?iso-8859-1?Q?HVXwWN2xcsyiRM/aZT8+1hEbRsaGBJWlPbfkdaWZhZK4SdbvkzZBPaXa9S?=
 =?iso-8859-1?Q?8dvznhZlX2k1y4NNPbyA/klNaVzh7kUKiNMgl2j+1dQ8Xf2bPHr281F5qj?=
 =?iso-8859-1?Q?A4SQ9RLUaaB/RYdjBGbyq0+TDoHflmaZMGCS7gVjlQU+UtkewiJtHxu7hq?=
 =?iso-8859-1?Q?M/ZwrlF7s5+JapiGsDOrxM9uBJjAh3f2L2DCPu1lDT3BFH+wr+INXHeVqm?=
 =?iso-8859-1?Q?BnxDoX6BNxUAmJN/VTbmeha2M2xmuA6gpHuRrP4sZsCWYEbwKpEzn1/QJ7?=
 =?iso-8859-1?Q?B02OUH22dHKEqzRCCrJx84TwQ8atCdmHwEQOiyQEH3sGVxk921k6AxLk0v?=
 =?iso-8859-1?Q?SBPtkidDP0KDk3wfBPvFNZWWwU7ggwTdF4jC/tGnjc8XTbULS9i+99W8TI?=
 =?iso-8859-1?Q?ETCi91Epj8sVgk9E9FKqKdsuF56KNot3PdD0pCxuYkdYjUW46/EsaclFbF?=
 =?iso-8859-1?Q?MOw8R+RTEkXcqKPzZeTglPK/UzmX7unbAGyWjOEl4F1RuW2GE7l+Fi1Od2?=
 =?iso-8859-1?Q?1WDTCJarpUwuIfZrMACGPadLVCNRv1mtekKOxX8QRkgtZ+JILG+WxpqTbc?=
 =?iso-8859-1?Q?RFsRJlZya/O3hLbez00JpWa3nhfrNY1JJrbQIMrQkZJrfip3eVpUxrXJAN?=
 =?iso-8859-1?Q?4eJQlCNFX3ufLz2CzkcY1UUt6Bcha6PEZbEb5Qoa3Jeq8ZqgAcy2BNmYRl?=
 =?iso-8859-1?Q?5ruyBusvkUm2RE4xG30smD6GUrU33g70Q4TZ31V5n0++eXJ/WeArA9O7GO?=
 =?iso-8859-1?Q?gMd1OxuWIll7bqNCRpCXhIKZNF10Sof20jiAhFTaqN1H2cLkHeYrt6sq36?=
 =?iso-8859-1?Q?8hMreybL6kCqeUHF+8NH391NKgV8G3MmEXU0QQthNEWCmmY5Pt/J8h7/81?=
 =?iso-8859-1?Q?YkmFuUmUXA=3D=3D?=
X-Exchange-RoutingPolicyChecked: cIZBjPuQ6RTIV+fjqk3/sPXYvOlk4zEf3eVMYsugg/2+P2BRMaRg5yqUmCDnFni/AnghxMhF+hmxOs3l+F6iTgDNhToSnyCyxo12qC8+WaHynmb5Ia6mZ5S/OhNpJTovtLUNgAAHefG3FckpyYqb2LLrf2hSsG35t4rkJNZoEzqzmLRPnSH3kOHXptj4QatF+VXegMf7v12TbnPwTN3c4nN7CUiQSFMpmBtF2/E4kGLxb8e2vq1aAQh1/4E0FIp3dUtDUfPpp9awF4fsV2QLKPaoNV5CNdFJ3UvrO+Zf68NPl5SyRzYonPwFwfMRcMeglxnYaJ18nrDFfC3fqdq7Ow==
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9abf0b-aebe-42f3-0cef-08dead0ef782
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 14:34:52.8713 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nj1vP9jJSqoGDtM15j0DBniTZfoicIYfVrK1OcdQmqXXFiND2YyA2baPqVnUJlOAEg699SrbSxyvOiHjYkKRnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5911
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: BC9594F7C98
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:29:33PM +0300, Hogander, Jouni wrote:
> On Thu, 2026-05-07 at 09:59 +0300, Imre Deak wrote:
> > Perform the missing DDI DP connector cleanup steps after HDMI
> > connector
> > initialization failure during DDI encoder/connector initialization.
> > 
> > This fixes the leaked DP MST encoder, AUX state, and connector
> > object.
> > 
> > Reported-by: Sashiko <sashiko-bot@kernel.org>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 14 +++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp.c  | 13 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h  |  3 +++
> >  3 files changed, 29 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index e37cc32ee83ed..cd61ddb7f4696 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4729,6 +4729,15 @@ static int intel_ddi_init_dp_connector(struct
> > intel_digital_port *dig_port)
> >  	return 0;
> >  }
> >  
> > +static void intel_ddi_cleanup_dp_connector(struct intel_digital_port
> > *dig_port)
> > +{
> > +	struct intel_dp *intel_dp = &dig_port->dp;
> > +	struct intel_connector *connector = intel_dp-
> > >attached_connector;
> > +
> > +	intel_dp_cleanup_connector(dig_port, connector);
> > +	kfree(connector);
> > +}
> > +
> >  static int intel_hdmi_reset_link(struct intel_encoder *encoder,
> >  				 struct drm_modeset_acquire_ctx
> > *ctx)
> >  {
> > @@ -5492,11 +5501,14 @@ void intel_ddi_init(struct intel_display
> > *display,
> >  	 */
> >  	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
> >  		if (intel_ddi_init_hdmi_connector(dig_port))
> > -			goto err_dp_connector_init;
> > +			goto err_hdmi_connector_init;
> >  	}
> >  
> >  	return;
> >  
> > +err_hdmi_connector_init:
> > +	if (init_dp)
> > +		intel_ddi_cleanup_dp_connector(dig_port);
> >  err_dp_connector_init:
> >  	if (intel_encoder_is_tc(encoder))
> >  		intel_tc_port_cleanup(dig_port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 86123614b7bae..97c572e5a5710 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7346,6 +7346,19 @@ intel_dp_init_connector(struct
> > intel_digital_port *dig_port,
> >  	return false;
> >  }
> >  
> > +void intel_dp_cleanup_connector(struct intel_digital_port *dig_port,
> > +				struct intel_connector *connector)
> > +{
> > +	struct intel_display *display = to_intel_display(connector);
> > +	struct intel_dp *intel_dp = &dig_port->dp;
> > +
> > +	intel_display_power_flush_work(display);
> 
> Why do you need to have this as this is targeted for clean-up on error
> case during initialization phase. I wouldn't expect power get/put async
> at that point?

intel_edp_init_connector() does AUX accesses required for its
initialization. That in turn takes power references which are put in a
deferred way, putting the reference requiring the encoder object. The
above call ensures that all such power references are dropped and the
currepsonding put operation is not called after the encoder object is
freed.

> 
> BR,
> Jouni Högander
> 
> > +
> > +	intel_dp_mst_encoder_cleanup(dig_port);
> > +	intel_dp_aux_fini(intel_dp);
> > +	drm_connector_cleanup(&connector->base);
> > +}
> > +
> >  void intel_dp_mst_suspend(struct intel_display *display)
> >  {
> >  	struct intel_encoder *encoder;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 2849b9ecdc71a..f41480d247142 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -48,6 +48,9 @@ intel_dp_queue_modeset_retry_for_link(struct
> > intel_atomic_state *state,
> >  				      const struct intel_crtc_state
> > *crtc_state);
> >  bool intel_dp_init_connector(struct intel_digital_port *dig_port,
> >  			     struct intel_connector
> > *intel_connector);
> > +void intel_dp_cleanup_connector(struct intel_digital_port *dig_port,
> > +				struct intel_connector *connector);
> > +
> >  void intel_dp_connector_sync_state(struct intel_connector
> > *connector,
> >  				   const struct intel_crtc_state
> > *crtc_state);
> >  void intel_dp_set_link_params(struct intel_dp *intel_dp,
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819ED1397B4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AFC6E11C;
	Mon, 13 Jan 2020 17:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3008 seconds by postgrey-1.36 at gabe;
 Sat, 11 Jan 2020 01:14:26 UTC
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
 [67.231.153.30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C686E175
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 01:14:26 +0000 (UTC)
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00B0MXSH032449; Fri, 10 Jan 2020 16:23:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=facebook;
 bh=QkyjBnJUBYNSv7FAsVswnLSJc+BoT6CxKb/gqLJ7aC8=;
 b=U99klSL4o+rFse+SmWERCx2fCmgV6GmPYfpi4LXLo+IfhyqpmIA9Brv8uf4SiVplFQGP
 yUw5bzpBw6jsXdiQeA3H0CVW2OifidjWbrXeH4RwLUiHMUf0l0nlcohVtN0wmJDp7ccC
 e4cgqXrU5Qb2uLWpOoQKXvsj7HC6MWXawhY= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2xe9eeguyb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 10 Jan 2020 16:23:31 -0800
Received: from prn-hub06.TheFacebook.com (2620:10d:c081:35::130) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 10 Jan 2020 16:23:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jan 2020 16:23:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m55I61yDIoDdZiE7iQJNtQ/O0LAwOan90eqsJWsZaIWmtH8fz+ycRp/c3x6lXgbyMt9kZlHDc7/O6ALz//i7nMCPL8/TFG6EBYGjBxwz7CQUCUg5pcQ734DO+pJr7itrT5rQWNo6KoDHvF9p0MWgZr+d82dy+4P5TyFNfLAJppvhp8xB8ONn8QzUER6KxfOxmq1lM3I9wTjDjQnXLPFXmkP9diOD53yAxuH5kuDYWe0feAYrtMaVoLE6tVkdvH2NckoewEO13JN+JlovUJFzETKcJwsbolBH5bSOVMsiKSfMfeejLQePNKalnCtznH1gXeEvv6Ql850Mm4oHekTaDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkyjBnJUBYNSv7FAsVswnLSJc+BoT6CxKb/gqLJ7aC8=;
 b=CoQ/3qg0hfI3sR2Jbl/O/ut1YsuRIiqddvkv/f3MpTDb/fVaXTcsI+Guc80dIolBBDQUhOqHHFITLx99cHoX6H28QaoM1MO3g+PZ3uLITGmvMX3fWYpNnXxnBOGTqavI/CTQFVcELdNgVqaqsDZ42wa1HdPU53ddpQ1XsFYOaVwxpHKbjJIrLGVwaPC9YlQZH7BXLm5U6TvgS/WL07iliITBvG7scKK3IsX82wh/mgibLaITz89xqkhwoH9Dhjg8HLOtSFclBygN8HbL2LiuAXG/ClZEu+guRA6I8MrY8XQZC7j5BCZK1CPrp6xjKsIORqrk2zmmaYKMfiq9bcWOVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector2-fb-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QkyjBnJUBYNSv7FAsVswnLSJc+BoT6CxKb/gqLJ7aC8=;
 b=c2wbkQKs9aZzYPIkoOqLVBQM0kc7qTC5ue2ASOjhvvsjYkeKqapFo02522N0Py8+2E+NaTfX5r3OuzwW9/IxWsxmgDDerno17jPMUtNxvY2Yfgc5pLYwPv9mS1i/27IzwbuNAmfrffB41nhpO6xWZM7u//R7plKlQoaAbSMojdo=
Received: from BYAPR15MB3029.namprd15.prod.outlook.com (20.178.238.208) by
 BYAPR15MB3175.namprd15.prod.outlook.com (20.179.56.219) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Sat, 11 Jan 2020 00:23:28 +0000
Received: from BYAPR15MB3029.namprd15.prod.outlook.com
 ([fe80::3541:85d8:c4c8:760d]) by BYAPR15MB3029.namprd15.prod.outlook.com
 ([fe80::3541:85d8:c4c8:760d%3]) with mapi id 15.20.2623.013; Sat, 11 Jan 2020
 00:23:27 +0000
From: Song Liu <songliubraving@fb.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Thread-Topic: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Thread-Index: AQHVtYUpMC7X/V/PgEituL3lQIWiD6fhEFaAgAFGyQCAAbsNAIAAHqKAgAAO5YCAAHXsgIAACgUA
Date: Sat, 11 Jan 2020 00:23:27 +0000
Message-ID: <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
 <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
In-Reply-To: <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.40.2.2.4)
x-originating-ip: [2620:10d:c090:200::2:5f0e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a946b91-2a11-49b4-faf3-08d7962c7ad4
x-ms-traffictypediagnostic: BYAPR15MB3175:
x-microsoft-antispam-prvs: <BYAPR15MB3175EE3B651BA9889996D399B33B0@BYAPR15MB3175.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0279B3DD0D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(396003)(346002)(39860400002)(189003)(199004)(36756003)(6916009)(71200400001)(54906003)(4326008)(7406005)(7416002)(86362001)(81156014)(8936002)(81166006)(8676002)(6512007)(2616005)(186003)(2906002)(478600001)(316002)(6486002)(66446008)(76116006)(66946007)(91956017)(66476007)(33656002)(64756008)(5660300002)(6506007)(66556008)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR15MB3175;
 H:BYAPR15MB3029.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MTUVxx5x9vB/G3SynBMK0SNNuV1QfiqA6JKf6AY5VhneVtJBnPRTyeahFhbxGaDu3d9kTkKmF8aoe+B2Tf05CSrzIsmCbFehLvOJfXlvIK9cPGPDypkYf4BoTeu1CtIHmWpY2D2YC8Gt/n5KY6qwqRBUvSoBmBcouK6FttsfBbR2mmxF/14dV/olrDxSuH/j3Ez7xbbSuyR9yiY4zrePMUU16YvIaYOKwff9XiYYdkPlrD4zMpVG1DTynME/gvml4OdhhqkpilAVd92P6aKQkRHNeJersnLS2aRl7eLkOFaK4gtJ4Os6c/KKh3oFNBFu02kWFPXZY+rSsQnTMmz9u+v8GX6ra6UdYH91BFItutshWBdUQAFGEoaXTXbBxgDGcVNDEPBw/4SAMQznVFKjJLgRwqU8o2XKlxcDHLtfHUkfFmqekBj8EuKlZ2TRdzX1
x-ms-exchange-transport-forked: True
Content-ID: <6D7DCD8DAB103C4E8BCB814507E2858A@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a946b91-2a11-49b4-faf3-08d7962c7ad4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2020 00:23:27.6581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stO0bbplDC4o7Swa6Qd0uEiJW2yy8qz4/0zFmfcVbXpMD8xRDPAZweYcxdU14XjsfcR2ABkMHgCADa5Fej7Abg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3175
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-10_04:2020-01-10,
 2020-01-10 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 mlxscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 clxscore=1011 lowpriorityscore=0 mlxlogscore=999 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001110000
X-FB-Internal: deliver
X-Mailman-Approved-At: Mon, 13 Jan 2020 17:31:20 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/9] perf/core: open access for
 CAP_SYS_PERFMON privileged process
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Will Deacon <will.deacon@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 "oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> On Jan 10, 2020, at 3:47 PM, Masami Hiramatsu <mhiramat@kernel.org> wrote:
> 
> On Fri, 10 Jan 2020 13:45:31 -0300
> Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
> 
>> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
>>> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra <peterz@infradead.org> wrote:
>>>> Again, this only allows attaching to previously created kprobes, it does
>>>> not allow creating kprobes, right?
>> 
>>>> That is; I don't think CAP_SYS_PERFMON should be allowed to create
>>>> kprobes.
>> 
>>>> As might be clear; I don't actually know what the user-ABI is for
>>>> creating kprobes.
>> 
>>> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace interface to
>>> define new kprobe events, and those events are treated as completely same as
>>> tracepoint events. On the other hand, ebpf tries to define new probe event
>>> via perf_event interface. Above one is that interface. IOW, it creates new kprobe.
>> 
>> Masami, any plans to make 'perf probe' use the perf_event_open()
>> interface for creating kprobes/uprobes?
> 
> Would you mean perf probe to switch to perf_event_open()?
> No, perf probe is for setting up the ftrace probe events. I think we can add an
> option to use perf_event_open(). But current kprobe creation from perf_event_open()
> is separated from ftrace by design.

I guess we can extend event parser to understand kprobe directly. Instead of

	perf probe kernel_func
	perf stat/record -e probe:kernel_func ...

We can just do 

	perf stat/record -e kprobe:kernel_func ...

Thanks,
Song
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

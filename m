Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F19122016
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 01:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAABA6E923;
	Tue, 17 Dec 2019 00:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1189 seconds by postgrey-1.36 at gabe;
 Mon, 16 Dec 2019 16:33:23 UTC
Received: from mx0b-00190b01.pphosted.com (mx0b-00190b01.pphosted.com
 [IPv6:2620:100:9005:57f::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4FD76E817
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 16:33:23 +0000 (UTC)
Received: from pps.filterd (m0050096.ppops.net [127.0.0.1])
 by m0050096.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 xBGG9eCE008464; Mon, 16 Dec 2019 16:12:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=jan2016.eng;
 bh=TlJtzvSQJY2PpRhXQCFBBcMUtctaSu6LA6YjngOX+UQ=;
 b=icziZlzR56P+iT9L8NT3+VAG4RQyiBAd/YOq5pI4YpuFW0t1+HL5RIYnzx6GmtTAd6ay
 2W0g2L4CYbMW4aPkTepW2fw28kdpei+5r4SIwX1d6PzJD06IB9Qdy6fJUnT2xu4uB8+1
 A1tXCJxmb3TMWcLptpeJYYPl1/+0yBcNMB3ydQApyuTuu9lJuXBheAJMBDGdqWx/S5Nl
 dXlhuEEeoS8fLZmF3qLYptE1Mr0fzi3i8TE4jBePnmj4Dgmc8Vqk+Nnl0LvmJuj91bEy
 qYl0PEE6IyrHlIkNJLQ/S2SjRE5gFgRb0pP6PWjzLToJOULkz2toJBCkQd7Aw2vwnXCq hg== 
Received: from prod-mail-ppoint6 (prod-mail-ppoint6.akamai.com [184.51.33.61]
 (may be forged))
 by m0050096.ppops.net-00190b01. with ESMTP id 2wvs1d0e6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Dec 2019 16:12:52 +0000
Received: from pps.filterd (prod-mail-ppoint6.akamai.com [127.0.0.1])
 by prod-mail-ppoint6.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 xBGFp46N000594; Mon, 16 Dec 2019 11:12:52 -0500
Received: from email.msg.corp.akamai.com ([172.27.165.112])
 by prod-mail-ppoint6.akamai.com with ESMTP id 2wvuxydunk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 16 Dec 2019 11:12:51 -0500
Received: from ustx2ex-dag1mb6.msg.corp.akamai.com (172.27.165.124) by
 ustx2ex-dag1mb5.msg.corp.akamai.com (172.27.165.123) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 16 Dec 2019 10:12:50 -0600
Received: from ustx2ex-dag1mb6.msg.corp.akamai.com ([172.27.165.124]) by
 ustx2ex-dag1mb6.msg.corp.akamai.com ([172.27.165.124]) with mapi id
 15.00.1473.005; Mon, 16 Dec 2019 08:12:50 -0800
From: "Lubashev, Igor" <ilubashe@akamai.com>
To: Alexey Budankov <alexey.budankov@linux.intel.com>, Peter Zijlstra
 <peterz@infradead.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, "Ingo
 Molnar" <mingo@redhat.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "rodrigo.vivi@intel.com"
 <rodrigo.vivi@intel.com>, Alexei Starovoitov <ast@kernel.org>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, "benh@kernel.crashing.org"
 <benh@kernel.crashing.org>, Casey Schaufler <casey@schaufler-ca.com>,
 "serge@hallyn.com" <serge@hallyn.com>, James Morris <jmorris@namei.org>
Thread-Topic: [PATCH v2 2/7] perf/core: open access for CAP_SYS_PERFMON
 privileged process
Thread-Index: AQHVs+CfzGj9uMUtGUC4IRZHidt5Zae87MsA
Date: Mon, 16 Dec 2019 16:12:50 +0000
Message-ID: <9316a1ab21f6441eb2b421acb818a2a1@ustx2ex-dag1mb6.msg.corp.akamai.com>
References: <26101427-c0a3-db9f-39e9-9e5f4ddd009c@linux.intel.com>
 <fd6ffb43-ed43-14cd-b286-6ab4b199155b@linux.intel.com>
In-Reply-To: <fd6ffb43-ed43-14cd-b286-6ab4b199155b@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.19.113.150]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-12-16_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912160139
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-16_06:2019-12-16,2019-12-16 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 clxscore=1011
 adultscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912160141
X-Mailman-Approved-At: Tue, 17 Dec 2019 00:56:09 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/7] perf/core: open access for
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stephane
 Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas
 Gleixner <tglx@linutronix.de>, "bgregg@netflix.com" <bgregg@netflix.com>,
 Jiri Olsa <jolsa@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 2:15 AM, Alexey Budankov <alexey.budankov@linux.intel.com> wrote:
> 
> Open access to perf_events monitoring for CAP_SYS_PERFMON privileged
> processes.
> For backward compatibility reasons access to perf_events subsystem remains
> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage
> for secure perf_events monitoring is discouraged with respect to
> CAP_SYS_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  include/linux/perf_event.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h index
> 34c7c6910026..52313d2cc343 100644
> --- a/include/linux/perf_event.h
> +++ b/include/linux/perf_event.h
> @@ -1285,7 +1285,8 @@ static inline int perf_is_paranoid(void)
> 
>  static inline int perf_allow_kernel(struct perf_event_attr *attr)  {
> -	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > 1 &&
> +	   !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>  		return -EACCES;
> 
>  	return security_perf_event_open(attr, PERF_SECURITY_KERNEL); @@
> -1293,7 +1294,8 @@ static inline int perf_allow_kernel(struct
> perf_event_attr *attr)
> 
>  static inline int perf_allow_cpu(struct perf_event_attr *attr)  {
> -	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > 0 &&
> +	    !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>  		return -EACCES;
> 
>  	return security_perf_event_open(attr, PERF_SECURITY_CPU); @@ -
> 1301,7 +1303,8 @@ static inline int perf_allow_cpu(struct perf_event_attr
> *attr)
> 
>  static inline int perf_allow_tracepoint(struct perf_event_attr *attr)  {
> -	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
> +	if (sysctl_perf_event_paranoid > -1 &&
> +	    !(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)))
>  		return -EPERM;
> 
>  	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
> --
> 2.20.1

Thanks.  I like the idea of CAP_SYS_PERFMON that does not require CAP_SYS_ADMIN.  It makes granting users ability to run perf a bit safer.

I see a lot of "(capable(CAP_SYS_PERFMON) || capable(CAP_SYS_ADMIN)" constructs now.  Maybe wrapping it in an " inline bool perfmon_capable()" defined somewhere (like in /include/linux/capability.h)?

- Igor
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

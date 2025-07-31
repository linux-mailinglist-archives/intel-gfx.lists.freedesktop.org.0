Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C4AB16DEE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A349E10E257;
	Thu, 31 Jul 2025 08:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S/nv6W3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9F710E257;
 Thu, 31 Jul 2025 08:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753951886; x=1785487886;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ekrPzKxnmzmp0alRc5IFpCLwHU83c66Bjn+jP3C7Cpc=;
 b=S/nv6W3I+CXREGyQyeE6nutTn24Jd8rasKeo6xroxpLO0hIxm6HkVkS/
 /K1SF2jtffHxA38p9OGYtQN9S7hManpyEsqa7G/TRWheL6sklYrOmXvW2
 +ygrsdIub9/pK5oMjihiuXK6HlAp0f+Mfb+h7T2AVb9Ab1SBoZfNq19Vn
 WEV+NNyddhgwrndVZhKXNpIfrO7EXdsSqc9xVkTkh2rgwzxAH47vz/VMX
 DYiIDDVv/0gCWAG9qQYlAiNreCNZpgSpF54BJHJ6ZoMI6FgOubJvtCc4b
 YVOGSpkL9vvUL/pNiHZVKi5tytlid7txzcSs6aatD+K5GWSYSn9/5qaGp w==;
X-CSE-ConnectionGUID: ZBc//s5eQDqSve0yong5rg==
X-CSE-MsgGUID: FtHdAxsRQG634Kv/hv5ClQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="81718544"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="81718544"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:51:26 -0700
X-CSE-ConnectionGUID: 1zNmg9GUSt2i7O1GDwf6PA==
X-CSE-MsgGUID: JH/9Kw3yTq+Anel9nvwv1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="168480799"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:51:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre Deak
 <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Andrew
 Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v2 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
In-Reply-To: <aHacCnkuMCwNYin8@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <20250708131634.1524-1-ville.syrjala@linux.intel.com>
 <aHacCnkuMCwNYin8@intel.com>
Date: Thu, 31 Jul 2025 11:51:19 +0300
Message-ID: <6509cf62cc5c28e1626a6ee82c9f9caf62a7ef4b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 15 Jul 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jul 08, 2025 at 04:16:34PM +0300, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> While read_poll_timeout() & co. were originally introduced just
>> for simple I/O usage scenarios they have since been generalized to
>> be useful in more cases.
>>=20
>> However the interface is very cumbersome to use in the general case.
>> Attempt to make it more flexible by combining the 'op', 'var' and
>> 'args' parameter into just a single 'op' that the caller can fully
>> specify.
>>=20
>> For example i915 has one case where one might currently
>> have to write something like:
>> 	ret =3D read_poll_timeout(drm_dp_dpcd_read_byte, err,
>> 				err || (status & mask),
>> 				0 * 1000, 200 * 1000, false,
>> 				aux, DP_FEC_STATUS, &status);
>> which is practically illegible, but with the adjusted macro
>> we do:
>> 	ret =3D poll_timeout_us(err =3D drm_dp_dpcd_read_byte(aux, DP_FEC_STATU=
S, &status),
>> 			      err || (status & mask),
>> 			      0 * 1000, 200 * 1000, false);
>> which much easier to understand.
>>=20
>> One could even combine the 'op' and 'cond'  parameters into
>> one, but that might make the caller a bit too unwieldly with
>> assignments and checks being done on the same statement.
>>=20
>> This makes poll_timeout_us() closer to the i915 __wait_for()
>> macro, with the main difference being that __wait_for() uses
>> expenential backoff as opposed to the fixed polling interval
>> used by poll_timeout_us(). Eventually we might be able to switch
>> (at least most of) i915 to use poll_timeout_us().
>>=20
>> v2: Fix typos (Jani)
>>     Fix delay_us docs for poll_timeout_us_atomic() (Jani)
>>=20
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.c=
om>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: David Laight <david.laight.linux@gmail.com>
>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>> Cc: Matt Wagantall <mattw@codeaurora.org>
>> Cc: Dejin Zheng <zhengdejin5@gmail.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org
>> Cc: linux-kernel@vger.kernel.org
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  include/linux/iopoll.h | 110 +++++++++++++++++++++++++++++------------
>>  1 file changed, 78 insertions(+), 32 deletions(-)
>
> Any thoughs how we should get this stuff in? Jani will need it for
> some i915 stuff once he returns from vacation, so I could just push
> it into drm-intel-next...
>
> Are people OK with that, or is there a better tree that could pick=20
> this up?

Cc: Andrew

The iopoll.h file is not in MAINTAINERS, and previous changes to it
appear to have gone through various trees. I'd like to base follow-up
work in i915 on this, but who could ack merging the patches via
drm-intel-next? Though doesn't look like anyone's acked the earlier
changes either...


BR,
Jani.


>
>>=20
>> diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
>> index 91324c331a4b..440aca5b4b59 100644
>> --- a/include/linux/iopoll.h
>> +++ b/include/linux/iopoll.h
>> @@ -14,41 +14,38 @@
>>  #include <linux/io.h>
>>=20=20
>>  /**
>> - * read_poll_timeout - Periodically poll an address until a condition is
>> - *			met or a timeout occurs
>> - * @op: accessor function (takes @args as its arguments)
>> - * @val: Variable to read the value into
>> - * @cond: Break condition (usually involving @val)
>> - * @sleep_us: Maximum time to sleep between reads in us (0 tight-loops)=
. Please
>> - *            read usleep_range() function description for details and
>> + * poll_timeout_us - Periodically poll and perform an operation until
>> + *                   a condition is met or a timeout occurs
>> + *
>> + * @op: Operation
>> + * @cond: Break condition
>> + * @sleep_us: Maximum time to sleep between operations in us (0 tight-l=
oops).
>> + *            Please read usleep_range() function description for detai=
ls and
>>   *            limitations.
>>   * @timeout_us: Timeout in us, 0 means never timeout
>> - * @sleep_before_read: if it is true, sleep @sleep_us before read.
>> - * @args: arguments for @op poll
>> + * @sleep_before_op: if it is true, sleep @sleep_us before operation.
>>   *
>>   * When available, you'll probably want to use one of the specialized
>>   * macros defined below rather than this macro directly.
>>   *
>> - * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
>> - * case, the last read value at @args is stored in @val. Must not
>> + * Returns: 0 on success and -ETIMEDOUT upon a timeout. Must not
>>   * be called from atomic context if sleep_us or timeout_us are used.
>>   */
>> -#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
>> -				sleep_before_read, args...) \
>> +#define poll_timeout_us(op, cond, sleep_us, timeout_us, sleep_before_op=
) \
>>  ({ \
>>  	u64 __timeout_us =3D (timeout_us); \
>>  	unsigned long __sleep_us =3D (sleep_us); \
>>  	ktime_t __timeout =3D ktime_add_us(ktime_get(), __timeout_us); \
>>  	might_sleep_if((__sleep_us) !=3D 0); \
>> -	if (sleep_before_read && __sleep_us) \
>> +	if ((sleep_before_op) && __sleep_us) \
>>  		usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
>>  	for (;;) { \
>> -		(val) =3D op(args); \
>> +		op; \
>>  		if (cond) \
>>  			break; \
>>  		if (__timeout_us && \
>>  		    ktime_compare(ktime_get(), __timeout) > 0) { \
>> -			(val) =3D op(args); \
>> +			op; \
>>  			break; \
>>  		} \
>>  		if (__sleep_us) \
>> @@ -59,17 +56,16 @@
>>  })
>>=20=20
>>  /**
>> - * read_poll_timeout_atomic - Periodically poll an address until a cond=
ition is
>> - * 				met or a timeout occurs
>> - * @op: accessor function (takes @args as its arguments)
>> - * @val: Variable to read the value into
>> - * @cond: Break condition (usually involving @val)
>> - * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
>> - *            read udelay() function description for details and
>> + * poll_timeout_us_atomic - Periodically poll and perform an operation =
until
>> + *                          a condition is met or a timeout occurs
>> + *
>> + * @op: Operation
>> + * @cond: Break condition
>> + * @delay_us: Time to udelay between operations in us (0 tight-loops).
>> + *            Please read udelay() function description for details and
>>   *            limitations.
>>   * @timeout_us: Timeout in us, 0 means never timeout
>> - * @delay_before_read: if it is true, delay @delay_us before read.
>> - * @args: arguments for @op poll
>> + * @delay_before_op: if it is true, delay @delay_us before operation.
>>   *
>>   * This macro does not rely on timekeeping.  Hence it is safe to call e=
ven when
>>   * timekeeping is suspended, at the expense of an underestimation of wa=
ll clock
>> @@ -78,27 +74,26 @@
>>   * When available, you'll probably want to use one of the specialized
>>   * macros defined below rather than this macro directly.
>>   *
>> - * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
>> - * case, the last read value at @args is stored in @val.
>> + * Returns: 0 on success and -ETIMEDOUT upon a timeout.
>>   */
>> -#define read_poll_timeout_atomic(op, val, cond, delay_us, timeout_us, \
>> -					delay_before_read, args...) \
>> +#define poll_timeout_us_atomic(op, cond, delay_us, timeout_us, \
>> +			       delay_before_op) \
>>  ({ \
>>  	u64 __timeout_us =3D (timeout_us); \
>>  	s64 __left_ns =3D __timeout_us * NSEC_PER_USEC; \
>>  	unsigned long __delay_us =3D (delay_us); \
>>  	u64 __delay_ns =3D __delay_us * NSEC_PER_USEC; \
>> -	if (delay_before_read && __delay_us) { \
>> +	if ((delay_before_op) && __delay_us) { \
>>  		udelay(__delay_us); \
>>  		if (__timeout_us) \
>>  			__left_ns -=3D __delay_ns; \
>>  	} \
>>  	for (;;) { \
>> -		(val) =3D op(args); \
>> +		op; \
>>  		if (cond) \
>>  			break; \
>>  		if (__timeout_us && __left_ns < 0) { \
>> -			(val) =3D op(args); \
>> +			op; \
>>  			break; \
>>  		} \
>>  		if (__delay_us) { \
>> @@ -113,6 +108,57 @@
>>  	(cond) ? 0 : -ETIMEDOUT; \
>>  })
>>=20=20
>> +/**
>> + * read_poll_timeout - Periodically poll an address until a condition is
>> + *                     met or a timeout occurs
>> + * @op: accessor function (takes @args as its arguments)
>> + * @val: Variable to read the value into
>> + * @cond: Break condition (usually involving @val)
>> + * @sleep_us: Maximum time to sleep between reads in us (0 tight-loops)=
. Please
>> + *            read usleep_range() function description for details and
>> + *            limitations.
>> + * @timeout_us: Timeout in us, 0 means never timeout
>> + * @sleep_before_read: if it is true, sleep @sleep_us before read.
>> + * @args: arguments for @op poll
>> + *
>> + * When available, you'll probably want to use one of the specialized
>> + * macros defined below rather than this macro directly.
>> + *
>> + * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
>> + * case, the last read value at @args is stored in @val. Must not
>> + * be called from atomic context if sleep_us or timeout_us are used.
>> + */
>> +#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
>> +			  sleep_before_read, args...) \
>> +	poll_timeout_us((val) =3D op(args), cond, sleep_us, timeout_us, sleep_=
before_read)
>> +
>> +/**
>> + * read_poll_timeout_atomic - Periodically poll an address until a cond=
ition is
>> + *                            met or a timeout occurs
>> + * @op: accessor function (takes @args as its arguments)
>> + * @val: Variable to read the value into
>> + * @cond: Break condition (usually involving @val)
>> + * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
>> + *            read udelay() function description for details and
>> + *            limitations.
>> + * @timeout_us: Timeout in us, 0 means never timeout
>> + * @delay_before_read: if it is true, delay @delay_us before read.
>> + * @args: arguments for @op poll
>> + *
>> + * This macro does not rely on timekeeping.  Hence it is safe to call e=
ven when
>> + * timekeeping is suspended, at the expense of an underestimation of wa=
ll clock
>> + * time, which is rather minimal with a non-zero delay_us.
>> + *
>> + * When available, you'll probably want to use one of the specialized
>> + * macros defined below rather than this macro directly.
>> + *
>> + * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
>> + * case, the last read value at @args is stored in @val.
>> + */
>> +#define read_poll_timeout_atomic(op, val, cond, sleep_us, timeout_us, \
>> +				 sleep_before_read, args...) \
>> +	poll_timeout_us_atomic((val) =3D op(args), cond, sleep_us, timeout_us,=
 sleep_before_read)
>> +
>>  /**
>>   * readx_poll_timeout - Periodically poll an address until a condition =
is met or a timeout occurs
>>   * @op: accessor function (takes @addr as its only argument)
>> --=20
>> 2.49.0

--=20
Jani Nikula, Intel

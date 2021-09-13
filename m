Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9D408786
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 10:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE4C6E152;
	Mon, 13 Sep 2021 08:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EDB6E147;
 Mon, 13 Sep 2021 08:51:14 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id EA4DD1FFAB;
 Mon, 13 Sep 2021 08:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1631523072; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ksFxQBzI29xFmDbHIj8YRmkVKqt6DAsFXs/2K5yf7c4=;
 b=mWaZYv8s0o2ZUZUWpNbCiBgCD+yz9uluFPXIxp0Z2mPZuoJLxcu0peePL09mKaSTi4jk5y
 U5aV15eaVQYBTzOqItJCLO9hejLns0sWXroVoUvCDsAhWBLgWnf0H0vsCaupQIe928fowv
 01gLcdBgKAAgBrpIWpKcWtzU1mOkFpk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1631523072;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ksFxQBzI29xFmDbHIj8YRmkVKqt6DAsFXs/2K5yf7c4=;
 b=L4mz27K61cl+RnXEHUjQKHIVRNv/c3yKjZWxAJSyhmjAGjDWOGWxecV34k3zLv+xDmkqgK
 v/cq/hq6XxXwGuCA==
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id B07A5132AB;
 Mon, 13 Sep 2021 08:51:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap1.suse-dmz.suse.de with ESMTPSA id MMvSKQARP2F+FwAAGKfGzw
 (envelope-from <vbabka@suse.cz>); Mon, 13 Sep 2021 08:51:12 +0000
Message-ID: <464d76e2-37f0-87f3-a9d5-2101367a8ca3@suse.cz>
Date: Mon, 13 Sep 2021 10:51:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Imran Khan <imran.f.khan@oracle.com>, geert@linux-m68k.org,
 akpm@linux-foundation.org, ryabinin.a.a@gmail.com, glider@google.com,
 andreyknvl@gmail.com, dvyukov@google.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org
References: <20210910141001.1622130-1-imran.f.khan@oracle.com>
 <20210910141001.1622130-2-imran.f.khan@oracle.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <20210910141001.1622130-2-imran.f.khan@oracle.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] lib,
 stackdepot: Add helper to print stack entries into buffer.
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

On 9/10/21 16:10, Imran Khan wrote:
> To print stack entries into a buffer, users of stackdepot,
> first get a list of stack entries using stack_depot_fetch
> and then print this list into a buffer using stack_trace_snprint.
> Provide a helper in stackdepot for this purpose.
> Also change above mentioned users to use this helper.
> 
> Signed-off-by: Imran Khan <imran.f.khan@oracle.com>
> Suggested-by: Vlastimil Babka <vbabka@suse.cz>

Acked-by: Vlastimil Babka <vbabka@suse.cz>

A comment below:

> --- a/lib/stackdepot.c
> +++ b/lib/stackdepot.c
> @@ -214,6 +214,29 @@ static inline struct stack_record *find_stack(struct stack_record *bucket,
>  	return NULL;
>  }
>  
> +/**
> + * stack_depot_snprint - print stack entries from a depot into a buffer
> + *
> + * @handle:	Stack depot handle which was returned from
> + *		stack_depot_save().
> + * @buf:	Pointer to the print buffer
> + *
> + * @size:	Size of the print buffer
> + *
> + * @spaces:	Number of leading spaces to print
> + *
> + * Return:	Number of bytes printed.
> + */
> +int stack_depot_snprint(depot_stack_handle_t handle, char *buf, size_t size,
> +		       int spaces)
> +{
> +	unsigned long *entries;
> +	unsigned int nr_entries;
> +
> +	nr_entries = stack_depot_fetch(handle, &entries);
> +	return stack_trace_snprint(buf, size, entries, nr_entries, 0);

stack_trace_snprint() has a WARN_ON(!entries).
So maybe we should not call it if nr_entries is 0 (because e.g. handle was
0) as the warnings are not useful in that case.
